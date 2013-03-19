.class public Lcom/htc/util/calendar/DeleteEventHelper;
.super Ljava/lang/Object;
.source "DeleteEventHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/util/calendar/DeleteEventHelper$QueryHandler;,
        Lcom/htc/util/calendar/DeleteEventHelper$EventInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final EVENT_PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "DeleteEventHelper"


# instance fields
.field private mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCursor:Landroid/database/Cursor;

.field private mDelItems:[Ljava/lang/CharSequence;

.field private mDeleteNormalDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mEndMillis:J

.field private mEventIndexId:I

.field private mEventIndexRrule:I

.field private mExitWhenDone:Z

.field private mParent:Landroid/app/Activity;

.field private mQueryHandler:Lcom/htc/util/calendar/DeleteEventHelper$QueryHandler;

.field private mStartMillis:J

.field private mSyncId:Ljava/lang/String;

.field private mWhichAccount:Ljava/lang/String;

.field private mWhichAccountType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 111
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "allDay"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "calendar_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "rrule"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "dtstart"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "_sync_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "eventTimezone"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "parentID"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "exdate"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "dtend"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "iCalGUID"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/util/calendar/DeleteEventHelper;->EVENT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 2
    .parameter "parent"
    .parameter "exitWhenDone"

    .prologue
    const/4 v1, 0x0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    invoke-static {}, Landroid/provider/HtcExCalendar;->getGoogleAccountType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mWhichAccountType:Ljava/lang/String;

    .line 106
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mWhichAccount:Ljava/lang/String;

    .line 109
    iput-object v1, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mQueryHandler:Lcom/htc/util/calendar/DeleteEventHelper$QueryHandler;

    .line 176
    new-instance v0, Lcom/htc/util/calendar/DeleteEventHelper$1;

    invoke-direct {v0, p0}, Lcom/htc/util/calendar/DeleteEventHelper$1;-><init>(Lcom/htc/util/calendar/DeleteEventHelper;)V

    iput-object v0, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mDeleteNormalDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 306
    iput-object v1, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mDelItems:[Ljava/lang/CharSequence;

    .line 135
    iput-object p1, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mParent:Landroid/app/Activity;

    .line 136
    iget-object v0, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mParent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mContentResolver:Landroid/content/ContentResolver;

    .line 137
    iput-boolean p2, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mExitWhenDone:Z

    .line 139
    new-instance v0, Lcom/htc/util/calendar/DeleteEventHelper$QueryHandler;

    iget-object v1, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v1}, Lcom/htc/util/calendar/DeleteEventHelper$QueryHandler;-><init>(Lcom/htc/util/calendar/DeleteEventHelper;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mQueryHandler:Lcom/htc/util/calendar/DeleteEventHelper$QueryHandler;

    .line 140
    return-void
.end method

.method private DeleteNormalEvent(ZZ)V
    .locals 7
    .parameter "synchExchange"
    .parameter "updateNotification"

    .prologue
    .line 147
    iget-object v4, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->isFirst()Z

    move-result v4

    if-nez v4, :cond_0

    .line 148
    iget-object v4, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 149
    const-string v4, "DeleteEventHelper"

    const-string v5, "mCursor move to first"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mEventIndexId:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v1, v4

    .line 153
    .local v1, id:J
    sget-object v4, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 154
    .local v3, uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .end local v1           #id:J
    .end local v3           #uri:Landroid/net/Uri;
    :goto_0
    return-void

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "DeleteEventHelper"

    const-string v5, "Delete event fail"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/util/calendar/DeleteEventHelper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mExitWhenDone:Z

    return v0
.end method

.method static synthetic access$100(Lcom/htc/util/calendar/DeleteEventHelper;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mParent:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/util/calendar/DeleteEventHelper;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/htc/util/calendar/DeleteEventHelper;->DeleteNormalEvent(ZZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/util/calendar/DeleteEventHelper;JJLandroid/database/Cursor;IZZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 77
    invoke-direct/range {p0 .. p9}, Lcom/htc/util/calendar/DeleteEventHelper;->doDelete(JJLandroid/database/Cursor;IZZZ)V

    return-void
.end method

.method private cacheHtcAlertDialg(Lcom/htc/widget/HtcAlertDialog;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 939
    iget-object v0, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 940
    iget-object v0, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 941
    iget-object v0, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 944
    :cond_0
    iput-object p1, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 945
    return-void
.end method

.method private deleteEventById(J)V
    .locals 3
    .parameter "event_id"

    .prologue
    const/4 v2, 0x0

    .line 659
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 660
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, v0, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 661
    return-void
.end method

.method private deleteRepeatingEvent(I)V
    .locals 47
    .parameter "which"

    .prologue
    .line 664
    const-string v40, "DeleteEventHelper"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "deleteRepeatingEvent -which: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v40, v0

    if-eqz v40, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Landroid/database/Cursor;->isFirst()Z

    move-result v40

    if-nez v40, :cond_0

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Landroid/database/Cursor;->moveToFirst()Z

    .line 667
    const-string v40, "DeleteEventHelper"

    const-string v41, "mCursor move to first"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v40, v0

    const-string v41, "dtstart"

    invoke-interface/range {v40 .. v41}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 670
    .local v23, indexDtstart:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v40, v0

    const-string v41, "allDay"

    invoke-interface/range {v40 .. v41}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 671
    .local v20, indexAllDay:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v40, v0

    const-string/jumbo v41, "title"

    invoke-interface/range {v40 .. v41}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 672
    .local v26, indexTitle:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v40, v0

    const-string v41, "eventTimezone"

    invoke-interface/range {v40 .. v41}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    .line 673
    .local v25, indexTimezone:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v40, v0

    const-string v41, "calendar_id"

    invoke-interface/range {v40 .. v41}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 674
    .local v21, indexCalendarId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v40, v0

    const-string v41, "exdate"

    invoke-interface/range {v40 .. v41}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    .line 675
    .local v24, indexExDate:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v40, v0

    const-string v41, "dtend"

    invoke-interface/range {v40 .. v41}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 677
    .local v22, indexDtend:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mEventIndexRrule:I

    move/from16 v41, v0

    invoke-interface/range {v40 .. v41}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 678
    .local v33, rRule:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v40

    if-eqz v40, :cond_4

    const/4 v7, 0x1

    .line 679
    .local v7, allDay:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 680
    .local v14, dtstart:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 681
    .local v12, dtend:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mEventIndexId:I

    move/from16 v41, v0

    invoke-interface/range {v40 .. v41}, Landroid/database/Cursor;->getInt(I)I

    move-result v40

    move/from16 v0, v40

    int-to-long v0, v0

    move-wide/from16 v18, v0

    .line 683
    .local v18, id:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v40, v0

    const-string v41, "parentID"

    invoke-interface/range {v40 .. v41}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 684
    .local v16, eventIndexParentId:I
    const-string v40, "DeleteEventHelper"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "eventIndexParentId:"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    const-wide/16 v30, -0x1

    .line 686
    .local v30, parentID:J
    const/16 v40, -0x1

    move/from16 v0, v16

    move/from16 v1, v40

    if-eq v0, v1, :cond_1

    .line 687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v40

    if-nez v40, :cond_1

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    .line 691
    :cond_1
    const-string v40, "DeleteEventHelper"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "parentID:"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    packed-switch p1, :pswitch_data_0

    .line 893
    .end local v30           #parentID:J
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mExitWhenDone:Z

    move/from16 v40, v0

    if-eqz v40, :cond_3

    .line 894
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mParent:Landroid/app/Activity;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/app/Activity;->finish()V

    .line 896
    :cond_3
    return-void

    .line 678
    .end local v7           #allDay:Z
    .end local v12           #dtend:J
    .end local v14           #dtstart:J
    .end local v16           #eventIndexParentId:I
    .end local v18           #id:J
    :cond_4
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 714
    .restart local v7       #allDay:Z
    .restart local v12       #dtend:J
    .restart local v14       #dtstart:J
    .restart local v16       #eventIndexParentId:I
    .restart local v18       #id:J
    .restart local v30       #parentID:J
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mWhichAccountType:Ljava/lang/String;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lcom/htc/util/calendar/tools/UriTools;->isGoogleEvent(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_9

    .line 719
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mStartMillis:J

    move-wide/from16 v40, v0

    cmp-long v40, v14, v40

    if-nez v40, :cond_5

    .line 725
    :cond_5
    new-instance v39, Landroid/content/ContentValues;

    invoke-direct/range {v39 .. v39}, Landroid/content/ContentValues;-><init>()V

    .line 729
    .local v39, values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v37

    .line 730
    .local v37, title:Ljava/lang/String;
    const-string/jumbo v40, "title"

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    .line 734
    .local v36, timezone:Ljava/lang/String;
    if-eqz v7, :cond_6

    .line 735
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v36

    .line 737
    new-instance v35, Landroid/text/format/Time;

    invoke-direct/range {v35 .. v36}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 738
    .local v35, t:Landroid/text/format/Time;
    invoke-virtual/range {v35 .. v35}, Landroid/text/format/Time;->setToNow()V

    .line 739
    const/16 v40, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 740
    move-object/from16 v0, v35

    iget-wide v0, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v40, v0

    const-wide/16 v42, 0x3e8

    mul-long v5, v40, v42

    .line 741
    .local v5, adjustOffset:J
    const-string v40, "DeleteEventHelper"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "deleteRepeatingEvent allDay event :: timezone:"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, " adjustOffset: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mStartMillis:J

    move-wide/from16 v40, v0

    add-long v40, v40, v5

    move-wide/from16 v0, v40

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/util/calendar/DeleteEventHelper;->mStartMillis:J

    .line 743
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mEndMillis:J

    move-wide/from16 v40, v0

    add-long v40, v40, v5

    move-wide/from16 v0, v40

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/util/calendar/DeleteEventHelper;->mEndMillis:J

    .line 745
    const-string v40, "DeleteEventHelper"

    sget-object v41, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v42, "mStartMillis=%d mEndMillis=%d"

    const/16 v43, 0x2

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mStartMillis:J

    move-wide/from16 v45, v0

    invoke-static/range {v45 .. v46}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v45

    aput-object v45, v43, v44

    const/16 v44, 0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mEndMillis:J

    move-wide/from16 v45, v0

    invoke-static/range {v45 .. v46}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v45

    aput-object v45, v43, v44

    invoke-static/range {v41 .. v43}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    const-string v40, "originalAllDay"

    const/16 v41, 0x1

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 749
    .end local v5           #adjustOffset:J
    .end local v35           #t:Landroid/text/format/Time;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 750
    .local v8, calendarId:I
    const-string v40, "eventTimezone"

    if-eqz v7, :cond_7

    const-string v36, "UTC"

    .end local v36           #timezone:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, v39

    move-object/from16 v1, v40

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    const-string v41, "allDay"

    if-eqz v7, :cond_8

    const/16 v40, 0x1

    :goto_2
    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    move-object/from16 v0, v39

    move-object/from16 v1, v41

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 752
    const-string v40, "calendar_id"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 753
    const-string v40, "dtstart"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mStartMillis:J

    move-wide/from16 v41, v0

    invoke-static/range {v41 .. v42}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 754
    const-string v40, "dtend"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mEndMillis:J

    move-wide/from16 v41, v0

    invoke-static/range {v41 .. v42}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 755
    const-string v40, "original_sync_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mSyncId:Ljava/lang/String;

    move-object/from16 v41, v0

    invoke-virtual/range {v39 .. v41}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    const-string v40, "originalInstanceTime"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mStartMillis:J

    move-wide/from16 v41, v0

    invoke-static/range {v41 .. v42}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 757
    const-string v40, "eventStatus"

    const/16 v41, 0x2

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v40, v0

    sget-object v41, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_1

    .line 751
    :cond_8
    const/16 v40, 0x0

    goto :goto_2

    .line 760
    .end local v8           #calendarId:I
    .end local v37           #title:Ljava/lang/String;
    .end local v39           #values:Landroid/content/ContentValues;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mWhichAccountType:Ljava/lang/String;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lcom/htc/util/calendar/tools/UriTools;->isHTCExchangeEvent(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_2

    .line 761
    new-instance v39, Landroid/content/ContentValues;

    invoke-direct/range {v39 .. v39}, Landroid/content/ContentValues;-><init>()V

    .line 762
    .restart local v39       #values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 764
    .local v29, old_exDate:Ljava/lang/String;
    new-instance v32, Landroid/text/format/Time;

    invoke-direct/range {v32 .. v32}, Landroid/text/format/Time;-><init>()V

    .line 765
    .local v32, parentTime:Landroid/text/format/Time;
    move-object/from16 v0, v32

    invoke-virtual {v0, v14, v15}, Landroid/text/format/Time;->set(J)V

    .line 766
    const/16 v40, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 767
    const-string v40, "UTC"

    move-object/from16 v0, v32

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 769
    const-string v40, "DeleteEventHelper"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "allDay: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    const-string v40, "DeleteEventHelper"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "old_exDate: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    new-instance v9, Landroid/text/format/Time;

    invoke-direct {v9}, Landroid/text/format/Time;-><init>()V

    .line 773
    .local v9, childTime:Landroid/text/format/Time;
    if-eqz v7, :cond_a

    .line 774
    new-instance v27, Landroid/text/format/Time;

    invoke-direct/range {v27 .. v27}, Landroid/text/format/Time;-><init>()V

    .line 775
    .local v27, localTime:Landroid/text/format/Time;
    invoke-virtual/range {v27 .. v27}, Landroid/text/format/Time;->setToNow()V

    .line 777
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mStartMillis:J

    move-wide/from16 v40, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v42, v0

    const-wide/16 v44, 0x3e8

    mul-long v42, v42, v44

    add-long v40, v40, v42

    move-wide/from16 v0, v40

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/util/calendar/DeleteEventHelper;->mStartMillis:J

    .line 778
    const-string v40, "DeleteEventHelper"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "all day offset: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v42, v0

    const-wide/16 v44, 0x3e8

    mul-long v42, v42, v44

    invoke-virtual/range {v41 .. v43}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    .end local v27           #localTime:Landroid/text/format/Time;
    :cond_a
    const-string v40, "DeleteEventHelper"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "mStartMillis: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mStartMillis:J

    move-wide/from16 v42, v0

    invoke-virtual/range {v41 .. v43}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mStartMillis:J

    move-wide/from16 v40, v0

    move-wide/from16 v0, v40

    invoke-virtual {v9, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 782
    const/16 v40, 0x0

    move/from16 v0, v40

    invoke-virtual {v9, v0}, Landroid/text/format/Time;->normalize(Z)J

    .line 783
    const-string v40, "UTC"

    move-object/from16 v0, v40

    invoke-virtual {v9, v0}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 784
    move-object/from16 v0, v32

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 v40, v0

    move/from16 v0, v40

    iput v0, v9, Landroid/text/format/Time;->hour:I

    .line 785
    move-object/from16 v0, v32

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move/from16 v40, v0

    move/from16 v0, v40

    iput v0, v9, Landroid/text/format/Time;->minute:I

    .line 786
    move-object/from16 v0, v32

    iget v0, v0, Landroid/text/format/Time;->second:I

    move/from16 v40, v0

    move/from16 v0, v40

    iput v0, v9, Landroid/text/format/Time;->second:I

    .line 788
    invoke-virtual {v9}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v28

    .line 789
    .local v28, newOneExDate:Ljava/lang/String;
    const-string v40, "DeleteEventHelper"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "newOneExDate: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    const-wide/16 v40, -0x1

    cmp-long v40, v30, v40

    if-eqz v40, :cond_b

    .line 792
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/htc/util/calendar/DeleteEventHelper;->deleteEventById(J)V

    .line 795
    sget-object v40, Landroid/provider/HtcExCalendar;->EAS_TRACKING_URI:Landroid/net/Uri;

    move-object/from16 v0, v40

    move-wide/from16 v1, v30

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v38

    .line 796
    .local v38, uri:Landroid/net/Uri;
    const-string v40, "_modify"

    const/16 v41, 0x1

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    move-object/from16 v3, v41

    move-object/from16 v4, v42

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1

    .line 800
    .end local v38           #uri:Landroid/net/Uri;
    :cond_b
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v40

    if-eqz v40, :cond_c

    .line 801
    move-object/from16 v29, v28

    .line 806
    :goto_3
    const-string v40, "dtstart"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 807
    const-string v40, "dtend"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 808
    const-string v40, "rrule"

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    const-string v40, "exdate"

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    sget-object v40, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const-wide/16 v41, -0x1

    cmp-long v41, v30, v41

    if-eqz v41, :cond_d

    .end local v30           #parentID:J
    :goto_4
    move-object/from16 v0, v40

    move-wide/from16 v1, v30

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v38

    .line 811
    .restart local v38       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    move-object/from16 v3, v41

    move-object/from16 v4, v42

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1

    .line 803
    .end local v38           #uri:Landroid/net/Uri;
    .restart local v30       #parentID:J
    :cond_c
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v40

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ","

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    goto :goto_3

    :cond_d
    move-wide/from16 v30, v18

    .line 810
    goto :goto_4

    .line 821
    .end local v9           #childTime:Landroid/text/format/Time;
    .end local v28           #newOneExDate:Ljava/lang/String;
    .end local v29           #old_exDate:Ljava/lang/String;
    .end local v32           #parentTime:Landroid/text/format/Time;
    .end local v39           #values:Landroid/content/ContentValues;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mWhichAccountType:Ljava/lang/String;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lcom/htc/util/calendar/tools/UriTools;->isHTCExchangeEvent(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_f

    .line 822
    const-wide/16 v40, -0x1

    cmp-long v40, v30, v40

    if-eqz v40, :cond_e

    .end local v30           #parentID:J
    :goto_5
    const/16 v40, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    move/from16 v3, v40

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/util/calendar/DeleteEventHelper;->deleteExchangeEvent(JZ)V

    goto/16 :goto_1

    .restart local v30       #parentID:J
    :cond_e
    move-wide/from16 v30, v18

    goto :goto_5

    .line 824
    :cond_f
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/htc/util/calendar/DeleteEventHelper;->deleteEventById(J)V

    goto/16 :goto_1

    .line 835
    :pswitch_2
    new-instance v11, Landroid/text/format/Time;

    invoke-direct {v11}, Landroid/text/format/Time;-><init>()V

    .line 836
    .local v11, dbStartTime:Landroid/text/format/Time;
    invoke-virtual {v11, v14, v15}, Landroid/text/format/Time;->set(J)V

    .line 838
    new-instance v34, Landroid/text/format/Time;

    invoke-direct/range {v34 .. v34}, Landroid/text/format/Time;-><init>()V

    .line 840
    .local v34, startTime:Landroid/text/format/Time;
    if-eqz v7, :cond_10

    .line 841
    new-instance v27, Landroid/text/format/Time;

    invoke-direct/range {v27 .. v27}, Landroid/text/format/Time;-><init>()V

    .line 842
    .restart local v27       #localTime:Landroid/text/format/Time;
    invoke-virtual/range {v27 .. v27}, Landroid/text/format/Time;->setToNow()V

    .line 843
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mStartMillis:J

    move-wide/from16 v40, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v42, v0

    const-wide/16 v44, 0x3e8

    mul-long v42, v42, v44

    add-long v40, v40, v42

    move-object/from16 v0, v34

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 851
    .end local v27           #localTime:Landroid/text/format/Time;
    :goto_6
    if-eqz v7, :cond_11

    .line 852
    iget v0, v11, Landroid/text/format/Time;->year:I

    move/from16 v40, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v41, v0

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_12

    iget v0, v11, Landroid/text/format/Time;->month:I

    move/from16 v40, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v41, v0

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_12

    iget v0, v11, Landroid/text/format/Time;->monthDay:I

    move/from16 v40, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v41, v0

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_12

    .line 855
    sget-object v40, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v40

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v38

    .line 856
    .restart local v38       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v38

    move-object/from16 v2, v41

    move-object/from16 v3, v42

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1

    .line 845
    .end local v38           #uri:Landroid/net/Uri;
    :cond_10
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mStartMillis:J

    move-wide/from16 v40, v0

    move-object/from16 v0, v34

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    goto :goto_6

    .line 862
    :cond_11
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mStartMillis:J

    move-wide/from16 v40, v0

    cmp-long v40, v14, v40

    if-nez v40, :cond_12

    .line 863
    sget-object v40, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v40

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v38

    .line 864
    .restart local v38       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v38

    move-object/from16 v2, v41

    move-object/from16 v3, v42

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1

    .line 870
    .end local v38           #uri:Landroid/net/Uri;
    :cond_12
    new-instance v17, Lcom/android/calendarcommon/EventRecurrence;

    invoke-direct/range {v17 .. v17}, Lcom/android/calendarcommon/EventRecurrence;-><init>()V

    .line 871
    .local v17, eventRecurrence:Lcom/android/calendarcommon/EventRecurrence;
    move-object/from16 v0, v17

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/calendarcommon/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 872
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    .line 873
    .local v10, date:Landroid/text/format/Time;
    if-eqz v7, :cond_13

    .line 874
    const-string v40, "UTC"

    move-object/from16 v0, v40

    iput-object v0, v10, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 876
    :cond_13
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mStartMillis:J

    move-wide/from16 v40, v0

    move-wide/from16 v0, v40

    invoke-virtual {v10, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 877
    iget v0, v10, Landroid/text/format/Time;->second:I

    move/from16 v40, v0

    add-int/lit8 v40, v40, -0x1

    move/from16 v0, v40

    iput v0, v10, Landroid/text/format/Time;->second:I

    .line 878
    const/16 v40, 0x0

    move/from16 v0, v40

    invoke-virtual {v10, v0}, Landroid/text/format/Time;->normalize(Z)J

    .line 882
    const-string v40, "UTC"

    move-object/from16 v0, v40

    invoke-virtual {v10, v0}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 883
    invoke-virtual {v10}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/calendarcommon/EventRecurrence;->until:Ljava/lang/String;

    .line 885
    new-instance v39, Landroid/content/ContentValues;

    invoke-direct/range {v39 .. v39}, Landroid/content/ContentValues;-><init>()V

    .line 886
    .restart local v39       #values:Landroid/content/ContentValues;
    const-string v40, "dtstart"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 887
    const-string v40, "rrule"

    invoke-virtual/range {v17 .. v17}, Lcom/android/calendarcommon/EventRecurrence;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    sget-object v40, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v40

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v38

    .line 889
    .restart local v38       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    move-object/from16 v3, v41

    move-object/from16 v4, v42

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1

    .line 711
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private doDelete(JJLandroid/database/Cursor;IZZZ)V
    .locals 15
    .parameter "begin"
    .parameter "end"
    .parameter "cursor"
    .parameter "which"
    .parameter "enableUI"
    .parameter "synchExchange"
    .parameter "updateNotification"

    .prologue
    .line 344
    if-nez p5, :cond_1

    .line 526
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    move-wide/from16 v0, p1

    iput-wide v0, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mStartMillis:J

    .line 347
    move-wide/from16 v0, p3

    iput-wide v0, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mEndMillis:J

    .line 348
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    .line 349
    iget-object v13, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    const-string v14, "_id"

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    iput v13, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mEventIndexId:I

    .line 350
    iget-object v13, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    const-string v14, "rrule"

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    iput v13, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mEventIndexRrule:I

    .line 353
    iget-object v13, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    const-string v14, "account_type"

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 354
    .local v12, sync_account_type_idx:I
    iget-object v13, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v13, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 355
    .local v11, sync_account_type:Ljava/lang/String;
    iput-object v11, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mWhichAccountType:Ljava/lang/String;

    .line 357
    iget-object v13, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    const-string v14, "account_name"

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 358
    .local v10, sync_account_idx:I
    iget-object v13, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v13, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 359
    .local v9, sync_account:Ljava/lang/String;
    iput-object v9, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mWhichAccount:Ljava/lang/String;

    .line 362
    iget-object v13, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    const-string v14, "_sync_id"

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 363
    .local v4, eventIndexSyncId:I
    iget-object v13, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mSyncId:Ljava/lang/String;

    .line 365
    iget-object v13, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    const-string v14, "parentID"

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 367
    .local v3, eventIndexParentId:I
    const-wide/16 v5, -0x1

    .line 368
    .local v5, parentID:J
    const/4 v13, -0x1

    if-eq v3, v13, :cond_2

    .line 369
    iget-object v13, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v13, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-nez v13, :cond_2

    .line 370
    iget-object v13, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 378
    :cond_2
    iget-object v13, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    iget v14, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mEventIndexRrule:I

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 379
    .local v8, rRule:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_3

    const-wide/16 v13, -0x1

    cmp-long v13, v5, v13

    if-eqz v13, :cond_3

    .line 380
    iget-object v13, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mParent:Landroid/app/Activity;

    invoke-static {v13, v5, v6}, Lcom/htc/util/calendar/DeleteEventHelper;->getEventRRule(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    .line 381
    .local v7, parentRrule:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 382
    move-object v8, v7

    .line 386
    .end local v7           #parentRrule:Ljava/lang/String;
    :cond_3
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 387
    if-nez p7, :cond_0

    .line 400
    move/from16 v0, p8

    move/from16 v1, p9

    invoke-direct {p0, v0, v1}, Lcom/htc/util/calendar/DeleteEventHelper;->DeleteNormalEvent(ZZ)V

    goto/16 :goto_0

    .line 417
    :cond_4
    if-nez p7, :cond_0

    .line 500
    :try_start_0
    move/from16 v0, p6

    invoke-direct {p0, v0}, Lcom/htc/util/calendar/DeleteEventHelper;->deleteRepeatingEvent(I)V

    .line 502
    if-eqz p8, :cond_0

    .line 504
    iget-object v13, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mWhichAccountType:Ljava/lang/String;

    invoke-static {v13}, Lcom/htc/util/calendar/tools/UriTools;->isHTCExchangeEvent(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    if-eqz v13, :cond_0

    goto/16 :goto_0

    .line 520
    :catch_0
    move-exception v2

    .line 521
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private static getEventRRule(Landroid/content/Context;J)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "event_id"

    .prologue
    const/4 v4, 0x0

    .line 311
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "rrule"

    aput-object v3, v2, v1

    .line 314
    .local v2, PROJECT:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 316
    .local v6, INDEX_EVENT_RRULE:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 317
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_ID="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 321
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 322
    .local v8, nCount:I
    const-string v9, ""

    .line 323
    .local v9, rrule:Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 324
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 325
    if-eqz v8, :cond_0

    .line 326
    const/4 v1, -0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 327
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 328
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 331
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 332
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 334
    :cond_1
    const/4 v7, 0x0

    .line 336
    :cond_2
    return-object v9
.end method

.method private postDelayedSyncEASCalendar()V
    .locals 4

    .prologue
    .line 230
    const-string v0, "DeleteEventHelper"

    const-string v1, "post delay 5 seconds"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v0, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mWhichAccountType:Ljava/lang/String;

    invoke-static {v0}, Lcom/htc/util/calendar/tools/UriTools;->isHTCExchangeEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mParent:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/htc/util/calendar/DeleteEventHelper$2;

    invoke-direct {v1, p0}, Lcom/htc/util/calendar/DeleteEventHelper$2;-><init>(Lcom/htc/util/calendar/DeleteEventHelper;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 243
    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 948
    iget-object v0, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 949
    iget-object v0, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 951
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 952
    return-void
.end method

.method public delete(JJJI)V
    .locals 12
    .parameter "begin"
    .parameter "end"
    .parameter "eventId"
    .parameter "which"

    .prologue
    .line 298
    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p5

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    .line 300
    .local v11, uri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mQueryHandler:Lcom/htc/util/calendar/DeleteEventHelper$QueryHandler;

    if-eqz v3, :cond_0

    .line 301
    new-instance v2, Lcom/htc/util/calendar/DeleteEventHelper$EventInfo;

    move-object v3, p0

    move-wide/from16 v4, p5

    move-wide v6, p1

    move-wide v8, p3

    move/from16 v10, p7

    invoke-direct/range {v2 .. v10}, Lcom/htc/util/calendar/DeleteEventHelper$EventInfo;-><init>(Lcom/htc/util/calendar/DeleteEventHelper;JJJI)V

    .line 302
    .local v2, ei:Lcom/htc/util/calendar/DeleteEventHelper$EventInfo;
    iget-object v3, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mQueryHandler:Lcom/htc/util/calendar/DeleteEventHelper$QueryHandler;

    const/4 v4, 0x0

    sget-object v7, Lcom/htc/util/calendar/DeleteEventHelper;->EVENT_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v2

    move-object v6, v11

    invoke-virtual/range {v3 .. v10}, Lcom/htc/util/calendar/DeleteEventHelper$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    .end local v2           #ei:Lcom/htc/util/calendar/DeleteEventHelper$EventInfo;
    :cond_0
    return-void
.end method

.method public delete(JJLandroid/database/Cursor;IZZZ)V
    .locals 13
    .parameter "begin"
    .parameter "end"
    .parameter "cursor"
    .parameter "which"
    .parameter "enableUI"
    .parameter "synchExchange"
    .parameter "updateNotification"

    .prologue
    .line 560
    if-nez p5, :cond_0

    .line 587
    :goto_0
    return-void

    .line 562
    :cond_0
    if-eqz p7, :cond_1

    .line 565
    new-instance v12, Landroid/os/Handler;

    iget-object v0, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mParent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v12, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/htc/util/calendar/DeleteEventHelper$3;

    move-object v1, p0

    move-wide v2, p1

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/htc/util/calendar/DeleteEventHelper$3;-><init>(Lcom/htc/util/calendar/DeleteEventHelper;JJLandroid/database/Cursor;IZZZ)V

    invoke-virtual {v12, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 580
    :cond_1
    :try_start_0
    invoke-direct/range {p0 .. p9}, Lcom/htc/util/calendar/DeleteEventHelper;->doDelete(JJLandroid/database/Cursor;IZZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 581
    :catch_0
    move-exception v11

    .line 582
    .local v11, e:Ljava/lang/Exception;
    const-string v0, "DeleteEventHelper"

    const-string v1, "delete exception!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public deleteExchangeEvent(JZ)V
    .locals 17
    .parameter "del_event_id"
    .parameter "onlyThis"

    .prologue
    .line 591
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gez v2, :cond_1

    .line 656
    :cond_0
    :goto_0
    return-void

    .line 595
    :cond_1
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "parentID"

    aput-object v3, v4, v2

    .line 599
    .local v4, PROJECTION:[Ljava/lang/String;
    const/4 v8, 0x0

    .line 601
    .local v8, INDEX_EVENT_ID:I
    const-string v5, ""

    .line 602
    .local v5, where:Ljava/lang/String;
    if-eqz p3, :cond_2

    .line 603
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_ID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 607
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 612
    .local v10, cursor:Landroid/database/Cursor;
    const/4 v15, 0x0

    .line 613
    .local v15, nCount:I
    const-wide/16 v13, 0x0

    .line 614
    .local v13, event_id:J
    if-eqz v10, :cond_0

    .line 615
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v15

    .line 617
    if-eqz v15, :cond_4

    .line 618
    const/4 v2, -0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 621
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 623
    .local v16, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 624
    invoke-interface {v10, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 625
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    .line 626
    .local v12, eventUri:Landroid/net/Uri;
    invoke-static {v12}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 627
    .local v9, b:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 605
    .end local v9           #b:Landroid/content/ContentProviderOperation$Builder;
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v12           #eventUri:Landroid/net/Uri;
    .end local v13           #event_id:J
    .end local v15           #nCount:I
    .end local v16           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_ID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " OR parentID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 633
    .restart local v10       #cursor:Landroid/database/Cursor;
    .restart local v13       #event_id:J
    .restart local v15       #nCount:I
    .restart local v16       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/util/calendar/DeleteEventHelper;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "com.android.calendar"

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 649
    .end local v16           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_4
    :goto_3
    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_5

    .line 650
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 652
    :cond_5
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 640
    .restart local v16       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :catch_0
    move-exception v11

    .line 641
    .local v11, e:Landroid/os/RemoteException;
    const-string v2, "DeleteEventHelper"

    const-string v3, "Ignoring unexpected remote exception"

    invoke-static {v2, v3, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 642
    .end local v11           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v11

    .line 643
    .local v11, e:Landroid/content/OperationApplicationException;
    const-string v2, "DeleteEventHelper"

    const-string v3, "Ignoring unexpected exception"

    invoke-static {v2, v3, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 955
    iget-object v0, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mQueryHandler:Lcom/htc/util/calendar/DeleteEventHelper$QueryHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/util/calendar/DeleteEventHelper$QueryHandler;->cancelOperation(I)V

    .line 956
    iput-object v2, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mQueryHandler:Lcom/htc/util/calendar/DeleteEventHelper$QueryHandler;

    .line 957
    iput-object v2, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 958
    iput-object v2, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mContentResolver:Landroid/content/ContentResolver;

    .line 959
    iput-object v2, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mParent:Landroid/app/Activity;

    .line 960
    return-void
.end method

.method public setExitWhenDone(Z)V
    .locals 0
    .parameter "exitWhenDone"

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/htc/util/calendar/DeleteEventHelper;->mExitWhenDone:Z

    .line 144
    return-void
.end method
