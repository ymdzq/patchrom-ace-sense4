.class Lcom/htc/music/online/MusicArrayList$MusicItem;
.super Ljava/lang/Object;
.source "MusicArrayList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/online/MusicArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MusicItem"
.end annotation


# instance fields
.field private isOnline:Z

.field final synthetic this$0:Lcom/htc/music/online/MusicArrayList;

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/htc/music/online/MusicArrayList;)V
    .locals 1
    .parameter

    .prologue
    .line 12
    .local p0, this:Lcom/htc/music/online/MusicArrayList$MusicItem;,"Lcom/htc/music/online/MusicArrayList<TT;>.MusicItem;"
    iput-object p1, p0, Lcom/htc/music/online/MusicArrayList$MusicItem;->this$0:Lcom/htc/music/online/MusicArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/online/MusicArrayList$MusicItem;->isOnline:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/music/online/MusicArrayList;Lcom/htc/music/online/MusicArrayList$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    .local p0, this:Lcom/htc/music/online/MusicArrayList$MusicItem;,"Lcom/htc/music/online/MusicArrayList<TT;>.MusicItem;"
    invoke-direct {p0, p1}, Lcom/htc/music/online/MusicArrayList$MusicItem;-><init>(Lcom/htc/music/online/MusicArrayList;)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/music/online/MusicArrayList$MusicItem;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/htc/music/online/MusicArrayList$MusicItem;->value:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/music/online/MusicArrayList$MusicItem;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    iput-object p1, p0, Lcom/htc/music/online/MusicArrayList$MusicItem;->value:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/music/online/MusicArrayList$MusicItem;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-boolean v0, p0, Lcom/htc/music/online/MusicArrayList$MusicItem;->isOnline:Z

    return v0
.end method

.method static synthetic access$202(Lcom/htc/music/online/MusicArrayList$MusicItem;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    iput-boolean p1, p0, Lcom/htc/music/online/MusicArrayList$MusicItem;->isOnline:Z

    return p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 17
    .local p0, this:Lcom/htc/music/online/MusicArrayList$MusicItem;,"Lcom/htc/music/online/MusicArrayList<TT;>.MusicItem;"
    instance-of v1, p1, Lcom/htc/music/online/MusicArrayList$MusicItem;

    if-nez v1, :cond_0

    .line 18
    const/4 v1, 0x0

    .line 24
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 20
    check-cast v0, Lcom/htc/music/online/MusicArrayList$MusicItem;

    .line 21
    .local v0, item:Lcom/htc/music/online/MusicArrayList$MusicItem;,"Lcom/htc/music/online/MusicArrayList<TT;>.MusicItem;"
    iget-object v1, v0, Lcom/htc/music/online/MusicArrayList$MusicItem;->value:Ljava/lang/Object;

    iget-object v2, p0, Lcom/htc/music/online/MusicArrayList$MusicItem;->value:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    iget-boolean v1, v0, Lcom/htc/music/online/MusicArrayList$MusicItem;->isOnline:Z

    iget-boolean v2, p0, Lcom/htc/music/online/MusicArrayList$MusicItem;->isOnline:Z

    if-ne v1, v2, :cond_1

    .line 22
    const/4 v1, 0x1

    goto :goto_0

    .line 24
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method
