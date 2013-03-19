.class public Lcom/htc/opensense2/album/util/SeparatorTag;
.super Lcom/htc/album/ObjectWriter/SimpleObjectFormatter;
.source "SeparatorTag.java"

# interfaces
.implements Lcom/htc/widget/HtcListItemSeparable;
.implements Ljava/io/Serializable;


# static fields
.field public static final SEPARABLE_BOTTOM:Lcom/htc/opensense2/album/util/SeparatorTag; = null

.field public static final SEPARABLE_BREAKTOP:Lcom/htc/opensense2/album/util/SeparatorTag; = null

.field public static final SEPARABLE_DIVIDER:Lcom/htc/opensense2/album/util/SeparatorTag; = null

.field public static final SEPARABLE_EMPTY:Lcom/htc/opensense2/album/util/SeparatorTag; = null

.field public static final SEPARABLE_LOADER:Lcom/htc/opensense2/album/util/SeparatorTag; = null

.field public static final SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag; = null

.field public static final SEPARABLE_PLACEHOLDER:Lcom/htc/opensense2/album/util/SeparatorTag; = null

.field public static final SEPARABLE_SINGLE:Lcom/htc/opensense2/album/util/SeparatorTag; = null

.field public static final SEPARABLE_TOP:Lcom/htc/opensense2/album/util/SeparatorTag; = null

.field public static final TYPE_BOTTOM:Ljava/lang/String; = "SEPARABLE_BOTTOM"

.field public static final TYPE_BREAKTOP:Ljava/lang/String; = "SEPARABLE_BREAKTOP"

.field public static final TYPE_DIVIDER:Ljava/lang/String; = "SEPARABLE_DIVIDER"

.field public static final TYPE_EMPTY:Ljava/lang/String; = "SEPARABLE_EMPTY"

.field public static final TYPE_LOADER:Ljava/lang/String; = "SEPARABLE_LOADER"

.field public static final TYPE_MIDDLE:Ljava/lang/String; = "SEPARABLE_MIDDLE"

.field public static final TYPE_PLACEHOLDER:Ljava/lang/String; = "SEPARABLE_PLACEHOLDER"

.field public static final TYPE_SINGLE:Ljava/lang/String; = "SEPARABLE_SINGLE"

.field public static final TYPE_TOP:Ljava/lang/String; = "SEPARABLE_TOP"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mShouldDraw:Z

.field private mShouldSeparate:Z

.field private mTagType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v0, Lcom/htc/opensense2/album/util/SeparatorTag;

    const-string v1, "SEPARABLE_SINGLE"

    invoke-direct {v0, v2, v2, v1}, Lcom/htc/opensense2/album/util/SeparatorTag;-><init>(ZZLjava/lang/String;)V

    sput-object v0, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_SINGLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    new-instance v0, Lcom/htc/opensense2/album/util/SeparatorTag;

    const-string v1, "SEPARABLE_PLACEHOLDER"

    invoke-direct {v0, v2, v2, v1}, Lcom/htc/opensense2/album/util/SeparatorTag;-><init>(ZZLjava/lang/String;)V

    sput-object v0, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_PLACEHOLDER:Lcom/htc/opensense2/album/util/SeparatorTag;

    new-instance v0, Lcom/htc/opensense2/album/util/SeparatorTag;

    const-string v1, "SEPARABLE_BREAKTOP"

    invoke-direct {v0, v3, v2, v1}, Lcom/htc/opensense2/album/util/SeparatorTag;-><init>(ZZLjava/lang/String;)V

    sput-object v0, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_BREAKTOP:Lcom/htc/opensense2/album/util/SeparatorTag;

    new-instance v0, Lcom/htc/opensense2/album/util/SeparatorTag;

    const-string v1, "SEPARABLE_EMPTY"

    invoke-direct {v0, v3, v2, v1}, Lcom/htc/opensense2/album/util/SeparatorTag;-><init>(ZZLjava/lang/String;)V

    sput-object v0, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_EMPTY:Lcom/htc/opensense2/album/util/SeparatorTag;

    new-instance v0, Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-direct {v0, v3, v2}, Lcom/htc/opensense2/album/util/SeparatorTag;-><init>(ZZ)V

    sput-object v0, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_LOADER:Lcom/htc/opensense2/album/util/SeparatorTag;

    new-instance v0, Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-direct {v0, v3, v2}, Lcom/htc/opensense2/album/util/SeparatorTag;-><init>(ZZ)V

    sput-object v0, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_TOP:Lcom/htc/opensense2/album/util/SeparatorTag;

    new-instance v0, Lcom/htc/opensense2/album/util/SeparatorTag;

    const-string v1, "SEPARABLE_MIDDLE"

    invoke-direct {v0, v3, v3, v1}, Lcom/htc/opensense2/album/util/SeparatorTag;-><init>(ZZLjava/lang/String;)V

    sput-object v0, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    new-instance v0, Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-direct {v0, v2, v2}, Lcom/htc/opensense2/album/util/SeparatorTag;-><init>(ZZ)V

    sput-object v0, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_BOTTOM:Lcom/htc/opensense2/album/util/SeparatorTag;

    new-instance v0, Lcom/htc/opensense2/album/util/SeparatorTag;

    const-string v1, "SEPARABLE_DIVIDER"

    invoke-direct {v0, v2, v3, v1}, Lcom/htc/opensense2/album/util/SeparatorTag;-><init>(ZZLjava/lang/String;)V

    sput-object v0, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_DIVIDER:Lcom/htc/opensense2/album/util/SeparatorTag;

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/htc/album/ObjectWriter/SimpleObjectFormatter;-><init>()V

    iput-boolean v0, p0, Lcom/htc/opensense2/album/util/SeparatorTag;->mShouldSeparate:Z

    iput-boolean v0, p0, Lcom/htc/opensense2/album/util/SeparatorTag;->mShouldDraw:Z

    const-string v0, "SEPARABLE_MIDDLE"

    iput-object v0, p0, Lcom/htc/opensense2/album/util/SeparatorTag;->mTagType:Ljava/lang/String;

    iput-boolean p1, p0, Lcom/htc/opensense2/album/util/SeparatorTag;->mShouldSeparate:Z

    iput-boolean p2, p0, Lcom/htc/opensense2/album/util/SeparatorTag;->mShouldDraw:Z

    return-void
.end method

.method public constructor <init>(ZZLjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/htc/album/ObjectWriter/SimpleObjectFormatter;-><init>()V

    iput-boolean v0, p0, Lcom/htc/opensense2/album/util/SeparatorTag;->mShouldSeparate:Z

    iput-boolean v0, p0, Lcom/htc/opensense2/album/util/SeparatorTag;->mShouldDraw:Z

    const-string v0, "SEPARABLE_MIDDLE"

    iput-object v0, p0, Lcom/htc/opensense2/album/util/SeparatorTag;->mTagType:Ljava/lang/String;

    iput-boolean p1, p0, Lcom/htc/opensense2/album/util/SeparatorTag;->mShouldSeparate:Z

    iput-boolean p2, p0, Lcom/htc/opensense2/album/util/SeparatorTag;->mShouldDraw:Z

    iput-object p3, p0, Lcom/htc/opensense2/album/util/SeparatorTag;->mTagType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense2/album/util/SeparatorTag;->mTagType:Ljava/lang/String;

    return-object v0
.end method

.method public isDivider()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/htc/opensense2/album/util/SeparatorTag;->mTagType:Ljava/lang/String;

    const-string v3, "SEPARABLE_DIVIDER"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    const/4 v0, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public readFrom(ZIILjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0, p4}, Lcom/htc/opensense2/album/util/SeparatorTag;->removeAllHeader(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez p1, :cond_0

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/opensense2/album/util/SeparatorTag;->mShouldSeparate:Z

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/opensense2/album/util/SeparatorTag;->mShouldDraw:Z

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/opensense2/album/util/SeparatorTag;->mTagType:Ljava/lang/String;

    move v1, v2

    :cond_0
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense2/album/util/SeparatorTag;->mTagType:Ljava/lang/String;

    return-void
.end method

.method public shouldDrawOnThis()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/opensense2/album/util/SeparatorTag;->mShouldDraw:Z

    return v0
.end method

.method public shouldSeparate(Ljava/lang/Object;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/opensense2/album/util/SeparatorTag;->mShouldSeparate:Z

    return v0
.end method

.method public toFormatedString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v1, p0, Lcom/htc/opensense2/album/util/SeparatorTag;->mShouldSeparate:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v1, p0, Lcom/htc/opensense2/album/util/SeparatorTag;->mShouldDraw:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/htc/opensense2/album/util/SeparatorTag;->mTagType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/htc/opensense2/album/util/SeparatorTag;->capAllHeader(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
