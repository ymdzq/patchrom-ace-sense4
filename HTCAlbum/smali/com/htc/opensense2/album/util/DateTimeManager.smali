.class public Lcom/htc/opensense2/album/util/DateTimeManager;
.super Ljava/lang/Object;
.source "DateTimeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;,
        Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_STYLE;
    }
.end annotation


# static fields
.field private static EVENT_DATE_FORMATTER:Ljava/lang/String; = null

.field private static EVENT_DATE_STRING:Ljava/lang/String; = null

.field private static EVENT_MONTH_FORMATTER:Ljava/lang/String; = null

.field public static final LOG_TAG:Ljava/lang/String; = "DateTimeManager"

.field private static final TIME_EVENT_STYLE_DEFAULT_MY:Ljava/lang/String; = "MMM yyyy"

.field private static final TimeEventFormats:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "y/M"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "y M"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "yyyy/MM/d"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "yyyy MMM"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "M/d"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "M d"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "MM/d/yyyy"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "MMM yyyy"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "d/M"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "d M"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "d/MM/yyyy"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "MMM yyyy"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/opensense2/album/util/DateTimeManager;->TimeEventFormats:[Ljava/lang/String;

    sput-object v3, Lcom/htc/opensense2/album/util/DateTimeManager;->EVENT_DATE_FORMATTER:Ljava/lang/String;

    sput-object v3, Lcom/htc/opensense2/album/util/DateTimeManager;->EVENT_DATE_STRING:Ljava/lang/String;

    sput-object v3, Lcom/htc/opensense2/album/util/DateTimeManager;->EVENT_MONTH_FORMATTER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDateString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    new-instance v2, Ljava/sql/Timestamp;

    invoke-direct {v2, p1, p2}, Ljava/sql/Timestamp;-><init>(J)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "date_format"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getEventDateFormat(Landroid/content/Context;Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_STYLE;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "date_format"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense2/album/util/DateTimeManager;->EVENT_DATE_STRING:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v1, "DateTimeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][DateTimeManager][getEventDateFormat]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_STYLE;->DMY:Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_STYLE;

    if-ne v1, p1, :cond_1

    sget-object v1, Lcom/htc/opensense2/album/util/DateTimeManager;->TimeEventFormats:[Ljava/lang/String;

    sget-object v2, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;->YMD:Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;->ordinal()I

    move-result v2

    aget-object v0, v1, v2

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v1, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_STYLE;->MY:Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_STYLE;

    if-ne v1, p1, :cond_0

    const-string v0, "MMM yyyy"

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/htc/opensense2/album/util/DateTimeManager;->TimeEventFormats:[Ljava/lang/String;

    sget-object v2, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;->YMD_COMPARATOR1:Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/htc/opensense2/album/util/DateTimeManager;->TimeEventFormats:[Ljava/lang/String;

    sget-object v2, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;->YMD_COMPARATOR2:Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_3
    const-string v1, "DateTimeManager"

    const-string v2, "[HTCAlbum][DateTimeManager][getEventDateFormat]: YMD"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_STYLE;->DMY:Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_STYLE;

    if-ne v1, p1, :cond_4

    sget-object v1, Lcom/htc/opensense2/album/util/DateTimeManager;->TimeEventFormats:[Ljava/lang/String;

    sget-object v2, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;->YMD:Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;->ordinal()I

    move-result v2

    aget-object v0, v1, v2

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_STYLE;->MY:Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_STYLE;

    if-ne v1, p1, :cond_0

    sget-object v1, Lcom/htc/opensense2/album/util/DateTimeManager;->TimeEventFormats:[Ljava/lang/String;

    sget-object v2, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;->YM:Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;->ordinal()I

    move-result v2

    aget-object v0, v1, v2

    goto :goto_0

    :cond_5
    sget-object v1, Lcom/htc/opensense2/album/util/DateTimeManager;->TimeEventFormats:[Ljava/lang/String;

    sget-object v2, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;->MDY_COMPARATOR1:Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/htc/opensense2/album/util/DateTimeManager;->TimeEventFormats:[Ljava/lang/String;

    sget-object v2, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;->MDY_COMPARATOR2:Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_6
    const-string v1, "DateTimeManager"

    const-string v2, "[HTCAlbum][DateTimeManager][getEventDateFormat]: MDY"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_STYLE;->DMY:Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_STYLE;

    if-ne v1, p1, :cond_7

    sget-object v1, Lcom/htc/opensense2/album/util/DateTimeManager;->TimeEventFormats:[Ljava/lang/String;

    sget-object v2, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;->MDY:Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;->ordinal()I

    move-result v2

    aget-object v0, v1, v2

    goto/16 :goto_0

    :cond_7
    sget-object v1, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_STYLE;->MY:Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_STYLE;

    if-ne v1, p1, :cond_0

    sget-object v1, Lcom/htc/opensense2/album/util/DateTimeManager;->TimeEventFormats:[Ljava/lang/String;

    sget-object v2, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;->MY0:Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;->ordinal()I

    move-result v2

    aget-object v0, v1, v2

    goto/16 :goto_0

    :cond_8
    sget-object v1, Lcom/htc/opensense2/album/util/DateTimeManager;->TimeEventFormats:[Ljava/lang/String;

    sget-object v2, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;->DMY_COMPARATOR1:Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    sget-object v1, Lcom/htc/opensense2/album/util/DateTimeManager;->TimeEventFormats:[Ljava/lang/String;

    sget-object v2, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;->DMY_COMPARATOR2:Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_9
    const-string v1, "DateTimeManager"

    const-string v2, "[HTCAlbum][DateTimeManager][getEventDateFormat]: DMY"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_STYLE;->DMY:Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_STYLE;

    if-ne v1, p1, :cond_a

    sget-object v1, Lcom/htc/opensense2/album/util/DateTimeManager;->TimeEventFormats:[Ljava/lang/String;

    sget-object v2, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;->DMY:Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;->ordinal()I

    move-result v2

    aget-object v0, v1, v2

    goto/16 :goto_0

    :cond_a
    sget-object v1, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_STYLE;->MY:Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_STYLE;

    if-ne v1, p1, :cond_0

    sget-object v1, Lcom/htc/opensense2/album/util/DateTimeManager;->TimeEventFormats:[Ljava/lang/String;

    sget-object v2, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;->MY1:Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;->ordinal()I

    move-result v2

    aget-object v0, v1, v2

    goto/16 :goto_0

    :cond_b
    const-string v1, "DateTimeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][DateTimeManager][getEventDateFormat]: default: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_STYLE;->DMY:Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_STYLE;

    if-ne v1, p1, :cond_c

    sget-object v1, Lcom/htc/opensense2/album/util/DateTimeManager;->TimeEventFormats:[Ljava/lang/String;

    sget-object v2, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;->YMD:Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_FORMATS;->ordinal()I

    move-result v2

    aget-object v0, v1, v2

    goto/16 :goto_0

    :cond_c
    sget-object v1, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_STYLE;->MY:Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_STYLE;

    if-ne v1, p1, :cond_0

    const-string v0, "MMM yyyy"

    goto/16 :goto_0
.end method

.method public static getEventDateString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    new-instance v1, Ljava/sql/Timestamp;

    invoke-direct {v1, p1, p2}, Ljava/sql/Timestamp;-><init>(J)V

    sget-object v2, Lcom/htc/opensense2/album/util/DateTimeManager;->EVENT_DATE_FORMATTER:Ljava/lang/String;

    if-nez v2, :cond_0

    sget-object v2, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_STYLE;->DMY:Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_STYLE;

    invoke-static {p0, v2}, Lcom/htc/opensense2/album/util/DateTimeManager;->getEventDateFormat(Landroid/content/Context;Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_STYLE;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/htc/opensense2/album/util/DateTimeManager;->EVENT_DATE_FORMATTER:Ljava/lang/String;

    :cond_0
    sget-object v2, Lcom/htc/opensense2/album/util/DateTimeManager;->EVENT_DATE_FORMATTER:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEventsMonthString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    new-instance v1, Ljava/sql/Timestamp;

    invoke-direct {v1, p1, p2}, Ljava/sql/Timestamp;-><init>(J)V

    sget-object v2, Lcom/htc/opensense2/album/util/DateTimeManager;->EVENT_MONTH_FORMATTER:Ljava/lang/String;

    if-nez v2, :cond_0

    sget-object v2, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_STYLE;->MY:Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_STYLE;

    invoke-static {p0, v2}, Lcom/htc/opensense2/album/util/DateTimeManager;->getEventDateFormat(Landroid/content/Context;Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_STYLE;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/htc/opensense2/album/util/DateTimeManager;->EVENT_MONTH_FORMATTER:Ljava/lang/String;

    :cond_0
    sget-object v2, Lcom/htc/opensense2/album/util/DateTimeManager;->EVENT_MONTH_FORMATTER:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMonthString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/sql/Timestamp;

    invoke-direct {v0, p1, p2}, Ljava/sql/Timestamp;-><init>(J)V

    const-string v1, "MMM yyyy"

    invoke-virtual {v0}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static isSystemDateChanged(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    sget-object v3, Lcom/htc/opensense2/album/util/DateTimeManager;->EVENT_DATE_STRING:Ljava/lang/String;

    if-nez v3, :cond_1

    :cond_0
    const-string v3, "DateTimeManager"

    const-string v4, "[HTCAlbum][DateTimeManager][isSystemDateChanged]: skip... "

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "date_format"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/htc/opensense2/album/util/DateTimeManager;->EVENT_DATE_STRING:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v0, 0x1

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method public static resetEventDateFormater()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/htc/opensense2/album/util/DateTimeManager;->EVENT_DATE_FORMATTER:Ljava/lang/String;

    sput-object v0, Lcom/htc/opensense2/album/util/DateTimeManager;->EVENT_DATE_STRING:Ljava/lang/String;

    return-void
.end method

.method public static resetEventMonthFormater()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/htc/opensense2/album/util/DateTimeManager;->EVENT_MONTH_FORMATTER:Ljava/lang/String;

    return-void
.end method
