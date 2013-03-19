.class public Lcom/htc/util/mail/MailUtils;
.super Ljava/lang/Object;
.source "MailUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/util/mail/MailUtils$ContactInfo;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field public static final SENSE_10:I = 0x0

.field public static final SENSE_15:I = 0x1

.field public static final SENSE_16:I = 0x2

.field public static final SENSE_20:I = 0x3

.field public static final SENSE_21:I = 0x4

.field public static final SENSE_30:I = 0x5

.field private static final TAG:Ljava/lang/String; = "MailUtils"

.field public static final allUnreadMailURI:Landroid/net/Uri;

.field public static final sACCOUNT_PROJECTION:[Ljava/lang/String;

.field public static final sAccountsURI:Landroid/net/Uri;

.field public static final sDelMailURI:Landroid/net/Uri;

.field public static final sFOLDER_INFO_PROJECTION:[Ljava/lang/String;

.field public static final sMAIL_PROJECTION:[Ljava/lang/String;

.field public static final sMESSAGE_STATUS_PROJECTION:[Ljava/lang/String;

.field public static final sMailBoxURI:Landroid/net/Uri;

.field public static final sMessagesURI:Landroid/net/Uri;

.field public static final sPROVIDER_PROJECTION:[Ljava/lang/String;

.field public static final sPartsURI:Landroid/net/Uri;

.field public static final sProvidersURI:Landroid/net/Uri;

.field public static final sSetMessageStatusURI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 20
    sget-boolean v0, Lcom/htc/util/mail/MailManager;->MAIL_OBJ_DEBUG:Z

    sput-boolean v0, Lcom/htc/util/mail/MailUtils;->DEBUG:Z

    .line 25
    const-string v0, "content://mail/providers"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/util/mail/MailUtils;->sProvidersURI:Landroid/net/Uri;

    .line 27
    const-string v0, "content://mail/messages"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/util/mail/MailUtils;->sMessagesURI:Landroid/net/Uri;

    .line 32
    const-string v0, "content://mail/accounts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/util/mail/MailUtils;->sAccountsURI:Landroid/net/Uri;

    .line 37
    const-string v0, "content://mail/mailboxs"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/util/mail/MailUtils;->sMailBoxURI:Landroid/net/Uri;

    .line 42
    const-string v0, "content://mail/parts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/util/mail/MailUtils;->sPartsURI:Landroid/net/Uri;

    .line 47
    const-string v0, "content://mail/allUnreadMail"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/util/mail/MailUtils;->allUnreadMailURI:Landroid/net/Uri;

    .line 52
    const-string v0, "content://mail/setMessageStatus"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/util/mail/MailUtils;->sSetMessageStatusURI:Landroid/net/Uri;

    .line 57
    const-string v0, "content://mail/deleteMessage"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/util/mail/MailUtils;->sDelMailURI:Landroid/net/Uri;

    .line 59
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_subject"

    aput-object v1, v0, v4

    const-string v1, "_internaldate"

    aput-object v1, v0, v5

    const-string v1, "_from"

    aput-object v1, v0, v6

    const-string v1, "_fromEmail"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "_to"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "_cc"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "_bcc"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "_flags"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "_read"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "_messagesize"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "_incAttachment"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "_account"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "_mailboxId"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "_importance"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "_mailAct"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "_messageClassInt"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "_subjtype"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/util/mail/MailUtils;->sMAIL_PROJECTION:[Ljava/lang/String;

    .line 64
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_provider"

    aput-object v1, v0, v4

    const-string v1, "_domain"

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/util/mail/MailUtils;->sPROVIDER_PROJECTION:[Ljava/lang/String;

    .line 69
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_name"

    aput-object v1, v0, v4

    const-string v1, "_desc"

    aput-object v1, v0, v5

    const-string v1, "_protocol"

    aput-object v1, v0, v6

    const-string v1, "_defaultfolderId"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "_trashfolderId"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "_sentfolderId"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "_draftfolderId"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "_outfolderId"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "_emailaddress"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "_defaultaccount"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "_colorIdx"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/util/mail/MailUtils;->sACCOUNT_PROJECTION:[Ljava/lang/String;

    .line 74
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_flags"

    aput-object v1, v0, v4

    const-string v1, "_read"

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/util/mail/MailUtils;->sMESSAGE_STATUS_PROJECTION:[Ljava/lang/String;

    .line 79
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_decodename"

    aput-object v1, v0, v4

    const-string v1, "_shortname"

    aput-object v1, v0, v5

    const-string v1, "_defaultfolder"

    aput-object v1, v0, v6

    const-string v1, "_account"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "_serverid"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "_parentid"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/util/mail/MailUtils;->sFOLDER_INFO_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    return-void
.end method

.method public static convertHTMLtoPlainText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "htmlStr"

    .prologue
    .line 268
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/htc/util/mail/MailUtils;->convertHTMLtoPlainText(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convertHTMLtoPlainText(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 32
    .parameter "htmlStr"
    .parameter "filter"

    .prologue
    .line 279
    if-nez p0, :cond_0

    .line 280
    const-string v28, ""

    .line 503
    :goto_0
    return-object v28

    .line 281
    :cond_0
    const-string v9, "UTF-8"

    .line 284
    .local v9, encoding:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 289
    .local v12, htmlBytes:[B
    :goto_1
    array-length v0, v12

    move/from16 v28, v0

    move/from16 v0, v28

    new-array v0, v0, [B

    move-object/from16 v23, v0

    .line 290
    .local v23, rtnBytes:[B
    sget-boolean v28, Lcom/htc/util/mail/MailUtils;->DEBUG:Z

    if-eqz v28, :cond_1

    const-string v28, "MailUtils"

    const-string v29, "converHTMLtoPlainText start..."

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 292
    .local v26, start:J
    const/16 v20, 0xc

    .line 293
    .local v20, maxLines:I
    const/16 v19, 0x258

    .line 294
    .local v19, maxCharacters:I
    const/16 v18, 0x0

    .line 295
    .local v18, line_count:I
    const/4 v5, 0x0

    .line 296
    .local v5, char_count:I
    const/16 v21, 0x0

    .line 297
    .local v21, old_byte:B
    const/16 v24, 0x0

    .line 298
    .local v24, rtnBytes_idx:I
    const/4 v15, 0x0

    .line 299
    .local v15, isTagFound:Z
    const/4 v13, 0x0

    .local v13, i:I
    :goto_2
    array-length v0, v12

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v13, v0, :cond_2d

    .line 304
    aget-byte v7, v12, v13

    .line 305
    .local v7, cur_byte:B
    const/16 v28, 0x3c

    move/from16 v0, v28

    if-ne v7, v0, :cond_14

    .line 307
    add-int/lit8 v28, v13, 0x5

    array-length v0, v12

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_c

    .line 308
    add-int/lit8 v28, v13, 0x1

    aget-byte v28, v12, v28

    const/16 v29, 0x73

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_2

    add-int/lit8 v28, v13, 0x1

    aget-byte v28, v12, v28

    const/16 v29, 0x53

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_c

    :cond_2
    add-int/lit8 v28, v13, 0x2

    aget-byte v28, v12, v28

    const/16 v29, 0x74

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_3

    add-int/lit8 v28, v13, 0x2

    aget-byte v28, v12, v28

    const/16 v29, 0x54

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_c

    :cond_3
    add-int/lit8 v28, v13, 0x3

    aget-byte v28, v12, v28

    const/16 v29, 0x79

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_4

    add-int/lit8 v28, v13, 0x3

    aget-byte v28, v12, v28

    const/16 v29, 0x59

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_c

    :cond_4
    add-int/lit8 v28, v13, 0x4

    aget-byte v28, v12, v28

    const/16 v29, 0x6c

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_5

    add-int/lit8 v28, v13, 0x4

    aget-byte v28, v12, v28

    const/16 v29, 0x4c

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_c

    :cond_5
    add-int/lit8 v28, v13, 0x5

    aget-byte v28, v12, v28

    const/16 v29, 0x65

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_6

    add-int/lit8 v28, v13, 0x5

    aget-byte v28, v12, v28

    const/16 v29, 0x45

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_c

    .line 311
    :cond_6
    add-int/lit8 v16, v13, 0x6

    .local v16, j:I
    :goto_3
    array-length v0, v12

    move/from16 v28, v0

    move/from16 v0, v16

    move/from16 v1, v28

    if-ge v0, v1, :cond_c

    .line 312
    add-int/lit8 v28, v16, 0x5

    array-length v0, v12

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_10

    .line 313
    aget-byte v28, v12, v16

    const/16 v29, 0x73

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_7

    aget-byte v28, v12, v16

    const/16 v29, 0x53

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_10

    :cond_7
    add-int/lit8 v28, v16, 0x1

    aget-byte v28, v12, v28

    const/16 v29, 0x74

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_8

    add-int/lit8 v28, v16, 0x1

    aget-byte v28, v12, v28

    const/16 v29, 0x54

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_10

    :cond_8
    add-int/lit8 v28, v16, 0x2

    aget-byte v28, v12, v28

    const/16 v29, 0x79

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_9

    add-int/lit8 v28, v16, 0x2

    aget-byte v28, v12, v28

    const/16 v29, 0x59

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_10

    :cond_9
    add-int/lit8 v28, v16, 0x3

    aget-byte v28, v12, v28

    const/16 v29, 0x6c

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_a

    add-int/lit8 v28, v16, 0x3

    aget-byte v28, v12, v28

    const/16 v29, 0x4c

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_10

    :cond_a
    add-int/lit8 v28, v16, 0x4

    aget-byte v28, v12, v28

    const/16 v29, 0x65

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_b

    add-int/lit8 v28, v16, 0x4

    aget-byte v28, v12, v28

    const/16 v29, 0x45

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_10

    :cond_b
    add-int/lit8 v28, v16, 0x5

    aget-byte v28, v12, v28

    const/16 v29, 0x3e

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_10

    .line 316
    const/16 v7, 0x20

    .line 317
    add-int/lit8 v13, v16, 0x5

    .line 327
    .end local v16           #j:I
    :cond_c
    add-int/lit8 v28, v13, 0x3

    array-length v0, v12

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_d

    .line 328
    add-int/lit8 v28, v13, 0x1

    aget-byte v28, v12, v28

    const/16 v29, 0x21

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_d

    add-int/lit8 v28, v13, 0x2

    aget-byte v28, v12, v28

    const/16 v29, 0x2d

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_d

    add-int/lit8 v28, v13, 0x3

    aget-byte v28, v12, v28

    const/16 v29, 0x2d

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_d

    .line 329
    add-int/lit8 v16, v13, 0x4

    .restart local v16       #j:I
    :goto_4
    array-length v0, v12

    move/from16 v28, v0

    move/from16 v0, v16

    move/from16 v1, v28

    if-ge v0, v1, :cond_d

    .line 330
    add-int/lit8 v28, v16, 0x2

    array-length v0, v12

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_11

    .line 331
    aget-byte v28, v12, v16

    const/16 v29, 0x2d

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_11

    add-int/lit8 v28, v16, 0x1

    aget-byte v28, v12, v28

    const/16 v29, 0x2d

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_11

    add-int/lit8 v28, v16, 0x2

    aget-byte v28, v12, v28

    const/16 v29, 0x3e

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_11

    .line 332
    const/16 v7, 0x20

    .line 333
    add-int/lit8 v13, v16, 0x2

    .line 344
    .end local v16           #j:I
    :cond_d
    add-int/lit8 v28, v13, 0x1

    array-length v0, v12

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_14

    .line 345
    add-int/lit8 v28, v13, 0x1

    aget-byte v28, v12, v28

    const/16 v29, 0x20

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_14

    .line 346
    const/4 v15, 0x0

    .line 347
    add-int/lit8 v16, v13, 0x1

    .restart local v16       #j:I
    :goto_5
    array-length v0, v12

    move/from16 v28, v0

    move/from16 v0, v16

    move/from16 v1, v28

    if-ge v0, v1, :cond_e

    .line 348
    aget-byte v28, v12, v16

    const/16 v29, 0x3e

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_12

    .line 349
    const/16 v7, 0x20

    .line 350
    move/from16 v13, v16

    .line 351
    const/4 v15, 0x1

    .line 364
    :cond_e
    if-eqz v15, :cond_14

    .line 299
    .end local v16           #j:I
    :cond_f
    :goto_6
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 285
    .end local v5           #char_count:I
    .end local v7           #cur_byte:B
    .end local v12           #htmlBytes:[B
    .end local v13           #i:I
    .end local v15           #isTagFound:Z
    .end local v18           #line_count:I
    .end local v19           #maxCharacters:I
    .end local v20           #maxLines:I
    .end local v21           #old_byte:B
    .end local v23           #rtnBytes:[B
    .end local v24           #rtnBytes_idx:I
    .end local v26           #start:J
    :catch_0
    move-exception v8

    .line 286
    .local v8, e:Ljava/io/UnsupportedEncodingException;
    const/4 v9, 0x0

    .line 287
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    .restart local v12       #htmlBytes:[B
    goto/16 :goto_1

    .line 311
    .end local v8           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v5       #char_count:I
    .restart local v7       #cur_byte:B
    .restart local v13       #i:I
    .restart local v15       #isTagFound:Z
    .restart local v16       #j:I
    .restart local v18       #line_count:I
    .restart local v19       #maxCharacters:I
    .restart local v20       #maxLines:I
    .restart local v21       #old_byte:B
    .restart local v23       #rtnBytes:[B
    .restart local v24       #rtnBytes_idx:I
    .restart local v26       #start:J
    :cond_10
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_3

    .line 329
    :cond_11
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 355
    :cond_12
    aget-byte v28, v12, v16

    const/16 v29, 0x3c

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_e

    .line 359
    array-length v0, v12

    move/from16 v28, v0

    add-int/lit8 v28, v28, -0x1

    move/from16 v0, v16

    move/from16 v1, v28

    if-ne v0, v1, :cond_13

    .line 360
    const/16 v7, 0x20

    .line 361
    array-length v13, v12

    .line 347
    :cond_13
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 372
    .end local v16           #j:I
    :cond_14
    const/16 v28, 0x26

    move/from16 v0, v28

    if-ne v7, v0, :cond_22

    add-int/lit8 v28, v13, 0x7

    array-length v0, v12

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_22

    .line 373
    const/4 v6, 0x0

    .line 374
    .local v6, chars_found:I
    const/16 v17, 0x2

    .local v17, k:I
    :goto_7
    const/16 v28, 0x7

    move/from16 v0, v17

    move/from16 v1, v28

    if-gt v0, v1, :cond_15

    .line 375
    add-int v28, v13, v17

    aget-byte v28, v12, v28

    const/16 v29, 0x3b

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_19

    .line 376
    add-int/lit8 v6, v17, -0x2

    .line 381
    :cond_15
    add-int/lit8 v28, v13, 0x1

    aget-byte v28, v12, v28

    const/16 v29, 0x23

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_22

    if-lez v6, :cond_22

    .line 383
    const/4 v14, 0x0

    .line 384
    .local v14, intValue:I
    add-int/lit8 v28, v13, 0x2

    aget-byte v28, v12, v28

    const/16 v29, 0x78

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_16

    add-int/lit8 v28, v13, 0x2

    aget-byte v28, v12, v28

    const/16 v29, 0x58

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_1c

    .line 385
    :cond_16
    const/16 v17, 0x1

    :goto_8
    move/from16 v0, v17

    if-gt v0, v6, :cond_1e

    .line 386
    add-int v28, v13, v17

    add-int/lit8 v28, v28, 0x1

    aget-byte v4, v12, v28

    .line 387
    .local v4, b:B
    const/16 v28, 0x30

    move/from16 v0, v28

    if-lt v4, v0, :cond_1a

    const/16 v28, 0x39

    move/from16 v0, v28

    if-gt v4, v0, :cond_1a

    .line 388
    add-int/lit8 v28, v4, -0x30

    add-int v14, v14, v28

    .line 393
    :cond_17
    :goto_9
    move/from16 v0, v17

    if-ge v0, v6, :cond_18

    .line 394
    mul-int/lit8 v14, v14, 0x10

    .line 385
    :cond_18
    add-int/lit8 v17, v17, 0x1

    goto :goto_8

    .line 374
    .end local v4           #b:B
    .end local v14           #intValue:I
    :cond_19
    add-int/lit8 v17, v17, 0x1

    goto :goto_7

    .line 389
    .restart local v4       #b:B
    .restart local v14       #intValue:I
    :cond_1a
    const/16 v28, 0x41

    move/from16 v0, v28

    if-lt v4, v0, :cond_1b

    const/16 v28, 0x46

    move/from16 v0, v28

    if-gt v4, v0, :cond_1b

    .line 390
    add-int/lit8 v28, v4, -0x41

    add-int/lit8 v28, v28, 0xa

    add-int v14, v14, v28

    goto :goto_9

    .line 391
    :cond_1b
    const/16 v28, 0x61

    move/from16 v0, v28

    if-lt v4, v0, :cond_17

    const/16 v28, 0x66

    move/from16 v0, v28

    if-gt v4, v0, :cond_17

    .line 392
    add-int/lit8 v28, v4, -0x61

    add-int/lit8 v28, v28, 0xa

    add-int v14, v14, v28

    goto :goto_9

    .line 397
    .end local v4           #b:B
    :cond_1c
    const/16 v17, 0x1

    :goto_a
    move/from16 v0, v17

    if-gt v0, v6, :cond_1e

    .line 398
    add-int v28, v13, v17

    add-int/lit8 v28, v28, 0x1

    aget-byte v28, v12, v28

    add-int/lit8 v28, v28, -0x30

    add-int v14, v14, v28

    .line 399
    move/from16 v0, v17

    if-ge v0, v6, :cond_1d

    .line 400
    mul-int/lit8 v14, v14, 0xa

    .line 397
    :cond_1d
    add-int/lit8 v17, v17, 0x1

    goto :goto_a

    .line 404
    :cond_1e
    if-nez v9, :cond_1f

    .line 406
    add-int/lit8 v25, v24, 0x1

    .end local v24           #rtnBytes_idx:I
    .local v25, rtnBytes_idx:I
    shr-int/lit8 v28, v14, 0x8

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    aput-byte v28, v23, v24

    .line 407
    add-int/lit8 v24, v25, 0x1

    .end local v25           #rtnBytes_idx:I
    .restart local v24       #rtnBytes_idx:I
    and-int/lit16 v0, v14, 0xff

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    aput-byte v28, v23, v25

    .line 408
    add-int/lit8 v5, v5, 0x2

    .line 427
    :goto_b
    add-int/lit8 v28, v6, 0x2

    add-int v13, v13, v28

    .line 428
    goto/16 :goto_6

    .line 412
    :cond_1f
    const/16 v28, 0x7e

    move/from16 v0, v28

    if-ge v14, v0, :cond_20

    .line 413
    add-int/lit8 v25, v24, 0x1

    .end local v24           #rtnBytes_idx:I
    .restart local v25       #rtnBytes_idx:I
    and-int/lit8 v28, v14, 0x7f

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    aput-byte v28, v23, v24

    .line 414
    add-int/lit8 v5, v5, 0x1

    move/from16 v24, v25

    .end local v25           #rtnBytes_idx:I
    .restart local v24       #rtnBytes_idx:I
    goto :goto_b

    .line 415
    :cond_20
    const/16 v28, 0x80

    move/from16 v0, v28

    if-lt v14, v0, :cond_21

    const/16 v28, 0x7ff

    move/from16 v0, v28

    if-gt v14, v0, :cond_21

    .line 416
    add-int/lit8 v25, v24, 0x1

    .end local v24           #rtnBytes_idx:I
    .restart local v25       #rtnBytes_idx:I
    and-int/lit16 v0, v14, 0x7c0

    move/from16 v28, v0

    shr-int/lit8 v28, v28, 0x6

    move/from16 v0, v28

    or-int/lit16 v0, v0, 0xc0

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    aput-byte v28, v23, v24

    .line 417
    add-int/lit8 v24, v25, 0x1

    .end local v25           #rtnBytes_idx:I
    .restart local v24       #rtnBytes_idx:I
    and-int/lit8 v28, v14, 0x3f

    move/from16 v0, v28

    or-int/lit16 v0, v0, 0x80

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    aput-byte v28, v23, v25

    .line 418
    add-int/lit8 v5, v5, 0x2

    goto :goto_b

    .line 420
    :cond_21
    add-int/lit8 v25, v24, 0x1

    .end local v24           #rtnBytes_idx:I
    .restart local v25       #rtnBytes_idx:I
    const v28, 0xf000

    and-int v28, v28, v14

    shr-int/lit8 v28, v28, 0xc

    move/from16 v0, v28

    or-int/lit16 v0, v0, 0xe0

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    aput-byte v28, v23, v24

    .line 421
    add-int/lit8 v24, v25, 0x1

    .end local v25           #rtnBytes_idx:I
    .restart local v24       #rtnBytes_idx:I
    and-int/lit16 v0, v14, 0xfc0

    move/from16 v28, v0

    shr-int/lit8 v28, v28, 0x6

    move/from16 v0, v28

    or-int/lit16 v0, v0, 0x80

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    aput-byte v28, v23, v25

    .line 422
    add-int/lit8 v25, v24, 0x1

    .end local v24           #rtnBytes_idx:I
    .restart local v25       #rtnBytes_idx:I
    and-int/lit8 v28, v14, 0x3f

    move/from16 v0, v28

    or-int/lit16 v0, v0, 0x80

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    aput-byte v28, v23, v24

    .line 423
    add-int/lit8 v5, v5, 0x3

    move/from16 v24, v25

    .end local v25           #rtnBytes_idx:I
    .restart local v24       #rtnBytes_idx:I
    goto/16 :goto_b

    .line 433
    .end local v6           #chars_found:I
    .end local v14           #intValue:I
    .end local v17           #k:I
    :cond_22
    const/16 v28, 0x26

    move/from16 v0, v28

    if-ne v7, v0, :cond_23

    add-int/lit8 v28, v13, 0x5

    array-length v0, v12

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_23

    .line 434
    add-int/lit8 v28, v13, 0x1

    aget-byte v28, v12, v28

    const/16 v29, 0x6e

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_23

    add-int/lit8 v28, v13, 0x2

    aget-byte v28, v12, v28

    const/16 v29, 0x62

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_23

    add-int/lit8 v28, v13, 0x3

    aget-byte v28, v12, v28

    const/16 v29, 0x73

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_23

    add-int/lit8 v28, v13, 0x4

    aget-byte v28, v12, v28

    const/16 v29, 0x70

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_23

    add-int/lit8 v28, v13, 0x5

    aget-byte v28, v12, v28

    const/16 v29, 0x3b

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_23

    .line 435
    const/16 v7, 0x20

    .line 436
    add-int/lit8 v13, v13, 0x5

    .line 440
    :cond_23
    const/16 v28, 0x26

    move/from16 v0, v28

    if-ne v7, v0, :cond_24

    add-int/lit8 v28, v13, 0x5

    array-length v0, v12

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_24

    .line 441
    add-int/lit8 v28, v13, 0x1

    aget-byte v28, v12, v28

    const/16 v29, 0x71

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_24

    add-int/lit8 v28, v13, 0x2

    aget-byte v28, v12, v28

    const/16 v29, 0x75

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_24

    add-int/lit8 v28, v13, 0x3

    aget-byte v28, v12, v28

    const/16 v29, 0x6f

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_24

    add-int/lit8 v28, v13, 0x4

    aget-byte v28, v12, v28

    const/16 v29, 0x74

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_24

    add-int/lit8 v28, v13, 0x5

    aget-byte v28, v12, v28

    const/16 v29, 0x3b

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_24

    .line 442
    const/16 v7, 0x22

    .line 443
    add-int/lit8 v13, v13, 0x5

    .line 447
    :cond_24
    const/16 v28, 0x26

    move/from16 v0, v28

    if-ne v7, v0, :cond_25

    add-int/lit8 v28, v13, 0x3

    array-length v0, v12

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_25

    .line 448
    add-int/lit8 v28, v13, 0x1

    aget-byte v28, v12, v28

    const/16 v29, 0x6c

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_25

    add-int/lit8 v28, v13, 0x2

    aget-byte v28, v12, v28

    const/16 v29, 0x74

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_25

    add-int/lit8 v28, v13, 0x3

    aget-byte v28, v12, v28

    const/16 v29, 0x3b

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_25

    .line 449
    const/16 v7, 0x3c

    .line 450
    add-int/lit8 v13, v13, 0x3

    .line 454
    :cond_25
    const/16 v28, 0x26

    move/from16 v0, v28

    if-ne v7, v0, :cond_26

    add-int/lit8 v28, v13, 0x3

    array-length v0, v12

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_26

    .line 455
    add-int/lit8 v28, v13, 0x1

    aget-byte v28, v12, v28

    const/16 v29, 0x67

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_26

    add-int/lit8 v28, v13, 0x2

    aget-byte v28, v12, v28

    const/16 v29, 0x74

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_26

    add-int/lit8 v28, v13, 0x3

    aget-byte v28, v12, v28

    const/16 v29, 0x3b

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_26

    .line 456
    const/16 v7, 0x3e

    .line 457
    add-int/lit8 v13, v13, 0x3

    .line 461
    :cond_26
    const/16 v28, 0x26

    move/from16 v0, v28

    if-ne v7, v0, :cond_27

    add-int/lit8 v28, v13, 0x4

    array-length v0, v12

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_27

    .line 462
    add-int/lit8 v28, v13, 0x1

    aget-byte v28, v12, v28

    const/16 v29, 0x61

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_27

    add-int/lit8 v28, v13, 0x2

    aget-byte v28, v12, v28

    const/16 v29, 0x6d

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_27

    add-int/lit8 v28, v13, 0x3

    aget-byte v28, v12, v28

    const/16 v29, 0x70

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_27

    add-int/lit8 v28, v13, 0x4

    aget-byte v28, v12, v28

    const/16 v29, 0x3b

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_27

    .line 463
    const/16 v7, 0x26

    .line 464
    add-int/lit8 v13, v13, 0x4

    .line 468
    :cond_27
    const/16 v28, 0xa

    move/from16 v0, v28

    if-ne v7, v0, :cond_29

    .line 469
    if-eqz p1, :cond_28

    .line 470
    const/16 v28, 0xa

    move/from16 v0, v21

    move/from16 v1, v28

    if-eq v0, v1, :cond_f

    .line 474
    :cond_28
    add-int/lit8 v18, v18, 0x1

    .line 477
    :cond_29
    const/16 v28, 0x9

    move/from16 v0, v28

    if-eq v7, v0, :cond_2a

    const/16 v28, 0xd

    move/from16 v0, v28

    if-ne v7, v0, :cond_2b

    .line 478
    :cond_2a
    const/16 v7, 0x20

    .line 481
    :cond_2b
    const/16 v28, 0x20

    move/from16 v0, v28

    if-ne v7, v0, :cond_2c

    .line 482
    const/16 v28, 0xa

    move/from16 v0, v21

    move/from16 v1, v28

    if-eq v0, v1, :cond_f

    .line 486
    :cond_2c
    move/from16 v21, v7

    .line 487
    add-int/lit8 v25, v24, 0x1

    .end local v24           #rtnBytes_idx:I
    .restart local v25       #rtnBytes_idx:I
    aput-byte v7, v23, v24

    .line 488
    add-int/lit8 v5, v5, 0x1

    move/from16 v24, v25

    .end local v25           #rtnBytes_idx:I
    .restart local v24       #rtnBytes_idx:I
    goto/16 :goto_6

    .line 492
    .end local v7           #cur_byte:B
    :cond_2d
    if-eqz v9, :cond_2f

    .line 494
    :try_start_1
    new-instance v22, Ljava/lang/String;

    const/16 v28, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v28

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 501
    .local v22, rtn:Ljava/lang/String;
    :goto_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 502
    .local v10, end:J
    sget-boolean v28, Lcom/htc/util/mail/MailUtils;->DEBUG:Z

    if-eqz v28, :cond_2e

    const-string v28, "MailUtils"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "converHTMLtoPlainText end...time used: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    sub-long v30, v10, v26

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " milliseconds"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_2e
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_0

    .line 495
    .end local v10           #end:J
    .end local v22           #rtn:Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 496
    .restart local v8       #e:Ljava/io/UnsupportedEncodingException;
    new-instance v22, Ljava/lang/String;

    const/16 v28, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v28

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 497
    .restart local v22       #rtn:Ljava/lang/String;
    goto :goto_c

    .line 499
    .end local v8           #e:Ljava/io/UnsupportedEncodingException;
    .end local v22           #rtn:Ljava/lang/String;
    :cond_2f
    new-instance v22, Ljava/lang/String;

    const/16 v28, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v28

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .restart local v22       #rtn:Ljava/lang/String;
    goto :goto_c
.end method

.method public static escapeDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "displayName"

    .prologue
    .line 511
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 514
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 515
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 516
    .local v0, c:C
    sparse-switch v0, :sswitch_data_0

    .line 524
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 514
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 518
    :sswitch_0
    const-string v3, "\\"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 521
    :sswitch_1
    const-string v3, "\\"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 527
    .end local v0           #c:C
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 516
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x5c -> :sswitch_1
    .end sparse-switch
.end method

.method public static getContactFromEmail(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4
    .parameter "context"
    .parameter "fromEmail"

    .prologue
    const/4 v2, -0x1

    .line 243
    if-nez p1, :cond_1

    .line 257
    :cond_0
    :goto_0
    return v2

    .line 246
    :cond_1
    const/4 v1, 0x0

    .line 249
    .local v1, uri:Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/provider/HtcUnionContact;->getContactByMail(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 250
    if-eqz v1, :cond_0

    .line 253
    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    long-to-int v2, v2

    goto :goto_0

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getContactNameById(Landroid/content/Context;I)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "contact_id"

    .prologue
    const/4 v9, 0x0

    .line 212
    if-gez p1, :cond_1

    move-object v8, v9

    .line 228
    :cond_0
    :goto_0
    return-object v8

    .line 215
    :cond_1
    const/4 v8, 0x0

    .line 216
    .local v8, name:Ljava/lang/String;
    const-string v0, "content://com.android.contacts/contacts/widget_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 218
    .local v1, peopleUri:Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 219
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 220
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 221
    const-string v0, "display_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 222
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 224
    .end local v6           #c:Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .local v7, ex:Ljava/lang/Exception;
    move-object v8, v9

    .line 226
    goto :goto_0
.end method

.method public static getHtcString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 547
    :try_start_0
    invoke-static {p0}, Lcom/htc/res/HtcResources;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    .line 548
    .local v1, htcContext:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 551
    .end local v1           #htcContext:Landroid/content/Context;
    :goto_0
    return-object v2

    .line 549
    :catch_0
    move-exception v0

    .line 550
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "MailUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resource not found :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const-string v2, ""

    goto :goto_0
.end method

.method public static getSenseVersion()I
    .locals 3

    .prologue
    .line 123
    const/4 v0, 0x1

    .line 124
    .local v0, sense_version:I
    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v2, "1.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 125
    const/4 v0, 0x0

    .line 135
    :cond_0
    :goto_0
    return v0

    .line 126
    :cond_1
    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v2, "1.6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 127
    const/4 v0, 0x2

    goto :goto_0

    .line 128
    :cond_2
    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v2, "2.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 129
    const/4 v0, 0x3

    goto :goto_0

    .line 130
    :cond_3
    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v2, "2.1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 131
    const/4 v0, 0x4

    goto :goto_0

    .line 132
    :cond_4
    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public static getSpecifiedContactInfo(Landroid/content/Context;J)Lcom/htc/util/mail/MailUtils$ContactInfo;
    .locals 10
    .parameter "context"
    .parameter "contactid"

    .prologue
    .line 172
    const-string v0, "content://com.android.contacts/contacts/widget_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 174
    .local v1, peopleUri:Landroid/net/Uri;
    const/4 v8, 0x0

    .line 177
    .local v8, info:Lcom/htc/util/mail/MailUtils$ContactInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 179
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 180
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 181
    new-instance v9, Lcom/htc/util/mail/MailUtils$ContactInfo;

    invoke-direct {v9}, Lcom/htc/util/mail/MailUtils$ContactInfo;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .end local v8           #info:Lcom/htc/util/mail/MailUtils$ContactInfo;
    .local v9, info:Lcom/htc/util/mail/MailUtils$ContactInfo;
    :try_start_1
    iput-wide p1, v9, Lcom/htc/util/mail/MailUtils$ContactInfo;->pid:J

    .line 183
    const-string v0, "photo_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v9, Lcom/htc/util/mail/MailUtils$ContactInfo;->photo_id:J

    .line 184
    const-string v0, "display_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/htc/util/mail/MailUtils$ContactInfo;->name:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v8, v9

    .line 188
    .end local v9           #info:Lcom/htc/util/mail/MailUtils$ContactInfo;
    .restart local v8       #info:Lcom/htc/util/mail/MailUtils$ContactInfo;
    :cond_0
    if-eqz v6, :cond_1

    .line 189
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 197
    .end local v6           #c:Landroid/database/Cursor;
    :cond_1
    :goto_0
    return-object v8

    .line 192
    :catch_0
    move-exception v7

    .line 194
    .local v7, e:Ljava/lang/Exception;
    :goto_1
    const/4 v8, 0x0

    goto :goto_0

    .line 192
    .end local v7           #e:Ljava/lang/Exception;
    .end local v8           #info:Lcom/htc/util/mail/MailUtils$ContactInfo;
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v9       #info:Lcom/htc/util/mail/MailUtils$ContactInfo;
    :catch_1
    move-exception v7

    move-object v8, v9

    .end local v9           #info:Lcom/htc/util/mail/MailUtils$ContactInfo;
    .restart local v8       #info:Lcom/htc/util/mail/MailUtils$ContactInfo;
    goto :goto_1
.end method

.method public static getWellFormedEmailAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "displayName"
    .parameter "address"

    .prologue
    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/htc/util/mail/MailUtils;->escapeDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
