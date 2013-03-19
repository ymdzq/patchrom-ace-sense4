.class public Lcom/htc/util/mail/CombinedAccount;
.super Lcom/htc/util/mail/MailAccount;
.source "CombinedAccount.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "CombinedAccount"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/htc/util/mail/MailManager;->MAIL_OBJ_DEBUG:Z

    sput-boolean v0, Lcom/htc/util/mail/CombinedAccount;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIIIII)V
    .locals 15
    .parameter "context"
    .parameter "name"
    .parameter "desc"
    .parameter "defaultFolderId"
    .parameter "trashFolderId"
    .parameter "sentFolderId"
    .parameter "draftFolderId"
    .parameter "outFolderId"
    .parameter "defaultaccount"

    .prologue
    .line 57
    invoke-static {}, Lcom/htc/util/mail/MailManager;->getCombinedAccountId()J

    move-result-wide v2

    const-string v6, ""

    const/4 v7, 0x5

    const/4 v14, -0x1

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    invoke-direct/range {v0 .. v14}, Lcom/htc/util/mail/MailAccount;-><init>(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIII)V

    .line 70
    return-void
.end method


# virtual methods
.method public getDelFolderList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 289
    iget-object v0, p0, Lcom/htc/util/mail/MailAccount;->mDelFolderIdList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/mail/MailAccount;->mDelFolderIdList:Ljava/util/ArrayList;

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/htc/util/mail/MailAccount;->mDelFolderIdList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 292
    iget-object v0, p0, Lcom/htc/util/mail/MailAccount;->mDelFolderIdList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFolderPathNameList()[Ljava/lang/String;
    .locals 18

    .prologue
    .line 217
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/mail/MailAccount;->folderPathNameListLock:Ljava/lang/Object;

    monitor-enter v3

    .line 218
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/util/mail/MailAccount;->folderPathNameList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/util/mail/MailAccount;->folderPathNameList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 219
    invoke-virtual/range {p0 .. p0}, Lcom/htc/util/mail/CombinedAccount;->buildFolderPathNameArray()[Ljava/lang/String;

    move-result-object v2

    monitor-exit v3

    .line 265
    :goto_0
    return-object v2

    .line 221
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    const/4 v2, 0x5

    new-array v0, v2, [I

    move-object/from16 v16, v0

    fill-array-data v16, :array_0

    .line 229
    .local v16, resNameId:[I
    const/4 v2, 0x5

    new-array v0, v2, [I

    move-object/from16 v17, v0

    fill-array-data v17, :array_1

    .line 235
    .local v17, resShortNameId:[I
    const/4 v2, 0x5

    new-array v15, v2, [I

    fill-array-data v15, :array_2

    .line 241
    .local v15, mailBoxId:[I
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .local v12, folders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/mail/Folder;>;"
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    move-object/from16 v0, v16

    array-length v2, v0

    if-ge v13, v2, :cond_1

    .line 243
    new-instance v1, Lcom/htc/util/mail/Folder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/util/mail/MailAccount;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/mail/MailAccount;->mContext:Landroid/content/Context;

    aget v5, v16, v13

    invoke-static {v3, v5}, Lcom/htc/util/mail/MailUtils;->getHtcString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/mail/MailAccount;->mContext:Landroid/content/Context;

    aget v6, v17, v13

    invoke-static {v3, v6}, Lcom/htc/util/mail/MailUtils;->getHtcString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    aget v3, v15, v13

    int-to-long v7, v3

    aget v9, v15, v13

    aget v10, v15, v13

    const/4 v11, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v1 .. v11}, Lcom/htc/util/mail/Folder;-><init>(Landroid/content/Context;Lcom/htc/util/mail/MailAccount;Lcom/htc/util/mail/MailAccount;Ljava/lang/String;Ljava/lang/String;JIII)V

    .line 255
    .local v1, f:Lcom/htc/util/mail/Folder;
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 221
    .end local v1           #f:Lcom/htc/util/mail/Folder;
    .end local v12           #folders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/mail/Folder;>;"
    .end local v13           #i:I
    .end local v15           #mailBoxId:[I
    .end local v16           #resNameId:[I
    .end local v17           #resShortNameId:[I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 258
    .restart local v12       #folders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/mail/Folder;>;"
    .restart local v13       #i:I
    .restart local v15       #mailBoxId:[I
    .restart local v16       #resNameId:[I
    .restart local v17       #resShortNameId:[I
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/mail/MailAccount;->folderPathNameListLock:Ljava/lang/Object;

    monitor-enter v3

    .line 259
    :try_start_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/util/mail/MailAccount;->folderPathNameList:Ljava/util/ArrayList;

    .line 260
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/util/mail/Folder;

    .line 261
    .restart local v1       #f:Lcom/htc/util/mail/Folder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/util/mail/MailAccount;->folderPathNameList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 263
    .end local v1           #f:Lcom/htc/util/mail/Folder;
    .end local v14           #i$:Ljava/util/Iterator;
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .restart local v14       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 265
    invoke-virtual/range {p0 .. p0}, Lcom/htc/util/mail/CombinedAccount;->buildFolderPathNameArray()[Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 223
    :array_0
    .array-data 0x4
        0x21t 0x2t 0x4t 0x2t
        0x22t 0x2t 0x4t 0x2t
        0x23t 0x2t 0x4t 0x2t
        0x24t 0x2t 0x4t 0x2t
        0x25t 0x2t 0x4t 0x2t
    .end array-data

    .line 229
    :array_1
    .array-data 0x4
        0x26t 0x2t 0x4t 0x2t
        0x27t 0x2t 0x4t 0x2t
        0x28t 0x2t 0x4t 0x2t
        0x29t 0x2t 0x4t 0x2t
        0x2at 0x2t 0x4t 0x2t
    .end array-data

    .line 235
    :array_2
    .array-data 0x4
        0xfft 0xfft 0xfft 0x7ft
        0xfet 0xfft 0xfft 0x7ft
        0xfdt 0xfft 0xfft 0x7ft
        0xfct 0xfft 0xfft 0x7ft
        0xfbt 0xfft 0xfft 0x7ft
    .end array-data
.end method

.method public getFoldersWhere()Ljava/lang/String;
    .locals 2

    .prologue
    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_defaultfolder in ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7ffffffc

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7ffffffb

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7ffffffd

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7ffffffe

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessagesWhere(J)Ljava/lang/String;
    .locals 7
    .parameter "mailKindId"

    .prologue
    .line 159
    long-to-int v2, p1

    .line 161
    .local v2, kind:I
    iget-object v5, p0, Lcom/htc/util/mail/MailAccount;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/htc/util/mail/MailManager;->getInstance(Landroid/content/Context;)Lcom/htc/util/mail/MailManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/util/mail/MailManager;->getAccountList()Ljava/util/ArrayList;

    move-result-object v3

    .line 163
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/mail/MailAccount;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " _mailboxId in ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 165
    .local v4, sb:Ljava/lang/StringBuilder;
    if-eqz v3, :cond_0

    .line 166
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/util/mail/MailAccount;

    .line 167
    .local v0, acc:Lcom/htc/util/mail/MailAccount;
    invoke-virtual {v0, v2}, Lcom/htc/util/mail/MailAccount;->getFolderId(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 170
    .end local v0           #acc:Lcom/htc/util/mail/MailAccount;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_0
    const-string v5, "-1)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    const-string v5, " AND _del=-1 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public getNewFolderList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 279
    iget-object v0, p0, Lcom/htc/util/mail/MailAccount;->mNewFolderIdList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/mail/MailAccount;->mNewFolderIdList:Ljava/util/ArrayList;

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/htc/util/mail/MailAccount;->mNewFolderIdList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 282
    iget-object v0, p0, Lcom/htc/util/mail/MailAccount;->mNewFolderIdList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getUnreadMail()I
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/htc/util/mail/MailAccount;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/util/mail/MailManager;->getInstance(Landroid/content/Context;)Lcom/htc/util/mail/MailManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/util/mail/MailManager;->getAllUnreadMail()I

    move-result v0

    return v0
.end method

.method public refreshFolderIdList()V
    .locals 0

    .prologue
    .line 272
    return-void
.end method

.method public refreshFolders()V
    .locals 0

    .prologue
    .line 300
    return-void
.end method

.method public sendMail(Lcom/htc/util/mail/MailMessage;)Z
    .locals 2
    .parameter "message"

    .prologue
    .line 131
    iget-object v1, p0, Lcom/htc/util/mail/MailAccount;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/util/mail/MailManager;->getInstance(Landroid/content/Context;)Lcom/htc/util/mail/MailManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/util/mail/MailManager;->getDefaultAccount()Lcom/htc/util/mail/MailAccount;

    move-result-object v0

    .line 133
    .local v0, defaultAccount:Lcom/htc/util/mail/MailAccount;
    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0, p1}, Lcom/htc/util/mail/MailAccount;->sendMail(Lcom/htc/util/mail/MailMessage;)Z

    move-result v1

    .line 136
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public syncAccount(J)Z
    .locals 9
    .parameter "folderId"

    .prologue
    const/4 v8, 0x1

    .line 89
    iget-object v5, p0, Lcom/htc/util/mail/MailAccount;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/htc/util/mail/MailManager;->getInstance(Landroid/content/Context;)Lcom/htc/util/mail/MailManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/util/mail/MailManager;->getAccounts()Ljava/util/ArrayList;

    move-result-object v1

    .line 91
    .local v1, accs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/mail/MailAccount;>;"
    if-nez v1, :cond_1

    .line 99
    :cond_0
    return v8

    .line 92
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/util/mail/MailAccount;

    .line 93
    .local v0, acc:Lcom/htc/util/mail/MailAccount;
    long-to-int v5, p1

    invoke-virtual {v0, v5}, Lcom/htc/util/mail/MailAccount;->getFolderId(I)I

    move-result v5

    int-to-long v3, v5

    .line 94
    .local v3, mailboxId:J
    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-eqz v5, :cond_2

    .line 95
    invoke-virtual {v0, v3, v4}, Lcom/htc/util/mail/MailAccount;->syncAccount(J)Z

    goto :goto_0

    .line 97
    :cond_2
    const-string v5, "CombinedAccount"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "syncAccount, can\'t find folder:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
