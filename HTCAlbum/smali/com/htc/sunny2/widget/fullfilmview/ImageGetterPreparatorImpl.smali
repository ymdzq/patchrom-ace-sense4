.class public Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;
.super Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;
.source "ImageGetterPreparatorImpl.java"

# interfaces
.implements Lcom/htc/sunny2/fullfilmview/FullScreenViewItem$IImageTextureProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "ImageGetterPreparatorImpl_FullFilmview"

    invoke-direct {p0, p1, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onSetCurrentIndex(I)V
    .locals 0

    return-void
.end method

.method public queryItemImageTexture(I)Lcom/htc/sunnyCore/Texture;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->queryItemImageTexture(II)Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    return-object v0
.end method

.method public queryItemImageTexture(II)Lcom/htc/sunnyCore/Texture;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "QUALITY"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->get(IILandroid/os/Bundle;)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    return-object v1
.end method
