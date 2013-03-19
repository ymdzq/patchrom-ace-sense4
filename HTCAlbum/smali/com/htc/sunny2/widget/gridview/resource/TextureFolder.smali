.class public Lcom/htc/sunny2/widget/gridview/resource/TextureFolder;
.super Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;
.source "TextureFolder.java"


# static fields
.field public static final NAME_TEXTURE_SELECTED:Ljava/lang/String; = "NAME_TEXTURE_SELECTED"


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 4

    invoke-direct {p0}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;-><init>()V

    invoke-static {p1, p2}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureFolder;->textureSet:Ljava/util/HashMap;

    const-string v3, "NAME_TEXTURE_BACKGROUND"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v3

    invoke-static {p1, p3, v2, v3}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;III)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureFolder;->textureSet:Ljava/util/HashMap;

    const-string v3, "NAME_TEXTURE_SELECTED"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public release()V
    .locals 3

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureFolder;->textureSet:Ljava/util/HashMap;

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
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureFolder;->textureSet:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    return-void
.end method
