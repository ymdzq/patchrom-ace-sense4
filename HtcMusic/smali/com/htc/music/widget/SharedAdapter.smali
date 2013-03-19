.class public Lcom/htc/music/widget/SharedAdapter;
.super Landroid/widget/BaseAdapter;
.source "SharedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/widget/SharedAdapter$ActivityResolveInfo;
    }
.end annotation


# static fields
.field private static final AddFilePrefix:Ljava/lang/String; = "AddFile"

.field private static final FILE_RECORD:Ljava/lang/String; = "file.xml"

.field private static final GMAIL_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.gm"

.field public static final SHARE_NORMAL_FILE:I = 0x0

.field public static final SHARE_SD_DRM:I = 0x1

.field private static final SINA_WEIBO_PACKAGE_NAME:Ljava/lang/String; = "com.htc.friendstream.sinaweiboplugin"

.field private static final TAG:Ljava/lang/String; = "[ShareAdapter]"

.field private static final TEXT_RECORD:Ljava/lang/String; = "text.xml"

.field private static mIsShowIcon:Z

.field private static mNoNetworkDialog:Lcom/htc/widget/HtcAlertDialog;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDataModel:Lcom/htc/widget/HtcShareViaMultiAdapter;

.field private mIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mResInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/music/widget/SharedAdapter$ActivityResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 70
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/htc/music/widget/SharedAdapter;->mIsShowIcon:Z

    .line 490
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/music/widget/SharedAdapter;->mNoNetworkDialog:Lcom/htc/widget/HtcAlertDialog;

    return-void

    .line 70
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "type"

    .prologue
    .line 158
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/widget/SharedAdapter;->mResInfo:Ljava/util/List;

    .line 687
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/widget/SharedAdapter;->mIntents:Ljava/util/List;

    .line 159
    iput-object p1, p0, Lcom/htc/music/widget/SharedAdapter;->mContext:Landroid/content/Context;

    .line 160
    new-instance v0, Lcom/htc/widget/HtcShareViaMultiAdapter;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcShareViaMultiAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/music/widget/SharedAdapter;->mDataModel:Lcom/htc/widget/HtcShareViaMultiAdapter;

    .line 161
    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/widget/SharedAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/music/widget/SharedAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Lcom/htc/widget/HtcAlertDialog;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/htc/music/widget/SharedAdapter;->mNoNetworkDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    sput-object p0, Lcom/htc/music/widget/SharedAdapter;->mNoNetworkDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object p0
.end method

.method public static getShareDialogClickListener(Landroid/app/Activity;ILjava/lang/String;ILcom/htc/music/widget/SharedAdapter;)Landroid/content/DialogInterface$OnClickListener;
    .locals 7
    .parameter "activity"
    .parameter "audioId"
    .parameter "audioPath"
    .parameter "type"
    .parameter "adapter"

    .prologue
    .line 383
    invoke-static {p0, p1}, Lcom/htc/music/widget/SharedAdapter;->getTrackMimeType(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    .line 385
    .local v5, mimeType:Ljava/lang/String;
    move-object v3, p2

    .line 386
    .local v3, innerAudioPath:Ljava/lang/String;
    move-object v4, v5

    .line 387
    .local v4, innerMimeType:Ljava/lang/String;
    move-object v2, p0

    .line 389
    .local v2, innerActivity:Landroid/app/Activity;
    new-instance v0, Lcom/htc/music/widget/SharedAdapter$2;

    invoke-direct {v0, p4, v3, v4, v2}, Lcom/htc/music/widget/SharedAdapter$2;-><init>(Lcom/htc/music/widget/SharedAdapter;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    .line 451
    .local v0, choose_listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lcom/htc/widget/HtcShareViaDialogOnClickListener;

    invoke-virtual {p4}, Lcom/htc/music/widget/SharedAdapter;->getAdapter()Lcom/htc/widget/HtcShareViaMultiAdapter;

    move-result-object v6

    invoke-direct {v1, v6, v0}, Lcom/htc/widget/HtcShareViaDialogOnClickListener;-><init>(Lcom/htc/widget/IHtcShareViaAdapter;Landroid/content/DialogInterface$OnClickListener;)V

    .line 454
    .local v1, clickListener:Lcom/htc/widget/HtcShareViaDialogOnClickListener;
    return-object v1
.end method

.method public static getShareDialogClickListener(Landroid/app/Activity;Landroid/os/Bundle;Lcom/htc/music/widget/SharedAdapter;)Landroid/content/DialogInterface$OnClickListener;
    .locals 4
    .parameter "activity"
    .parameter "bundle"
    .parameter "adapter"

    .prologue
    .line 494
    move-object v2, p0

    .line 496
    .local v2, innerActivity:Landroid/app/Activity;
    new-instance v0, Lcom/htc/music/widget/SharedAdapter$4;

    invoke-direct {v0, p2, p1, v2}, Lcom/htc/music/widget/SharedAdapter$4;-><init>(Lcom/htc/music/widget/SharedAdapter;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 543
    .local v0, choose_listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lcom/htc/widget/HtcShareViaDialogOnClickListener;

    invoke-virtual {p2}, Lcom/htc/music/widget/SharedAdapter;->getAdapter()Lcom/htc/widget/HtcShareViaMultiAdapter;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lcom/htc/widget/HtcShareViaDialogOnClickListener;-><init>(Lcom/htc/widget/IHtcShareViaAdapter;Landroid/content/DialogInterface$OnClickListener;)V

    .line 546
    .local v1, clickListener:Lcom/htc/widget/HtcShareViaDialogOnClickListener;
    return-object v1
.end method

.method public static getShareDialogClickListener(Landroid/app/Activity;Ljava/lang/String;Lcom/htc/music/widget/SharedAdapter;)Landroid/content/DialogInterface$OnClickListener;
    .locals 5
    .parameter "activity"
    .parameter "text"
    .parameter "adapter"

    .prologue
    .line 348
    move-object v2, p0

    .line 349
    .local v2, innerActivity:Landroid/app/Activity;
    move-object v3, p1

    .line 351
    .local v3, innerText:Ljava/lang/String;
    new-instance v0, Lcom/htc/music/widget/SharedAdapter$1;

    invoke-direct {v0, p2, v3, v2}, Lcom/htc/music/widget/SharedAdapter$1;-><init>(Lcom/htc/music/widget/SharedAdapter;Ljava/lang/String;Landroid/app/Activity;)V

    .line 375
    .local v0, choose_listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lcom/htc/widget/HtcShareViaDialogOnClickListener;

    invoke-virtual {p2}, Lcom/htc/music/widget/SharedAdapter;->getAdapter()Lcom/htc/widget/HtcShareViaMultiAdapter;

    move-result-object v4

    invoke-direct {v1, v4, v0}, Lcom/htc/widget/HtcShareViaDialogOnClickListener;-><init>(Lcom/htc/widget/IHtcShareViaAdapter;Landroid/content/DialogInterface$OnClickListener;)V

    .line 378
    .local v1, clickListener:Lcom/htc/widget/HtcShareViaDialogOnClickListener;
    return-object v1
.end method

.method private static getTrackMimeType(Landroid/content/Context;I)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "id"

    .prologue
    .line 271
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "mime_type"

    aput-object v1, v2, v0

    .line 275
    .local v2, cols:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 277
    .local v7, mimeType:Ljava/lang/String;
    const/4 v6, 0x0

    .line 279
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 280
    .local v3, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 281
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 282
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 283
    const-string v0, "mime_type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 286
    :cond_0
    if-eqz v6, :cond_1

    .line 287
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 288
    :cond_1
    const/4 v6, 0x0

    .line 291
    return-object v7

    .line 286
    .end local v3           #where:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 287
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 288
    :cond_2
    const/4 v6, 0x0

    .line 286
    throw v0
.end method

.method public static shareIntentChooser(Landroid/app/Activity;ILjava/lang/String;I)Landroid/app/Dialog;
    .locals 8
    .parameter "activity"
    .parameter "audioId"
    .parameter "audioPath"
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    .line 596
    if-gez p1, :cond_0

    .line 675
    :goto_0
    return-object v2

    .line 602
    :cond_0
    invoke-static {p0, p1}, Lcom/htc/music/widget/SharedAdapter;->getTrackMimeType(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 604
    .local v4, mimeType:Ljava/lang/String;
    const/4 v3, 0x1

    .line 605
    .local v3, isMmsNeeded:Z
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 606
    .local v5, request:Landroid/content/Intent;
    const-string v6, "android.intent.action.SEND"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 607
    invoke-virtual {v5, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 611
    new-instance v0, Lcom/htc/music/widget/SharedAdapter;

    invoke-direct {v0, p0, v4}, Lcom/htc/music/widget/SharedAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 612
    .local v0, adapter:Lcom/htc/music/widget/SharedAdapter;
    invoke-virtual {v0, v5}, Lcom/htc/music/widget/SharedAdapter;->addIntent(Landroid/content/Intent;)V

    .line 614
    const/4 v6, 0x1

    if-ne p3, v6, :cond_1

    .line 615
    invoke-virtual {v0}, Lcom/htc/music/widget/SharedAdapter;->generateResoleInfo()V

    .line 616
    const-string v6, "com.google.android.gm"

    invoke-virtual {v0, v6}, Lcom/htc/music/widget/SharedAdapter;->removeSpecialPackage(Ljava/lang/String;)V

    .line 617
    const/4 v3, 0x0

    .line 620
    :cond_1
    if-eqz v3, :cond_2

    .line 623
    new-instance v5, Landroid/content/Intent;

    .end local v5           #request:Landroid/content/Intent;
    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 624
    .restart local v5       #request:Landroid/content/Intent;
    const-string v6, "android.intent.action.SEND_MSG"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 625
    invoke-virtual {v5, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 626
    invoke-virtual {v0, v5}, Lcom/htc/music/widget/SharedAdapter;->addIntent(Landroid/content/Intent;)V

    .line 627
    invoke-virtual {v0}, Lcom/htc/music/widget/SharedAdapter;->generateResoleInfo()V

    .line 660
    :cond_2
    invoke-static {p0, p1, p2, p3, v0}, Lcom/htc/music/widget/SharedAdapter;->getShareDialogClickListener(Landroid/app/Activity;ILjava/lang/String;ILcom/htc/music/widget/SharedAdapter;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v1

    .line 663
    .local v1, choose_listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v6, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v6, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x20400a1

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/htc/music/widget/SharedAdapter;->getAdapter()Lcom/htc/widget/HtcShareViaMultiAdapter;

    move-result-object v7

    invoke-virtual {v6, v7, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    .local v2, dialog:Landroid/app/Dialog;
    move-object v6, v2

    .line 669
    check-cast v6, Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v6

    new-instance v7, Lcom/htc/music/widget/SharedAdapter$5;

    invoke-direct {v7, v1, v2}, Lcom/htc/music/widget/SharedAdapter$5;-><init>(Landroid/content/DialogInterface$OnClickListener;Landroid/app/Dialog;)V

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method

.method public static shareIntentChooser(Landroid/app/Activity;Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .parameter "activity"
    .parameter "bundle"

    .prologue
    const/4 v2, 0x0

    .line 461
    if-nez p1, :cond_0

    .line 487
    :goto_0
    return-object v2

    .line 464
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.SEND"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 465
    .local v3, request:Landroid/content/Intent;
    const-string v4, "text/plain"

    .line 466
    .local v4, type:Ljava/lang/String;
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 467
    const-string v5, "android.intent.extra.TEXT"

    invoke-virtual {v3, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 469
    new-instance v0, Lcom/htc/music/widget/SharedAdapter;

    invoke-direct {v0, p0, v4}, Lcom/htc/music/widget/SharedAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 470
    .local v0, adapter:Lcom/htc/music/widget/SharedAdapter;
    invoke-virtual {v0, v3}, Lcom/htc/music/widget/SharedAdapter;->addIntent(Landroid/content/Intent;)V

    .line 471
    invoke-virtual {v0}, Lcom/htc/music/widget/SharedAdapter;->generateResoleInfo()V

    .line 473
    invoke-static {p0, p1, v0}, Lcom/htc/music/widget/SharedAdapter;->getShareDialogClickListener(Landroid/app/Activity;Landroid/os/Bundle;Lcom/htc/music/widget/SharedAdapter;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v1

    .line 475
    .local v1, choose_listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v5, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v5, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f070124

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/htc/music/widget/SharedAdapter;->getAdapter()Lcom/htc/widget/HtcShareViaMultiAdapter;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    .local v2, dialog:Landroid/app/Dialog;
    move-object v5, v2

    .line 480
    check-cast v5, Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v5}, Lcom/htc/widget/HtcAlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v5

    new-instance v6, Lcom/htc/music/widget/SharedAdapter$3;

    invoke-direct {v6, v1, v2}, Lcom/htc/music/widget/SharedAdapter$3;-><init>(Landroid/content/DialogInterface$OnClickListener;Landroid/app/Dialog;)V

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public addIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 689
    iget-object v0, p0, Lcom/htc/music/widget/SharedAdapter;->mDataModel:Lcom/htc/widget/HtcShareViaMultiAdapter;

    if-eqz v0, :cond_0

    .line 690
    iget-object v0, p0, Lcom/htc/music/widget/SharedAdapter;->mDataModel:Lcom/htc/widget/HtcShareViaMultiAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcShareViaMultiAdapter;->addIntent(Landroid/content/Intent;)V

    .line 691
    iget-object v0, p0, Lcom/htc/music/widget/SharedAdapter;->mIntents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 693
    :cond_0
    return-void
.end method

.method public generateResoleInfo()V
    .locals 14

    .prologue
    .line 696
    iget-object v12, p0, Lcom/htc/music/widget/SharedAdapter;->mDataModel:Lcom/htc/widget/HtcShareViaMultiAdapter;

    if-eqz v12, :cond_5

    .line 697
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, p0, Lcom/htc/music/widget/SharedAdapter;->mResInfo:Ljava/util/List;

    .line 698
    iget-object v12, p0, Lcom/htc/music/widget/SharedAdapter;->mDataModel:Lcom/htc/widget/HtcShareViaMultiAdapter;

    invoke-virtual {v12}, Lcom/htc/widget/HtcShareViaMultiAdapter;->getShareListResolveInfo()Ljava/util/List;

    move-result-object v10

    .line 700
    .local v10, resInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v12, p0, Lcom/htc/music/widget/SharedAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 702
    .local v8, pm:Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    .line 703
    .local v5, info:Landroid/content/pm/ResolveInfo;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 704
    .local v1, allShareApList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/music/widget/SharedAdapter$ActivityResolveInfo;>;"
    iget-object v12, p0, Lcom/htc/music/widget/SharedAdapter;->mIntents:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 705
    .local v9, request:Landroid/content/Intent;
    const/high16 v12, 0x1

    invoke-virtual {v8, v9, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v11

    .line 706
    .local v11, shareApList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 707
    .local v7, item:Landroid/content/pm/ResolveInfo;
    new-instance v0, Lcom/htc/music/widget/SharedAdapter$ActivityResolveInfo;

    invoke-direct {v0, p0, v7, v9}, Lcom/htc/music/widget/SharedAdapter$ActivityResolveInfo;-><init>(Lcom/htc/music/widget/SharedAdapter;Landroid/content/pm/ResolveInfo;Landroid/content/Intent;)V

    .line 708
    .local v0, actInfo:Lcom/htc/music/widget/SharedAdapter$ActivityResolveInfo;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 712
    .end local v0           #actInfo:Lcom/htc/music/widget/SharedAdapter$ActivityResolveInfo;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v7           #item:Landroid/content/pm/ResolveInfo;
    .end local v9           #request:Landroid/content/Intent;
    .end local v11           #shareApList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 713
    .local v6, ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/ResolveInfo;>;"
    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 714
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .end local v5           #info:Landroid/content/pm/ResolveInfo;
    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 715
    .restart local v5       #info:Landroid/content/pm/ResolveInfo;
    const/4 v4, 0x0

    .local v4, index:I
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    if-ge v4, v12, :cond_2

    .line 717
    iget-object v12, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/htc/music/widget/SharedAdapter$ActivityResolveInfo;

    iget-object v12, v12, Lcom/htc/music/widget/SharedAdapter$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v12, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 718
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/widget/SharedAdapter$ActivityResolveInfo;

    .line 719
    .restart local v0       #actInfo:Lcom/htc/music/widget/SharedAdapter$ActivityResolveInfo;
    iget-object v12, p0, Lcom/htc/music/widget/SharedAdapter;->mResInfo:Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 720
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 715
    .end local v0           #actInfo:Lcom/htc/music/widget/SharedAdapter$ActivityResolveInfo;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 732
    .end local v4           #index:I
    :cond_4
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_5

    .line 733
    const-string v12, "lala"

    const-string v13, "there has some items we can\'t match it!!"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    .end local v1           #allShareApList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/music/widget/SharedAdapter$ActivityResolveInfo;>;"
    .end local v5           #info:Landroid/content/pm/ResolveInfo;
    .end local v6           #ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/ResolveInfo;>;"
    .end local v8           #pm:Landroid/content/pm/PackageManager;
    .end local v10           #resInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_5
    return-void
.end method

.method public getAdapter()Lcom/htc/widget/HtcShareViaMultiAdapter;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/htc/music/widget/SharedAdapter;->mDataModel:Lcom/htc/widget/HtcShareViaMultiAdapter;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcShareViaMultiAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 165
    iget-object v0, p0, Lcom/htc/music/widget/SharedAdapter;->mDataModel:Lcom/htc/widget/HtcShareViaMultiAdapter;

    invoke-virtual {v0}, Lcom/htc/widget/HtcShareViaMultiAdapter;->shrink()V

    .line 166
    iget-object v0, p0, Lcom/htc/music/widget/SharedAdapter;->mDataModel:Lcom/htc/widget/HtcShareViaMultiAdapter;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/htc/music/widget/SharedAdapter;->mResInfo:Ljava/util/List;

    if-nez v0, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/htc/music/widget/SharedAdapter;->generateResoleInfo()V

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/htc/music/widget/SharedAdapter;->mResInfo:Ljava/util/List;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 174
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/SharedAdapter;->mResInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/htc/music/widget/SharedAdapter;->mResInfo:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/htc/music/widget/SharedAdapter;->mResInfo:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 182
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

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

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v5, 0x8

    .line 192
    if-nez p2, :cond_3

    .line 193
    sget-boolean v4, Lcom/htc/music/widget/SharedAdapter;->mIsShowIcon:Z

    if-nez v4, :cond_2

    .line 194
    iget-object v4, p0, Lcom/htc/music/widget/SharedAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f03000c

    invoke-static {v4, v6}, Lcom/htc/res/HtcResources;->inflateLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v3

    .line 203
    .local v3, view:Landroid/view/View;
    :goto_0
    const/4 v2, 0x0

    .line 204
    .local v2, text:Lcom/htc/widget/HtcListItem2LineText;
    const/4 v1, 0x0

    .line 206
    .local v1, icon:Lcom/htc/widget/HtcListItemColorIcon;
    const v4, 0x7f080025

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #text:Lcom/htc/widget/HtcListItem2LineText;
    check-cast v2, Lcom/htc/widget/HtcListItem2LineText;

    .line 207
    .restart local v2       #text:Lcom/htc/widget/HtcListItem2LineText;
    const v4, 0x7f08002a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #icon:Lcom/htc/widget/HtcListItemColorIcon;
    check-cast v1, Lcom/htc/widget/HtcListItemColorIcon;

    .line 209
    .restart local v1       #icon:Lcom/htc/widget/HtcListItemColorIcon;
    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 211
    iget-object v4, p0, Lcom/htc/music/widget/SharedAdapter;->mResInfo:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/music/widget/SharedAdapter$ActivityResolveInfo;

    iget-object v0, v4, Lcom/htc/music/widget/SharedAdapter$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 213
    .local v0, activity:Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_1

    .line 214
    sget-boolean v4, Lcom/htc/music/widget/SharedAdapter;->mIsShowIcon:Z

    if-eqz v4, :cond_0

    .line 215
    iget-object v4, p0, Lcom/htc/music/widget/SharedAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 217
    :cond_0
    sget-boolean v4, Lcom/htc/music/widget/SharedAdapter;->mIsShowIcon:Z

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcListItemColorIcon;->setVisibility(I)V

    .line 219
    :cond_1
    iget-object v4, p0, Lcom/htc/music/widget/SharedAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 221
    return-object v3

    .line 196
    .end local v0           #activity:Landroid/content/pm/ResolveInfo;
    .end local v1           #icon:Lcom/htc/widget/HtcListItemColorIcon;
    .end local v2           #text:Lcom/htc/widget/HtcListItem2LineText;
    .end local v3           #view:Landroid/view/View;
    :cond_2
    iget-object v4, p0, Lcom/htc/music/widget/SharedAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f03000b

    invoke-static {v4, v6}, Lcom/htc/res/HtcResources;->inflateLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v3

    .restart local v3       #view:Landroid/view/View;
    goto :goto_0

    .line 200
    .end local v3           #view:Landroid/view/View;
    :cond_3
    move-object v3, p2

    .restart local v3       #view:Landroid/view/View;
    goto :goto_0

    .restart local v0       #activity:Landroid/content/pm/ResolveInfo;
    .restart local v1       #icon:Lcom/htc/widget/HtcListItemColorIcon;
    .restart local v2       #text:Lcom/htc/widget/HtcListItem2LineText;
    :cond_4
    move v4, v5

    .line 217
    goto :goto_1
.end method

.method public intentForPosition(I)Landroid/content/Intent;
    .locals 7
    .parameter "position"

    .prologue
    const/4 v2, 0x0

    .line 225
    iget-object v4, p0, Lcom/htc/music/widget/SharedAdapter;->mDataModel:Lcom/htc/widget/HtcShareViaMultiAdapter;

    if-nez v4, :cond_1

    .line 267
    :cond_0
    :goto_0
    return-object v2

    .line 229
    :cond_1
    iget-object v4, p0, Lcom/htc/music/widget/SharedAdapter;->mResInfo:Ljava/util/List;

    if-nez v4, :cond_2

    .line 230
    invoke-virtual {p0}, Lcom/htc/music/widget/SharedAdapter;->generateResoleInfo()V

    .line 233
    :cond_2
    iget-object v4, p0, Lcom/htc/music/widget/SharedAdapter;->mResInfo:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 238
    if-ltz p1, :cond_0

    iget-object v4, p0, Lcom/htc/music/widget/SharedAdapter;->mResInfo:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, p1, :cond_0

    .line 241
    iget-object v4, p0, Lcom/htc/music/widget/SharedAdapter;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    .line 243
    iget-object v4, p0, Lcom/htc/music/widget/SharedAdapter;->mResInfo:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/widget/SharedAdapter$ActivityResolveInfo;

    .line 244
    .local v1, info:Lcom/htc/music/widget/SharedAdapter$ActivityResolveInfo;
    iget-object v2, v1, Lcom/htc/music/widget/SharedAdapter$ActivityResolveInfo;->intent:Landroid/content/Intent;

    .line 245
    .local v2, intent:Landroid/content/Intent;
    iget-object v4, v1, Lcom/htc/music/widget/SharedAdapter$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    iget-object v4, p0, Lcom/htc/music/widget/SharedAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 247
    .local v3, pm:Landroid/content/pm/PackageManager;
    iget-object v4, v1, Lcom/htc/music/widget/SharedAdapter$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v4, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, apName:Ljava/lang/String;
    if-nez v0, :cond_3

    iget-object v4, v1, Lcom/htc/music/widget/SharedAdapter$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 249
    :cond_3
    const-string v4, "[ShareAdapter]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "package ap name:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v4, "gmail"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 251
    const-string v4, "AddFile"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 262
    :cond_4
    const/high16 v4, 0x700

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public removeSpecialPackage(Ljava/lang/String;)V
    .locals 4
    .parameter "packageName"

    .prologue
    .line 744
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 762
    :cond_0
    return-void

    .line 747
    :cond_1
    iget-object v3, p0, Lcom/htc/music/widget/SharedAdapter;->mResInfo:Ljava/util/List;

    if-nez v3, :cond_2

    .line 748
    invoke-virtual {p0}, Lcom/htc/music/widget/SharedAdapter;->generateResoleInfo()V

    .line 751
    :cond_2
    iget-object v3, p0, Lcom/htc/music/widget/SharedAdapter;->mResInfo:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 752
    const/4 v0, 0x0

    .line 753
    .local v0, index:I
    iget-object v3, p0, Lcom/htc/music/widget/SharedAdapter;->mResInfo:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 754
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/music/widget/SharedAdapter$ActivityResolveInfo;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 755
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/widget/SharedAdapter$ActivityResolveInfo;

    .line 756
    .local v2, resolveInfo:Lcom/htc/music/widget/SharedAdapter$ActivityResolveInfo;
    iget-object v3, v2, Lcom/htc/music/widget/SharedAdapter$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 757
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 759
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 760
    goto :goto_0
.end method

.method public updateRecord(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 681
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/htc/music/widget/SharedAdapter;->mResInfo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, p1, :cond_1

    .line 685
    :cond_0
    :goto_0
    return-void

    .line 682
    :cond_1
    iget-object v1, p0, Lcom/htc/music/widget/SharedAdapter;->mResInfo:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/widget/SharedAdapter$ActivityResolveInfo;

    .line 683
    .local v0, info:Lcom/htc/music/widget/SharedAdapter$ActivityResolveInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/htc/music/widget/SharedAdapter$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/htc/music/widget/SharedAdapter$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_0

    .line 684
    iget-object v1, p0, Lcom/htc/music/widget/SharedAdapter;->mDataModel:Lcom/htc/widget/HtcShareViaMultiAdapter;

    iget-object v2, v0, Lcom/htc/music/widget/SharedAdapter$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcShareViaMultiAdapter;->UpdateRecord(Landroid/content/pm/ActivityInfo;)Z

    goto :goto_0
.end method
