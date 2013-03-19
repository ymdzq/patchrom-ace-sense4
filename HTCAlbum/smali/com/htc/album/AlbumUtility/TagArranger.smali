.class public Lcom/htc/album/AlbumUtility/TagArranger;
.super Ljava/lang/Object;
.source "TagArranger.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TagArranger"


# instance fields
.field private dockHeight:I

.field private dockList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;>;"
        }
    .end annotation
.end field

.field private dockRectList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private intHeight:I

.field private multiple:Z

.field private rectMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private wa:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/album/AlbumUtility/TagArranger;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/album/AlbumUtility/TagArranger;->wa:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockList:Ljava/util/List;

    iput-object v0, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockRectList:Ljava/util/List;

    iput-boolean p1, p0, Lcom/htc/album/AlbumUtility/TagArranger;->multiple:Z

    return-void
.end method

.method private isEmpty(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    if-lt v1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private remove(Landroid/graphics/Rect;)Z
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_1

    const-string v2, "TagArranger"

    const-string v3, "Rectangle not found."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-boolean v2, p0, Lcom/htc/album/AlbumUtility/TagArranger;->multiple:Z

    if-eqz v2, :cond_2

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/htc/album/AlbumUtility/TagArranger;->wa:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockHeight:I

    iget v3, p0, Lcom/htc/album/AlbumUtility/TagArranger;->intHeight:I

    add-int/2addr v2, v3

    div-int v0, v1, v2

    iget-object v1, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockRectList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v1, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockRectList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addTag(IIIILjava/lang/String;)Landroid/graphics/Rect;
    .locals 14

    iget-object v10, p0, Lcom/htc/album/AlbumUtility/TagArranger;->wa:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    move/from16 v0, p2

    if-ge v0, v10, :cond_0

    iget-object v10, p0, Lcom/htc/album/AlbumUtility/TagArranger;->wa:Landroid/graphics/Rect;

    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 p2, v0

    const-string v10, "TagArranger"

    const-string v11, "Coordinate Y over top bound."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int v10, p2, p4

    iget-object v11, p0, Lcom/htc/album/AlbumUtility/TagArranger;->wa:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    if-le v10, v11, :cond_1

    iget-object v10, p0, Lcom/htc/album/AlbumUtility/TagArranger;->wa:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int p2, v10, p4

    const-string v10, "TagArranger"

    const-string v11, "Coordinate Y over bottom bound."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v10, p0, Lcom/htc/album/AlbumUtility/TagArranger;->wa:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int v6, p2, v10

    iget v10, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockHeight:I

    iget v11, p0, Lcom/htc/album/AlbumUtility/TagArranger;->intHeight:I

    add-int v1, v10, v11

    div-int v3, v6, v1

    iget-object v10, p0, Lcom/htc/album/AlbumUtility/TagArranger;->wa:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    if-ge p1, v10, :cond_2

    iget-object v10, p0, Lcom/htc/album/AlbumUtility/TagArranger;->wa:Landroid/graphics/Rect;

    iget p1, v10, Landroid/graphics/Rect;->left:I

    const-string v10, "TagArranger"

    const-string v11, "Coordinate X over left bound."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    add-int v10, p1, p3

    iget-object v11, p0, Lcom/htc/album/AlbumUtility/TagArranger;->wa:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    if-le v10, v11, :cond_3

    iget-object v10, p0, Lcom/htc/album/AlbumUtility/TagArranger;->wa:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    sub-int p1, v10, p3

    const-string v10, "TagArranger"

    const-string v11, "Coordinate X over right bound."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    const/4 v7, 0x0

    iget-boolean v10, p0, Lcom/htc/album/AlbumUtility/TagArranger;->multiple:Z

    if-eqz v10, :cond_12

    iget-object v10, p0, Lcom/htc/album/AlbumUtility/TagArranger;->wa:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    move/from16 v0, p2

    if-lt v0, v10, :cond_c

    rem-int v10, v6, v1

    iget v11, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockHeight:I

    if-le v10, v11, :cond_4

    add-int/lit8 v3, v3, 0x1

    :cond_4
    :goto_0
    iget-object v10, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v3, v10, :cond_a

    if-nez v7, :cond_a

    mul-int v10, v1, v3

    iget-object v11, p0, Lcom/htc/album/AlbumUtility/TagArranger;->wa:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    add-int v9, v10, v11

    iget-object v10, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockList:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_6

    iget v10, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockHeight:I

    add-int/2addr v10, v9

    iget-object v11, p0, Lcom/htc/album/AlbumUtility/TagArranger;->wa:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    if-gt v10, v11, :cond_5

    add-int v10, p1, p3

    iget v11, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockHeight:I

    add-int/2addr v11, v9

    invoke-virtual {v8, p1, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v7, 0x1

    iget-object v10, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockList:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    const/4 v4, 0x0

    add-int v10, p1, p3

    iget v11, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockHeight:I

    add-int/2addr v11, v9

    invoke-virtual {v8, p1, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v10, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockList:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    iget v10, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockHeight:I

    add-int/2addr v10, v9

    iget-object v11, p0, Lcom/htc/album/AlbumUtility/TagArranger;->wa:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    if-le v10, v11, :cond_8

    iget-object v10, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v3, v10, 0x1

    goto :goto_2

    :cond_8
    invoke-static {v5, v8}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v4, 0x1

    goto :goto_2

    :cond_9
    if-nez v4, :cond_5

    iget-object v10, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockList:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    goto :goto_1

    :cond_a
    if-nez v7, :cond_b

    iget-object v10, p0, Lcom/htc/album/AlbumUtility/TagArranger;->wa:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    iget v11, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockHeight:I

    sub-int/2addr v10, v11

    add-int v11, p1, p3

    iget-object v12, p0, Lcom/htc/album/AlbumUtility/TagArranger;->wa:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v8, p1, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    :cond_b
    :goto_3
    iget-object v10, p0, Lcom/htc/album/AlbumUtility/TagArranger;->rectMap:Ljava/util/Map;

    move-object/from16 v0, p5

    invoke-interface {v10, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v8

    :cond_c
    :goto_4
    if-lez v3, :cond_11

    if-nez v7, :cond_11

    mul-int v10, v1, v3

    iget-object v11, p0, Lcom/htc/album/AlbumUtility/TagArranger;->wa:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    add-int v9, v10, v11

    add-int v10, p1, p3

    iget v11, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockHeight:I

    add-int/2addr v11, v9

    invoke-virtual {v8, p1, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v10, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockList:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_e

    add-int v10, p1, p3

    iget v11, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockHeight:I

    add-int/2addr v11, v9

    invoke-virtual {v8, p1, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v7, 0x1

    iget-object v10, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockList:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    :goto_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    :cond_e
    const/4 v4, 0x0

    iget-object v10, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockList:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    invoke-static {v5, v8}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v10

    if-eqz v10, :cond_f

    const/4 v4, 0x1

    goto :goto_6

    :cond_10
    if-nez v4, :cond_d

    const/4 v7, 0x1

    iget-object v10, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockList:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_11
    if-nez v7, :cond_b

    iget-object v10, p0, Lcom/htc/album/AlbumUtility/TagArranger;->wa:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    add-int v11, p1, p3

    iget-object v12, p0, Lcom/htc/album/AlbumUtility/TagArranger;->wa:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    iget v13, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockHeight:I

    add-int/2addr v12, v13

    invoke-virtual {v8, p1, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_3

    :cond_12
    iget-object v10, p0, Lcom/htc/album/AlbumUtility/TagArranger;->wa:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    move/from16 v0, p2

    if-lt v0, v10, :cond_16

    rem-int v10, v6, v1

    iget v11, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockHeight:I

    if-le v10, v11, :cond_13

    add-int/lit8 v3, v3, 0x1

    :cond_13
    :goto_7
    iget-object v10, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockRectList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v3, v10, :cond_15

    if-nez v7, :cond_15

    mul-int v10, v1, v3

    iget-object v11, p0, Lcom/htc/album/AlbumUtility/TagArranger;->wa:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    add-int v9, v10, v11

    iget-object v10, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockRectList:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_14

    iget v10, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockHeight:I

    add-int/2addr v10, v9

    iget-object v11, p0, Lcom/htc/album/AlbumUtility/TagArranger;->wa:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    if-gt v10, v11, :cond_14

    add-int v10, p1, p3

    iget v11, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockHeight:I

    add-int/2addr v11, v9

    invoke-virtual {v8, p1, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v7, 0x1

    iget-object v10, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockRectList:Ljava/util/List;

    invoke-interface {v10, v3, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_15
    if-nez v7, :cond_b

    iget-object v10, p0, Lcom/htc/album/AlbumUtility/TagArranger;->wa:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    iget v11, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockHeight:I

    sub-int/2addr v10, v11

    add-int v11, p1, p3

    iget-object v12, p0, Lcom/htc/album/AlbumUtility/TagArranger;->wa:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v8, p1, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_3

    :cond_16
    :goto_8
    if-lez v3, :cond_18

    if-nez v7, :cond_18

    mul-int v10, v1, v3

    iget-object v11, p0, Lcom/htc/album/AlbumUtility/TagArranger;->wa:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    add-int v9, v10, v11

    iget-object v10, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockRectList:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_17

    add-int v10, p1, p3

    iget v11, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockHeight:I

    add-int/2addr v11, v9

    invoke-virtual {v8, p1, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v7, 0x1

    iget-object v10, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockRectList:Ljava/util/List;

    invoke-interface {v10, v3, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_17
    add-int/lit8 v3, v3, -0x1

    goto :goto_8

    :cond_18
    if-nez v7, :cond_b

    iget-object v10, p0, Lcom/htc/album/AlbumUtility/TagArranger;->wa:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    add-int v11, p1, p3

    iget-object v12, p0, Lcom/htc/album/AlbumUtility/TagArranger;->wa:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    iget v13, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockHeight:I

    add-int/2addr v12, v13

    invoke-virtual {v8, p1, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_3
.end method

.method public clearTags()V
    .locals 5

    iget-boolean v3, p0, Lcom/htc/album/AlbumUtility/TagArranger;->multiple:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockList:Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/htc/album/AlbumUtility/TagArranger;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockRectList:Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/htc/album/AlbumUtility/TagArranger;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockRectList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockRectList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v0, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/htc/album/AlbumUtility/TagArranger;->rectMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/album/AlbumUtility/TagArranger;->rectMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/htc/album/AlbumUtility/TagArranger;->remove(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public setup(Landroid/graphics/Rect;II)V
    .locals 8

    const/4 v7, 0x5

    iput-object p1, p0, Lcom/htc/album/AlbumUtility/TagArranger;->wa:Landroid/graphics/Rect;

    iput p2, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockHeight:I

    iput p3, p0, Lcom/htc/album/AlbumUtility/TagArranger;->intHeight:I

    new-instance v5, Ljava/util/HashMap;

    const/16 v6, 0xa

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    iput-object v5, p0, Lcom/htc/album/AlbumUtility/TagArranger;->rectMap:Ljava/util/Map;

    iget v5, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockHeight:I

    iget v6, p0, Lcom/htc/album/AlbumUtility/TagArranger;->intHeight:I

    add-int v1, v5, v6

    iget-object v5, p0, Lcom/htc/album/AlbumUtility/TagArranger;->wa:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Lcom/htc/album/AlbumUtility/TagArranger;->wa:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int v4, v5, v6

    div-int v0, v4, v1

    iget-boolean v5, p0, Lcom/htc/album/AlbumUtility/TagArranger;->multiple:Z

    if-eqz v5, :cond_2

    new-instance v5, Ljava/util/ArrayList;

    add-int/lit8 v6, v0, 0x1

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockList:Ljava/util/List;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v5, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    rem-int v5, v4, v1

    if-lez v5, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v5, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void

    :cond_2
    rem-int v5, v4, v1

    if-lez v5, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockRectList:Ljava/util/List;

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    iget-object v5, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockRectList:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
