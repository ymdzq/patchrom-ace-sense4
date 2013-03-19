.class public Lcom/htc/util/mail/MailManager;
.super Ljava/lang/Object;
.source "MailManager.java"

# interfaces
.implements Lcom/htc/util/mail/AccountColumns;
.implements Lcom/htc/util/mail/IHandleMailManagerMessage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/util/mail/MailManager$1;,
        Lcom/htc/util/mail/MailManager$HandleChangeRequester;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field public static MAIL_OBJ_DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MailManager"

.field private static mTempAccount:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/mail/MailAccount;",
            ">;"
        }
    .end annotation
.end field

.field private static mTempAccount1:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/mail/MailAccount;",
            ">;"
        }
    .end annotation
.end field

.field private static me:Lcom/htc/util/mail/MailManager; = null

.field private static final sCombinedAccountId:J = 0x7fffffffffffffffL


# instance fields
.field private mAccount:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/mail/MailAccount;",
            ">;"
        }
    .end annotation
.end field

.field private mAccountLock:Ljava/lang/Object;

.field private mCombinedAccount:Lcom/htc/util/mail/MailAccount;

.field private mContext:Landroid/content/Context;

.field private mContextLock:Ljava/lang/Object;

.field private mHandleChangeRequester:Lcom/htc/util/mail/MailManager$HandleChangeRequester;

.field private mMailManagerListener:Lcom/htc/util/mail/IMailManagerListener;

.field private mMailMessageReceiver:Lcom/htc/util/mail/MailMessageReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/util/mail/MailManager;->MAIL_OBJ_DEBUG:Z

    .line 47
    sget-boolean v0, Lcom/htc/util/mail/MailManager;->MAIL_OBJ_DEBUG:Z

    sput-boolean v0, Lcom/htc/util/mail/MailManager;->DEBUG:Z

    .line 57
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/util/mail/MailManager;->me:Lcom/htc/util/mail/MailManager;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/util/mail/MailManager;->mTempAccount:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/util/mail/MailManager;->mTempAccount1:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 107
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object v2, p0, Lcom/htc/util/mail/MailManager;->mContext:Landroid/content/Context;

    .line 59
    iput-object v2, p0, Lcom/htc/util/mail/MailManager;->mMailMessageReceiver:Lcom/htc/util/mail/MailMessageReceiver;

    .line 60
    iput-object v2, p0, Lcom/htc/util/mail/MailManager;->mHandleChangeRequester:Lcom/htc/util/mail/MailManager$HandleChangeRequester;

    .line 63
    iput-object v2, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/util/mail/MailManager;->mAccountLock:Ljava/lang/Object;

    .line 65
    iput-object v2, p0, Lcom/htc/util/mail/MailManager;->mCombinedAccount:Lcom/htc/util/mail/MailAccount;

    .line 70
    iput-object v2, p0, Lcom/htc/util/mail/MailManager;->mMailManagerListener:Lcom/htc/util/mail/IMailManagerListener;

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/util/mail/MailManager;->mContextLock:Ljava/lang/Object;

    .line 110
    invoke-direct {p0, p1}, Lcom/htc/util/mail/MailManager;->setContext(Landroid/content/Context;)V

    .line 111
    sput-object p0, Lcom/htc/util/mail/MailManager;->me:Lcom/htc/util/mail/MailManager;

    .line 113
    new-instance v0, Lcom/htc/util/mail/MailMessageReceiver;

    invoke-direct {v0, p0}, Lcom/htc/util/mail/MailMessageReceiver;-><init>(Lcom/htc/util/mail/IHandleMailManagerMessage;)V

    iput-object v0, p0, Lcom/htc/util/mail/MailManager;->mMailMessageReceiver:Lcom/htc/util/mail/MailMessageReceiver;

    .line 114
    iget-object v0, p0, Lcom/htc/util/mail/MailManager;->mMailMessageReceiver:Lcom/htc/util/mail/MailMessageReceiver;

    invoke-direct {p0}, Lcom/htc/util/mail/MailManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/util/mail/MailMessageReceiver;->Active(Landroid/content/Context;)V

    .line 116
    new-instance v0, Lcom/htc/util/mail/MailManager$HandleChangeRequester;

    invoke-direct {v0, p0, v2}, Lcom/htc/util/mail/MailManager$HandleChangeRequester;-><init>(Lcom/htc/util/mail/MailManager;Lcom/htc/util/mail/MailManager$1;)V

    iput-object v0, p0, Lcom/htc/util/mail/MailManager;->mHandleChangeRequester:Lcom/htc/util/mail/MailManager$HandleChangeRequester;

    .line 118
    const-string v0, "MailManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MailManager contruct! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/mail/MailManager;->mMailMessageReceiver:Lcom/htc/util/mail/MailMessageReceiver;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-void
.end method

.method static synthetic access$100(Lcom/htc/util/mail/MailManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/htc/util/mail/MailManager;->doHandleMessageChange()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/util/mail/MailManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/htc/util/mail/MailManager;->doHandleFolderChange()V

    return-void
.end method

.method private buildOrGetAccounts(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 22
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/mail/MailAccount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    if-nez p1, :cond_0

    .line 210
    invoke-direct/range {p0 .. p0}, Lcom/htc/util/mail/MailManager;->releaseRealAccounts()V

    .line 211
    const/4 v4, 0x0

    .line 276
    :goto_0
    return-object v4

    .line 214
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/htc/util/mail/MailManager;->isSameWithAccounts(Landroid/database/Cursor;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 215
    if-eqz p1, :cond_1

    .line 216
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 217
    :cond_1
    const/16 p1, 0x0

    .line 218
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    goto :goto_0

    .line 221
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/htc/util/mail/MailManager;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 222
    .local v3, context:Landroid/content/Context;
    if-nez v3, :cond_3

    .line 223
    const-string v4, "MailManager"

    const-string v5, "getAccounts> MailManger is released"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const/4 v4, 0x0

    goto :goto_0

    .line 227
    :cond_3
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .local v20, mailAccounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/mail/MailAccount;>;"
    :try_start_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v21

    .line 231
    .local v21, size:I
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_4

    if-lez v21, :cond_4

    .line 232
    const/16 v18, 0x0

    .local v18, i:I
    :goto_1
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_4

    .line 233
    new-instance v2, Lcom/htc/util/mail/RealAccount;

    const-string v4, "_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    const-string v6, "_name"

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "_desc"

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "_emailaddress"

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "_protocol"

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const-string v10, "_defaultfolderId"

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const-string v11, "_trashfolderId"

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const-string v12, "_sentfolderId"

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const-string v13, "_draftfolderId"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const-string v14, "_outfolderId"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const-string v15, "_defaultaccount"

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const-string v16, "_colorIdx"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    invoke-direct/range {v2 .. v16}, Lcom/htc/util/mail/RealAccount;-><init>(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIII)V

    .line 249
    .local v2, account:Lcom/htc/util/mail/MailAccount;
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 250
    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 232
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_1

    .line 254
    .end local v2           #account:Lcom/htc/util/mail/MailAccount;
    .end local v18           #i:I
    :cond_4
    if-eqz p1, :cond_5

    .line 255
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 256
    :cond_5
    const/16 p1, 0x0

    .line 259
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/util/mail/MailManager;->mAccountLock:Ljava/lang/Object;

    monitor-enter v5

    .line 261
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    if-nez v4, :cond_7

    .line 262
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    .line 270
    :goto_2
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    .line 273
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_9

    .line 274
    const/4 v4, 0x0

    monitor-exit v5

    goto/16 :goto_0

    .line 277
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 254
    .end local v21           #size:I
    :catchall_1
    move-exception v4

    if-eqz p1, :cond_6

    .line 255
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 256
    :cond_6
    const/16 p1, 0x0

    throw v4

    .line 264
    .restart local v21       #size:I
    :cond_7
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/htc/util/mail/MailAccount;

    .line 265
    .local v17, acc:Lcom/htc/util/mail/MailAccount;
    invoke-virtual/range {v17 .. v17}, Lcom/htc/util/mail/MailAccount;->release()V

    goto :goto_3

    .line 268
    .end local v17           #acc:Lcom/htc/util/mail/MailAccount;
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_2

    .line 276
    .end local v19           #i$:Ljava/util/Iterator;
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private cloneAccountArrayList(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/mail/MailAccount;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 874
    .local p1, Account:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/mail/MailAccount;>;"
    iget-object v3, p0, Lcom/htc/util/mail/MailManager;->mAccountLock:Ljava/lang/Object;

    monitor-enter v3

    .line 875
    :try_start_0
    iget-object v2, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 876
    iget-object v2, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/util/mail/MailAccount;

    .line 877
    .local v0, acc:Lcom/htc/util/mail/MailAccount;
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 880
    .end local v0           #acc:Lcom/htc/util/mail/MailAccount;
    .end local v1           #i$:Ljava/util/Iterator;
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

    .line 881
    return-void
.end method

.method private doHandleFolderChange()V
    .locals 8

    .prologue
    .line 906
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 908
    .local v1, enter:J
    iget-object v4, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    if-nez v4, :cond_0

    .line 919
    :goto_0
    return-void

    .line 910
    :cond_0
    sget-object v4, Lcom/htc/util/mail/MailManager;->mTempAccount1:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/htc/util/mail/MailManager;->cloneAccountArrayList(Ljava/util/ArrayList;)V

    .line 912
    sget-object v4, Lcom/htc/util/mail/MailManager;->mTempAccount1:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/util/mail/MailAccount;

    .line 913
    .local v0, acc:Lcom/htc/util/mail/MailAccount;
    invoke-direct {p0, v0}, Lcom/htc/util/mail/MailManager;->handleFoldersChange(Lcom/htc/util/mail/MailAccount;)V

    goto :goto_1

    .line 916
    .end local v0           #acc:Lcom/htc/util/mail/MailAccount;
    :cond_1
    sget-object v4, Lcom/htc/util/mail/MailManager;->mTempAccount1:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 918
    const-string v4, "MailManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doHandleFolderChange() take ms:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v1

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private doHandleMessageChange()V
    .locals 8

    .prologue
    .line 886
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 888
    .local v1, enter:J
    iget-object v4, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 890
    sget-object v4, Lcom/htc/util/mail/MailManager;->mTempAccount:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/htc/util/mail/MailManager;->cloneAccountArrayList(Ljava/util/ArrayList;)V

    .line 892
    sget-object v4, Lcom/htc/util/mail/MailManager;->mTempAccount:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/util/mail/MailAccount;

    .line 893
    .local v0, acc:Lcom/htc/util/mail/MailAccount;
    invoke-direct {p0, v0}, Lcom/htc/util/mail/MailManager;->handleMessageChange(Lcom/htc/util/mail/MailAccount;)V

    goto :goto_0

    .line 896
    .end local v0           #acc:Lcom/htc/util/mail/MailAccount;
    :cond_0
    sget-object v4, Lcom/htc/util/mail/MailManager;->mTempAccount:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 899
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v4, p0, Lcom/htc/util/mail/MailManager;->mCombinedAccount:Lcom/htc/util/mail/MailAccount;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/util/mail/MailManager;->mCombinedAccount:Lcom/htc/util/mail/MailAccount;

    invoke-direct {p0, v4}, Lcom/htc/util/mail/MailManager;->handleMessageChange(Lcom/htc/util/mail/MailAccount;)V

    .line 901
    :cond_2
    const-string v4, "MailManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doHandleMessageChange() take ms:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v1

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    return-void
.end method

.method public static getCombinedAccountId()J
    .locals 2

    .prologue
    .line 723
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method private getContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 995
    iget-object v1, p0, Lcom/htc/util/mail/MailManager;->mContextLock:Ljava/lang/Object;

    monitor-enter v1

    .line 996
    :try_start_0
    iget-object v0, p0, Lcom/htc/util/mail/MailManager;->mContext:Landroid/content/Context;

    monitor-exit v1

    return-object v0

    .line 997
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/htc/util/mail/MailManager;
    .locals 3
    .parameter "context"

    .prologue
    .line 87
    const-class v1, Lcom/htc/util/mail/MailManager;

    monitor-enter v1

    .line 88
    :try_start_0
    sget-object v0, Lcom/htc/util/mail/MailManager;->me:Lcom/htc/util/mail/MailManager;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lcom/htc/util/mail/MailManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/htc/util/mail/MailManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/util/mail/MailManager;->me:Lcom/htc/util/mail/MailManager;

    .line 91
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    sget-object v0, Lcom/htc/util/mail/MailManager;->me:Lcom/htc/util/mail/MailManager;

    invoke-direct {v0}, Lcom/htc/util/mail/MailManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 94
    sget-object v0, Lcom/htc/util/mail/MailManager;->me:Lcom/htc/util/mail/MailManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/util/mail/MailManager;->setContext(Landroid/content/Context;)V

    .line 95
    sget-object v0, Lcom/htc/util/mail/MailManager;->me:Lcom/htc/util/mail/MailManager;

    iget-object v0, v0, Lcom/htc/util/mail/MailManager;->mMailMessageReceiver:Lcom/htc/util/mail/MailMessageReceiver;

    sget-object v1, Lcom/htc/util/mail/MailManager;->me:Lcom/htc/util/mail/MailManager;

    invoke-direct {v1}, Lcom/htc/util/mail/MailManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/util/mail/MailMessageReceiver;->Active(Landroid/content/Context;)V

    .line 100
    :cond_1
    sget-object v0, Lcom/htc/util/mail/MailManager;->me:Lcom/htc/util/mail/MailManager;

    return-object v0

    .line 91
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private handleFoldersChange(Lcom/htc/util/mail/MailAccount;)V
    .locals 5
    .parameter "acc"

    .prologue
    .line 941
    const/4 v2, 0x0

    .line 942
    .local v2, hasNewFolders:Z
    const/4 v1, 0x0

    .line 944
    .local v1, hasDelFolders:Z
    invoke-virtual {p1}, Lcom/htc/util/mail/MailAccount;->refreshFolderIdList()V

    .line 945
    invoke-virtual {p1}, Lcom/htc/util/mail/MailAccount;->getNewFolderList()Ljava/util/ArrayList;

    move-result-object v3

    .line 946
    .local v3, newFolders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v2, 0x1

    .line 948
    :cond_0
    invoke-virtual {p1}, Lcom/htc/util/mail/MailAccount;->getDelFolderList()Ljava/util/ArrayList;

    move-result-object v0

    .line 949
    .local v0, delFolders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    const/4 v1, 0x1

    .line 951
    :cond_1
    if-nez v2, :cond_2

    if-eqz v1, :cond_3

    .line 952
    :cond_2
    invoke-virtual {p1}, Lcom/htc/util/mail/MailAccount;->refreshFolders()V

    .line 955
    :cond_3
    if-eqz v2, :cond_4

    .line 956
    invoke-virtual {p1, v3}, Lcom/htc/util/mail/MailAccount;->handleNewFolders(Ljava/util/ArrayList;)V

    .line 959
    :cond_4
    if-eqz v1, :cond_5

    .line 960
    invoke-virtual {p1, v0}, Lcom/htc/util/mail/MailAccount;->handleDelFolders(Ljava/util/ArrayList;)V

    .line 962
    :cond_5
    return-void
.end method

.method private handleMessageChange(Lcom/htc/util/mail/MailAccount;)V
    .locals 9
    .parameter "acc"

    .prologue
    .line 780
    if-nez p1, :cond_1

    .line 802
    :cond_0
    :goto_0
    return-void

    .line 781
    :cond_1
    invoke-virtual {p1}, Lcom/htc/util/mail/MailAccount;->getAllFolders()Ljava/util/ArrayList;

    move-result-object v0

    .line 783
    .local v0, allFolders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/mail/Folder;>;"
    if-eqz v0, :cond_0

    .line 786
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 787
    .local v6, size:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v6, :cond_0

    .line 788
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/util/mail/Folder;

    .line 789
    .local v3, folder:Lcom/htc/util/mail/Folder;
    invoke-virtual {v3}, Lcom/htc/util/mail/Folder;->refreshMessages()V

    .line 790
    invoke-virtual {v3}, Lcom/htc/util/mail/Folder;->getNewMailList()Ljava/util/ArrayList;

    move-result-object v5

    .line 791
    .local v5, newMailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/mail/Folder$BasicMessageInfo;>;"
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 792
    invoke-virtual {p1, v5}, Lcom/htc/util/mail/MailAccount;->handleNewMessage(Ljava/util/ArrayList;)V

    .line 794
    :cond_2
    invoke-virtual {v3}, Lcom/htc/util/mail/Folder;->getDelMailList()Ljava/util/ArrayList;

    move-result-object v1

    .line 795
    .local v1, delMailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/mail/Folder$BasicMessageInfo;>;"
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 796
    invoke-virtual {p1, v1}, Lcom/htc/util/mail/MailAccount;->handleDelMessage(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 787
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 799
    .end local v1           #delMailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/mail/Folder$BasicMessageInfo;>;"
    .end local v3           #folder:Lcom/htc/util/mail/Folder;
    .end local v4           #i:I
    .end local v5           #newMailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/mail/Folder$BasicMessageInfo;>;"
    .end local v6           #size:I
    :catch_0
    move-exception v2

    .line 800
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "MailManager"

    const-string v8, "handleMessageChange exception"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private isAccountsExist()Z
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 314
    :cond_0
    invoke-virtual {p0}, Lcom/htc/util/mail/MailManager;->getAccounts()Ljava/util/ArrayList;

    .line 317
    :cond_1
    iget-object v0, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSameWithAccounts(Landroid/database/Cursor;)Z
    .locals 9
    .parameter "cursor"

    .prologue
    const/4 v5, 0x0

    .line 176
    if-nez p1, :cond_1

    .line 205
    :cond_0
    :goto_0
    return v5

    .line 178
    :cond_1
    iget-object v6, p0, Lcom/htc/util/mail/MailManager;->mAccountLock:Ljava/lang/Object;

    monitor-enter v6

    .line 179
    :try_start_0
    iget-object v7, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    if-nez v7, :cond_2

    monitor-exit v6

    goto :goto_0

    .line 182
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 180
    :cond_2
    :try_start_1
    iget-object v7, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-eq v7, v8, :cond_3

    monitor-exit v6

    goto :goto_0

    .line 181
    :cond_3
    iget-object v7, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_4

    monitor-exit v6

    goto :goto_0

    .line 182
    :cond_4
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 186
    :cond_5
    const-string v6, "_id"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v1, v6

    .line 188
    .local v1, accountId:J
    const/4 v3, 0x0

    .line 189
    .local v3, found:Z
    iget-object v6, p0, Lcom/htc/util/mail/MailManager;->mAccountLock:Ljava/lang/Object;

    monitor-enter v6

    .line 190
    :try_start_2
    iget-object v7, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    if-eqz v7, :cond_7

    .line 191
    iget-object v7, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/util/mail/MailAccount;

    .line 193
    .local v0, acc:Lcom/htc/util/mail/MailAccount;
    invoke-virtual {v0}, Lcom/htc/util/mail/MailAccount;->getId()J

    move-result-wide v7

    cmp-long v7, v7, v1

    if-nez v7, :cond_6

    .line 194
    const/4 v3, 0x1

    .line 199
    .end local v0           #acc:Lcom/htc/util/mail/MailAccount;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_7
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 200
    if-eqz v3, :cond_0

    .line 201
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_5

    .line 205
    const/4 v5, 0x1

    goto :goto_0

    .line 199
    :catchall_1
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5
.end method

.method private releaseCombinedAccount()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/htc/util/mail/MailManager;->mCombinedAccount:Lcom/htc/util/mail/MailAccount;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/htc/util/mail/MailManager;->mCombinedAccount:Lcom/htc/util/mail/MailAccount;

    invoke-virtual {v0}, Lcom/htc/util/mail/MailAccount;->release()V

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/util/mail/MailManager;->mCombinedAccount:Lcom/htc/util/mail/MailAccount;

    .line 148
    :cond_0
    return-void
.end method

.method private releaseRealAccounts()V
    .locals 4

    .prologue
    .line 152
    iget-object v3, p0, Lcom/htc/util/mail/MailManager;->mAccountLock:Ljava/lang/Object;

    monitor-enter v3

    .line 153
    :try_start_0
    iget-object v2, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 154
    iget-object v2, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/util/mail/MailAccount;

    .line 155
    .local v0, acc:Lcom/htc/util/mail/MailAccount;
    invoke-virtual {v0}, Lcom/htc/util/mail/MailAccount;->release()V

    goto :goto_0

    .line 161
    .end local v0           #acc:Lcom/htc/util/mail/MailAccount;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 158
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 159
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    .line 161
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    return-void
.end method

.method private setContext(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 989
    iget-object v1, p0, Lcom/htc/util/mail/MailManager;->mContextLock:Ljava/lang/Object;

    monitor-enter v1

    .line 990
    :try_start_0
    iput-object p1, p0, Lcom/htc/util/mail/MailManager;->mContext:Landroid/content/Context;

    .line 991
    monitor-exit v1

    .line 992
    return-void

    .line 991
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addAccount(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 1
    .parameter "accountDescription"
    .parameter "incomingProtocol"
    .parameter "incomingEmailAddress"
    .parameter "incomingUserName"
    .parameter "incomingPassword"
    .parameter "incomingMailServer"
    .parameter "incomingSecurityType"
    .parameter "incomingServerPort"
    .parameter "outgoingIsLoginRequired"
    .parameter "outgoingUserName"
    .parameter "outgoingPassword"
    .parameter "outgoingServer"
    .parameter "outgoingSecurityType"
    .parameter "outgoingServerPort"

    .prologue
    .line 425
    const/4 v0, 0x0

    return v0
.end method

.method public addExchangeAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZ)Z
    .locals 1
    .parameter "emailAddress"
    .parameter "userName"
    .parameter "password"
    .parameter "serverAddress"
    .parameter "isRequiredSSL"
    .parameter "isSyncMail"
    .parameter "isSyncContacts"
    .parameter "isSyncCalendar"

    .prologue
    .line 459
    const/4 v0, 0x0

    return v0
.end method

.method public deleteAccount(J)Z
    .locals 9
    .parameter "accountId"

    .prologue
    const/4 v8, 0x0

    .line 362
    invoke-direct {p0}, Lcom/htc/util/mail/MailManager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 363
    .local v1, context:Landroid/content/Context;
    if-nez v1, :cond_0

    .line 364
    const-string v4, "MailManager"

    const-string v5, "deleteAccount> MailManger is released"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const/4 v0, 0x0

    .line 381
    :goto_0
    return v0

    .line 369
    :cond_0
    const/4 v0, 0x0

    .line 371
    .local v0, bSuccess:Z
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/htc/util/mail/MailUtils;->sAccountsURI:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 372
    .local v2, count:I
    if-lez v2, :cond_1

    .line 373
    const/4 v0, 0x1

    .line 379
    :cond_1
    :goto_1
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/htc/util/mail/MailUtils;->sAccountsURI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 374
    .end local v2           #count:I
    :catch_0
    move-exception v3

    .line 375
    .local v3, ex:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 376
    const/4 v2, -0x1

    .restart local v2       #count:I
    goto :goto_1
.end method

.method public getAccount(J)Lcom/htc/util/mail/MailAccount;
    .locals 7
    .parameter "accountId"

    .prologue
    const/4 v3, 0x0

    .line 536
    invoke-direct {p0}, Lcom/htc/util/mail/MailManager;->isAccountsExist()Z

    move-result v4

    if-nez v4, :cond_0

    .line 553
    :goto_0
    return-object v3

    .line 537
    :cond_0
    invoke-static {}, Lcom/htc/util/mail/MailManager;->getCombinedAccountId()J

    move-result-wide v4

    cmp-long v4, p1, v4

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/htc/util/mail/MailManager;->getCombinedAccount()Lcom/htc/util/mail/MailAccount;

    move-result-object v3

    goto :goto_0

    .line 539
    :cond_1
    const/4 v2, 0x0

    .line 540
    .local v2, index:I
    iget-object v4, p0, Lcom/htc/util/mail/MailManager;->mAccountLock:Ljava/lang/Object;

    monitor-enter v4

    .line 541
    :try_start_0
    iget-object v5, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    if-eqz v5, :cond_5

    .line 542
    iget-object v5, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/util/mail/MailAccount;

    .line 543
    .local v0, account:Lcom/htc/util/mail/MailAccount;
    invoke-virtual {v0}, Lcom/htc/util/mail/MailAccount;->getId()J

    move-result-wide v5

    cmp-long v5, p1, v5

    if-nez v5, :cond_3

    .line 548
    .end local v0           #account:Lcom/htc/util/mail/MailAccount;
    :cond_2
    iget-object v5, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v2, v5, :cond_4

    monitor-exit v4

    goto :goto_0

    .line 552
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 546
    .restart local v0       #account:Lcom/htc/util/mail/MailAccount;
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 550
    .end local v0           #account:Lcom/htc/util/mail/MailAccount;
    :cond_4
    :try_start_1
    iget-object v3, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/util/mail/MailAccount;

    monitor-exit v4

    goto :goto_0

    .line 552
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_5
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getAccountList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/mail/MailAccount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 732
    invoke-direct {p0}, Lcom/htc/util/mail/MailManager;->isAccountsExist()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 734
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getAccounts()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/mail/MailAccount;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 297
    invoke-direct {p0}, Lcom/htc/util/mail/MailManager;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 298
    .local v6, context:Landroid/content/Context;
    if-nez v6, :cond_0

    .line 299
    const-string v1, "MailManager"

    const-string v2, "getAccounts> MailManger is released"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :goto_0
    return-object v4

    .line 303
    :cond_0
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 305
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/htc/util/mail/MailUtils;->sAccountsURI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/util/mail/MailUtils;->sACCOUNT_PROJECTION:[Ljava/lang/String;

    const-string v3, "_del = -1"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 307
    .local v7, cursor:Landroid/database/Cursor;
    invoke-direct {p0, v7}, Lcom/htc/util/mail/MailManager;->buildOrGetAccounts(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v4

    goto :goto_0
.end method

.method public getAccountsUpdateTime(J)J
    .locals 3
    .parameter "accountId"

    .prologue
    .line 622
    invoke-virtual {p0, p1, p2}, Lcom/htc/util/mail/MailManager;->getAccount(J)Lcom/htc/util/mail/MailAccount;

    move-result-object v0

    .line 624
    .local v0, account:Lcom/htc/util/mail/MailAccount;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/util/mail/MailAccount;->getAccountsUpdateTime()J

    move-result-wide v1

    .line 626
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getAllUnreadMail()I
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 594
    invoke-direct {p0}, Lcom/htc/util/mail/MailManager;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 595
    .local v7, context:Landroid/content/Context;
    if-nez v7, :cond_0

    .line 596
    const-string v0, "MailManager"

    const-string v1, "getAllUnreadMail> MailManger is released"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v9

    .line 608
    :goto_0
    return v8

    .line 600
    :cond_0
    const/4 v8, 0x0

    .line 601
    .local v8, unread:I
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/util/mail/MailUtils;->allUnreadMailURI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 602
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_1

    move v8, v9

    .line 603
    goto :goto_0

    .line 605
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 606
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 607
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public getCombinedAccount()Lcom/htc/util/mail/MailAccount;
    .locals 10

    .prologue
    const v3, 0x204022b

    .line 330
    invoke-direct {p0}, Lcom/htc/util/mail/MailManager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 331
    .local v1, context:Landroid/content/Context;
    if-nez v1, :cond_0

    .line 332
    const-string v0, "MailManager"

    const-string v2, "getCombinedAccount> MailManger is released"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const/4 v0, 0x0

    .line 347
    :goto_0
    return-object v0

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/htc/util/mail/MailManager;->mCombinedAccount:Lcom/htc/util/mail/MailAccount;

    if-nez v0, :cond_1

    .line 337
    new-instance v0, Lcom/htc/util/mail/CombinedAccount;

    invoke-static {v1, v3}, Lcom/htc/util/mail/MailUtils;->getHtcString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v3}, Lcom/htc/util/mail/MailUtils;->getHtcString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7fffffff

    const v5, 0x7ffffffe

    const v6, 0x7ffffffd

    const v7, 0x7ffffffc

    const v8, 0x7ffffffb

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/htc/util/mail/CombinedAccount;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIIIII)V

    iput-object v0, p0, Lcom/htc/util/mail/MailManager;->mCombinedAccount:Lcom/htc/util/mail/MailAccount;

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/htc/util/mail/MailManager;->mCombinedAccount:Lcom/htc/util/mail/MailAccount;

    goto :goto_0
.end method

.method public getDefaultAccount()Lcom/htc/util/mail/MailAccount;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 505
    invoke-direct {p0}, Lcom/htc/util/mail/MailManager;->isAccountsExist()Z

    move-result v4

    if-nez v4, :cond_0

    .line 519
    :goto_0
    return-object v3

    .line 507
    :cond_0
    const/4 v2, 0x0

    .line 508
    .local v2, index:I
    iget-object v4, p0, Lcom/htc/util/mail/MailManager;->mAccountLock:Ljava/lang/Object;

    monitor-enter v4

    .line 509
    :try_start_0
    iget-object v5, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    if-eqz v5, :cond_3

    .line 510
    iget-object v3, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/util/mail/MailAccount;

    .line 511
    .local v0, account:Lcom/htc/util/mail/MailAccount;
    invoke-virtual {v0}, Lcom/htc/util/mail/MailAccount;->isDefaultAccount()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 516
    .end local v0           #account:Lcom/htc/util/mail/MailAccount;
    :cond_1
    iget-object v3, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/util/mail/MailAccount;

    monitor-exit v4

    goto :goto_0

    .line 518
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 514
    .restart local v0       #account:Lcom/htc/util/mail/MailAccount;
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 518
    .end local v0           #account:Lcom/htc/util/mail/MailAccount;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_3
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getDefaultAccountId()J
    .locals 7

    .prologue
    const-wide/16 v3, -0x1

    .line 476
    invoke-direct {p0}, Lcom/htc/util/mail/MailManager;->isAccountsExist()Z

    move-result v5

    if-nez v5, :cond_0

    .line 490
    :goto_0
    return-wide v3

    .line 478
    :cond_0
    const/4 v2, 0x0

    .line 479
    .local v2, index:I
    iget-object v5, p0, Lcom/htc/util/mail/MailManager;->mAccountLock:Ljava/lang/Object;

    monitor-enter v5

    .line 480
    :try_start_0
    iget-object v6, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    if-eqz v6, :cond_3

    .line 481
    iget-object v3, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/util/mail/MailAccount;

    .line 482
    .local v0, account:Lcom/htc/util/mail/MailAccount;
    invoke-virtual {v0}, Lcom/htc/util/mail/MailAccount;->isDefaultAccount()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 487
    .end local v0           #account:Lcom/htc/util/mail/MailAccount;
    :cond_1
    iget-object v3, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/util/mail/MailAccount;

    invoke-virtual {v3}, Lcom/htc/util/mail/MailAccount;->getId()J

    move-result-wide v3

    monitor-exit v5

    goto :goto_0

    .line 489
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 485
    .restart local v0       #account:Lcom/htc/util/mail/MailAccount;
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 489
    .end local v0           #account:Lcom/htc/util/mail/MailAccount;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_3
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getDefaultMailBoxId(J)J
    .locals 3
    .parameter "accountId"

    .prologue
    .line 659
    invoke-virtual {p0, p1, p2}, Lcom/htc/util/mail/MailManager;->getAccount(J)Lcom/htc/util/mail/MailAccount;

    move-result-object v0

    .line 661
    .local v0, account:Lcom/htc/util/mail/MailAccount;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/util/mail/MailAccount;->getDefaultFolderId()I

    move-result v1

    int-to-long v1, v1

    .line 663
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getMessage(J)Z
    .locals 1
    .parameter "messageId"

    .prologue
    .line 765
    const/4 v0, 0x0

    return v0
.end method

.method public getUnreadMail(J)I
    .locals 2
    .parameter "accountId"

    .prologue
    .line 640
    invoke-virtual {p0, p1, p2}, Lcom/htc/util/mail/MailManager;->getAccount(J)Lcom/htc/util/mail/MailAccount;

    move-result-object v0

    .line 642
    .local v0, account:Lcom/htc/util/mail/MailAccount;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/util/mail/MailAccount;->getUnreadMail()I

    move-result v1

    .line 644
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAutoSync()Z
    .locals 1

    .prologue
    .line 676
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    return v0
.end method

.method public isExchangeAccountExisted()Z
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 689
    invoke-direct {p0}, Lcom/htc/util/mail/MailManager;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 690
    .local v7, context:Landroid/content/Context;
    if-nez v7, :cond_0

    .line 691
    const-string v0, "MailManager"

    const-string v1, "isExchangeAccountExisted> MailManger is released"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    .line 709
    :goto_0
    return v0

    .line 695
    :cond_0
    const-string v3, "_provider = \'Exchange\' and _del!=1"

    .line 697
    .local v3, where:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/util/mail/MailUtils;->sAccountsURI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "count(_id) as _total"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 698
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 699
    const-string v0, "_total"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_1

    .line 700
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v10

    .line 701
    goto :goto_0

    .line 704
    :cond_1
    if-eqz v6, :cond_2

    .line 705
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move v0, v9

    .line 707
    goto :goto_0

    .line 708
    .end local v6           #c:Landroid/database/Cursor;
    :catch_0
    move-exception v8

    .local v8, ex:Ljava/lang/Exception;
    move v0, v9

    .line 709
    goto :goto_0
.end method

.method public onHandleAccountRefresh()V
    .locals 1

    .prologue
    .line 773
    invoke-virtual {p0}, Lcom/htc/util/mail/MailManager;->releaseAccounts()V

    .line 775
    iget-object v0, p0, Lcom/htc/util/mail/MailManager;->mMailManagerListener:Lcom/htc/util/mail/IMailManagerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/util/mail/MailManager;->mMailManagerListener:Lcom/htc/util/mail/IMailManagerListener;

    invoke-interface {v0}, Lcom/htc/util/mail/IMailManagerListener;->onAccountRefresh()V

    .line 777
    :cond_0
    return-void
.end method

.method public onHandleAccountSyncFinish(J)V
    .locals 1
    .parameter "accountId"

    .prologue
    .line 982
    invoke-virtual {p0, p1, p2}, Lcom/htc/util/mail/MailManager;->getAccount(J)Lcom/htc/util/mail/MailAccount;

    move-result-object v0

    .line 983
    .local v0, acc:Lcom/htc/util/mail/MailAccount;
    if-nez v0, :cond_0

    .line 986
    :goto_0
    return-void

    .line 985
    :cond_0
    invoke-virtual {v0}, Lcom/htc/util/mail/MailAccount;->handleSyncFinished()V

    goto :goto_0
.end method

.method public onHandleAccountSyncStart(J)V
    .locals 1
    .parameter "accountId"

    .prologue
    .line 969
    invoke-virtual {p0, p1, p2}, Lcom/htc/util/mail/MailManager;->getAccount(J)Lcom/htc/util/mail/MailAccount;

    move-result-object v0

    .line 970
    .local v0, acc:Lcom/htc/util/mail/MailAccount;
    if-nez v0, :cond_0

    .line 974
    :goto_0
    return-void

    .line 972
    :cond_0
    invoke-virtual {v0}, Lcom/htc/util/mail/MailAccount;->handleSyncStart()V

    goto :goto_0
.end method

.method public onHandleFoldersChange()V
    .locals 1

    .prologue
    .line 935
    iget-object v0, p0, Lcom/htc/util/mail/MailManager;->mHandleChangeRequester:Lcom/htc/util/mail/MailManager$HandleChangeRequester;

    invoke-virtual {v0}, Lcom/htc/util/mail/MailManager$HandleChangeRequester;->requestHandleFoldersChange()V

    .line 937
    return-void
.end method

.method public onHandleMessageChange()V
    .locals 1

    .prologue
    .line 926
    iget-object v0, p0, Lcom/htc/util/mail/MailManager;->mHandleChangeRequester:Lcom/htc/util/mail/MailManager$HandleChangeRequester;

    invoke-virtual {v0}, Lcom/htc/util/mail/MailManager$HandleChangeRequester;->requestHandleMessageChange()V

    .line 927
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 135
    const-string v0, "MailManager"

    const-string v1, "MailManager release()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/htc/util/mail/MailManager;->mMailMessageReceiver:Lcom/htc/util/mail/MailMessageReceiver;

    invoke-virtual {v0}, Lcom/htc/util/mail/MailMessageReceiver;->Deactive()V

    .line 138
    invoke-virtual {p0}, Lcom/htc/util/mail/MailManager;->releaseAccounts()V

    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/util/mail/MailManager;->setContext(Landroid/content/Context;)V

    .line 141
    return-void
.end method

.method public releaseAccounts()V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/htc/util/mail/MailManager;->releaseRealAccounts()V

    .line 171
    invoke-direct {p0}, Lcom/htc/util/mail/MailManager;->releaseCombinedAccount()V

    .line 172
    return-void
.end method

.method public setDefaultAccount(J)Z
    .locals 7
    .parameter "accountId"

    .prologue
    .line 568
    const/4 v1, 0x0

    .line 569
    .local v1, bFind:Z
    iget-object v4, p0, Lcom/htc/util/mail/MailManager;->mAccountLock:Ljava/lang/Object;

    monitor-enter v4

    .line 570
    :try_start_0
    iget-object v3, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 571
    iget-object v3, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/util/mail/MailAccount;

    .line 572
    .local v0, account:Lcom/htc/util/mail/MailAccount;
    invoke-virtual {v0}, Lcom/htc/util/mail/MailAccount;->getId()J

    move-result-wide v5

    cmp-long v3, p1, v5

    if-nez v3, :cond_0

    .line 573
    invoke-virtual {v0}, Lcom/htc/util/mail/MailAccount;->setDefaultAccount()V

    .line 574
    const/4 v1, 0x1

    goto :goto_0

    .line 576
    :cond_0
    invoke-virtual {v0}, Lcom/htc/util/mail/MailAccount;->resetDefaultAccount()V

    goto :goto_0

    .line 580
    .end local v0           #account:Lcom/htc/util/mail/MailAccount;
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 581
    return v1
.end method

.method public setMailManagerListener(Lcom/htc/util/mail/IMailManagerListener;)V
    .locals 0
    .parameter "mailManagerListener"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/htc/util/mail/MailManager;->mMailManagerListener:Lcom/htc/util/mail/IMailManagerListener;

    .line 123
    return-void
.end method

.method public setMailMessageListener(Lcom/htc/util/mail/IMailMessageListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 751
    return-void
.end method
