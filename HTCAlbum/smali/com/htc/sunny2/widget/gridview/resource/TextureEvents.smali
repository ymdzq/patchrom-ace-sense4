.class public Lcom/htc/sunny2/widget/gridview/resource/TextureEvents;
.super Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;
.source "TextureEvents.java"


# static fields
.field public static final NAME_TEXTUREE_IMAGE_CORRUPT:Ljava/lang/String; = "NAME_TEXTUREE_IMAGE_CORRUPT"

.field public static final NAME_TEXTURE_BACKGROUND_DARK:Ljava/lang/String; = "NAME_TEXTURE_BACKGROUND_DARK"

.field public static final NAME_TEXTURE_BACKGROUND_LIGHT:Ljava/lang/String; = "NAME_TEXTURE_BACKGROUND_LIGHT"

.field public static final NAME_TEXTURE_EVENT_PLATE:Ljava/lang/String; = "NAME_TEXTURE_EVENT_PLATE"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x2

    invoke-direct {p0}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;-><init>()V

    const-string v1, "TextureEvents"

    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureEvents;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureEvents;->textureSet:Ljava/util/HashMap;

    const-string v2, "NAME_TEXTURE_BACKGROUND_DARK"

    const v3, 0x7f020004

    sget v4, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->GRID_DIMENSION:I

    sget v5, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->GRID_DIMENSION:I

    invoke-static {p1, v3, v4, v5}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;III)Lcom/htc/sunnyCore/Texture;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureEvents;->textureSet:Ljava/util/HashMap;

    const-string v2, "NAME_TEXTURE_BACKGROUND_LIGHT"

    const v3, 0x7f020003

    sget v4, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->GRID_DIMENSION:I

    sget v5, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->GRID_DIMENSION:I

    invoke-static {p1, v3, v4, v5}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;III)Lcom/htc/sunnyCore/Texture;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureEvents;->textureSet:Ljava/util/HashMap;

    const-string v2, "NAME_TEXTUREE_IMAGE_CORRUPT"

    const v3, 0x7f020026

    invoke-static {p1, v3}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunnyCore/Texture;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v7, v7, v8, v8}, Landroid/view/ViewGroup;->layout(IIII)V

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureEvents;->textureSet:Ljava/util/HashMap;

    const-string v2, "NAME_TEXTURE_EVENT_PLATE"

    invoke-static {v0}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/view/View;)Lcom/htc/sunnyCore/Texture;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public release()V
    .locals 3

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureEvents;->textureSet:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunnyCore/Texture;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/htc/sunnyCore/Texture;->release()V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureEvents;->textureSet:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    return-void
.end method
