.class Lcom/htc/music/util/MusicUtils$ServiceOwner;
.super Ljava/lang/Object;
.source "MusicUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/util/MusicUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceOwner"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .parameter "id"
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 321
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 318
    iput-object v0, p0, Lcom/htc/music/util/MusicUtils$ServiceOwner;->mId:Ljava/lang/String;

    .line 319
    iput-object v0, p0, Lcom/htc/music/util/MusicUtils$ServiceOwner;->mContext:Landroid/content/Context;

    .line 322
    iput-object p1, p0, Lcom/htc/music/util/MusicUtils$ServiceOwner;->mId:Ljava/lang/String;

    .line 323
    iput-object p2, p0, Lcom/htc/music/util/MusicUtils$ServiceOwner;->mContext:Landroid/content/Context;

    .line 324
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "obj"

    .prologue
    .line 328
    instance-of v0, p1, Lcom/htc/music/util/MusicUtils$ServiceOwner;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/htc/music/util/MusicUtils$ServiceOwner;->mId:Ljava/lang/String;

    check-cast p1, Lcom/htc/music/util/MusicUtils$ServiceOwner;

    .end local p1
    iget-object v1, p1, Lcom/htc/music/util/MusicUtils$ServiceOwner;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    const/4 v0, 0x1

    .line 334
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/htc/music/util/MusicUtils$ServiceOwner;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method