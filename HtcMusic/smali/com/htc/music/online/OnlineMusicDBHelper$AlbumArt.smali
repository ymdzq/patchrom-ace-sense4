.class public final Lcom/htc/music/online/OnlineMusicDBHelper$AlbumArt;
.super Ljava/lang/Object;
.source "OnlineMusicDBHelper.java"

# interfaces
.implements Lcom/htc/music/online/OnlineMusicDBHelper$OnlineAlbumColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/online/OnlineMusicDBHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AlbumArt"
.end annotation


# static fields
.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/albumarts"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "album_key"

.field public static final ENTRY_CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/albumart"

.field public static final ONLINEALBUM_TABLE_NAME_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 159
    const-string v0, "content://com.htc.music.onlinemusic/album"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/music/online/OnlineMusicDBHelper$AlbumArt;->ONLINEALBUM_TABLE_NAME_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 154
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
