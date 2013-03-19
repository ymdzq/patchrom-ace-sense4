.class Lcom/htc/music/online/MusicGridViewPreparatorForCollection$DecodeBackgroundThread$DecodeItemHolder;
.super Ljava/lang/Object;
.source "MusicGridViewPreparatorForCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/online/MusicGridViewPreparatorForCollection$DecodeBackgroundThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecodeItemHolder"
.end annotation


# instance fields
.field public mCacheItem:Lcom/htc/sunny2/common/CacheItem;

.field public mDecodeItem:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;

.field public mIsDataPrared:Z

.field public mMediaData:Lcom/htc/sunny2/IMediaData;

.field final synthetic this$1:Lcom/htc/music/online/MusicGridViewPreparatorForCollection$DecodeBackgroundThread;


# direct methods
.method private constructor <init>(Lcom/htc/music/online/MusicGridViewPreparatorForCollection$DecodeBackgroundThread;)V
    .locals 0
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/htc/music/online/MusicGridViewPreparatorForCollection$DecodeBackgroundThread$DecodeItemHolder;->this$1:Lcom/htc/music/online/MusicGridViewPreparatorForCollection$DecodeBackgroundThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/music/online/MusicGridViewPreparatorForCollection$DecodeBackgroundThread;Lcom/htc/music/online/MusicGridViewPreparatorForCollection$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 232
    invoke-direct {p0, p1}, Lcom/htc/music/online/MusicGridViewPreparatorForCollection$DecodeBackgroundThread$DecodeItemHolder;-><init>(Lcom/htc/music/online/MusicGridViewPreparatorForCollection$DecodeBackgroundThread;)V

    return-void
.end method
