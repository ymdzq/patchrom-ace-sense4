.class Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "CollectionSwitcherAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field text:Lcom/htc/widget/HtcListItem2LineText;

.field final synthetic this$0:Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter;


# direct methods
.method private constructor <init>(Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter;)V
    .locals 1
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter$ViewHolder;->this$0:Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter;Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter$ViewHolder;-><init>(Lcom/htc/music/online/sinamusic/CollectionSwitcherAdapter;)V

    return-void
.end method
