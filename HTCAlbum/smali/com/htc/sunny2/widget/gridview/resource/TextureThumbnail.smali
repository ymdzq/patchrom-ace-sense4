.class public Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;
.super Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;
.source "TextureThumbnail.java"


# static fields
.field public static final NAME_TEXTUREE_3D:Ljava/lang/String; = "NAME_TEXTUREE_3D"

.field public static final NAME_TEXTUREE_ARROW_DOWN:Ljava/lang/String; = "NAME_TEXTUREE_ARROW_DOWN"

.field public static final NAME_TEXTUREE_BESTSHOT:Ljava/lang/String; = "NAME_TEXTUREE_BESTSHOT"

.field public static final NAME_TEXTUREE_BURSTSHOT:Ljava/lang/String; = "NAME_TEXTUREE_BURSTSHOT"

.field public static final NAME_TEXTUREE_DELETE:Ljava/lang/String; = "NAME_TEXTUREE_DELETE"

.field public static final NAME_TEXTUREE_DRM:Ljava/lang/String; = "NAME_TEXTUREE_DRM"

.field public static final NAME_TEXTUREE_DRM_CORRUPT:Ljava/lang/String; = "NAME_TEXTUREE_DRM_CORRUPT"

.field public static final NAME_TEXTUREE_IMAGE_CORRUPT:Ljava/lang/String; = "NAME_TEXTUREE_IMAGE_CORRUPT"

.field public static final NAME_TEXTUREE_INKED:Ljava/lang/String; = "NAME_TEXTUREE_INKED"

.field public static final NAME_TEXTUREE_PICKED:Ljava/lang/String; = "NAME_TEXTUREE_PICKED"

.field public static final NAME_TEXTUREE_PLAYABLE:Ljava/lang/String; = "NAME_TEXTUREE_PLAYABLE"

.field public static final NAME_TEXTUREE_SELECTED:Ljava/lang/String; = "NAME_TEXTUREE_SELECTED"

.field public static final NAME_TEXTUREE_UNPICKED:Ljava/lang/String; = "NAME_TEXTUREE_UNPICKED"

.field public static final NAME_TEXTUREE_VIDEO_CORRUPT:Ljava/lang/String; = "NAME_TEXTUREE_VIDEO_CORRUPT"

.field public static final NAME_TEXTURE_BACKGROUND_DARK:Ljava/lang/String; = "NAME_TEXTURE_BACKGROUND_DARK"

.field public static final NAME_TEXTURE_BACKGROUND_LIGHT:Ljava/lang/String; = "NAME_TEXTURE_BACKGROUND_LIGHT"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;-><init>()V

    const-string v1, "TextureThumbnail"

    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->textureSet:Ljava/util/HashMap;

    const-string v2, "NAME_TEXTURE_BACKGROUND_DARK"

    const v3, 0x7f020004

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->getItemWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->getItemHeight()I

    move-result v5

    invoke-static {p1, v3, v4, v5}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;III)Lcom/htc/sunnyCore/Texture;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->textureSet:Ljava/util/HashMap;

    const-string v2, "NAME_TEXTURE_BACKGROUND_LIGHT"

    const v3, 0x7f020003

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->getItemWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->getItemHeight()I

    move-result v5

    invoke-static {p1, v3, v4, v5}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;III)Lcom/htc/sunnyCore/Texture;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->textureSet:Ljava/util/HashMap;

    const-string v2, "NAME_TEXTUREE_DRM"

    const v3, 0x7f02002b

    invoke-static {p1, v3}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunnyCore/Texture;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->textureSet:Ljava/util/HashMap;

    const-string v2, "NAME_TEXTUREE_PLAYABLE"

    const v3, 0x208008b

    invoke-static {p1, v3}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunnyCore/Texture;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->textureSet:Ljava/util/HashMap;

    const-string v2, "NAME_TEXTUREE_IMAGE_CORRUPT"

    const v3, 0x7f020026

    invoke-static {p1, v3}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunnyCore/Texture;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->textureSet:Ljava/util/HashMap;

    const-string v2, "NAME_TEXTUREE_VIDEO_CORRUPT"

    const v3, 0x7f020024

    invoke-static {p1, v3}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunnyCore/Texture;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->textureSet:Ljava/util/HashMap;

    const-string v2, "NAME_TEXTUREE_DRM_CORRUPT"

    const v3, 0x7f02001f

    invoke-static {p1, v3}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunnyCore/Texture;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->textureSet:Ljava/util/HashMap;

    const-string v2, "NAME_TEXTUREE_ARROW_DOWN"

    const v3, 0x7f020020

    invoke-static {p1, v3}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunnyCore/Texture;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Checkbox_on(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->textureSet:Ljava/util/HashMap;

    const-string v2, "NAME_TEXTUREE_PICKED"

    invoke-static {p1, v0}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunnyCore/Texture;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Checkbox_off(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->textureSet:Ljava/util/HashMap;

    const-string v2, "NAME_TEXTUREE_UNPICKED"

    invoke-static {p1, v0}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunnyCore/Texture;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_GridViewSelector(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->textureSet:Ljava/util/HashMap;

    const-string v2, "NAME_TEXTUREE_SELECTED"

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->getItemWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->getItemHeight()I

    move-result v4

    invoke-static {p1, v0, v3, v4}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;III)Lcom/htc/sunnyCore/Texture;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->textureSet:Ljava/util/HashMap;

    const-string v2, "NAME_TEXTUREE_DELETE"

    const v3, 0x20800f3

    invoke-static {p1, v3}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunnyCore/Texture;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->textureSet:Ljava/util/HashMap;

    const-string v2, "NAME_TEXTUREE_INKED"

    const v3, 0x7f020036

    invoke-static {p1, v3}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunnyCore/Texture;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->textureSet:Ljava/util/HashMap;

    const-string v2, "NAME_TEXTUREE_BURSTSHOT"

    const v3, 0x7f020028

    invoke-static {p1, v3}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunnyCore/Texture;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->textureSet:Ljava/util/HashMap;

    const-string v2, "NAME_TEXTUREE_BESTSHOT"

    const v3, 0x7f02002e

    invoke-static {p1, v3}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunnyCore/Texture;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->textureSet:Ljava/util/HashMap;

    const-string v2, "NAME_TEXTUREE_3D"

    const v3, 0x7f020027

    invoke-static {p1, v3}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunnyCore/Texture;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected getItemHeight()I
    .locals 1

    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->GRID_DIMENSION:I

    return v0
.end method

.method protected getItemWidth()I
    .locals 1

    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->GRID_DIMENSION:I

    return v0
.end method

.method public release()V
    .locals 3

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->textureSet:Ljava/util/HashMap;

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
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->textureSet:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    return-void
.end method
