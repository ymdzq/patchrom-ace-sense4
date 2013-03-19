.class Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator$TextureSeparator;
.super Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;
.source "GridItemEventSeparator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextureSeparator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;Landroid/content/Context;I)V
    .locals 3

    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator$TextureSeparator;->this$0:Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;

    invoke-direct {p0}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;-><init>()V

    invoke-static {p2, p3}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator$TextureSeparator;->textureSet:Ljava/util/HashMap;

    const-string v2, "NAME_TEXTURE_BACKGROUND"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 3

    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator$TextureSeparator;->this$0:Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator;

    invoke-direct {p0}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;-><init>()V

    invoke-static {p3}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/graphics/Bitmap;)Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator$TextureSeparator;->textureSet:Ljava/util/HashMap;

    const-string v2, "NAME_TEXTURE_BACKGROUND"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public release()V
    .locals 3

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator$TextureSeparator;->textureSet:Ljava/util/HashMap;

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
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemEventSeparator$TextureSeparator;->textureSet:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    return-void
.end method
