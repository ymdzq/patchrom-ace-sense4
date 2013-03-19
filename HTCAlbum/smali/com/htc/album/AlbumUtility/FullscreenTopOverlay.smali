.class public Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;
.super Ljava/lang/Object;
.source "FullscreenTopOverlay.java"


# instance fields
.field private mListPlugin:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/AlbumUtility/IPluginTopOverlay;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;->mListPlugin:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addAll(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/AlbumUtility/IPluginTopOverlay;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;->mListPlugin:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;->mListPlugin:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public initialize()V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;->mListPlugin:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_1

    iget-object v2, p0, Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;->mListPlugin:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/album/AlbumUtility/IPluginTopOverlay;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/htc/album/AlbumUtility/IPluginTopOverlay;->initialize()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onDispatchEnterImage(I)V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;->mListPlugin:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_1

    iget-object v2, p0, Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;->mListPlugin:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/album/AlbumUtility/IPluginTopOverlay;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/htc/album/AlbumUtility/IPluginTopOverlay;->onEnterImage(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onDispatchNotifyUpdateChange()V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;->mListPlugin:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_1

    iget-object v2, p0, Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;->mListPlugin:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/album/AlbumUtility/IPluginTopOverlay;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/htc/album/AlbumUtility/IPluginTopOverlay;->onNotifyUpdateChange()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onDispatchNotifyUpdateChange(Ljava/lang/Object;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;->mListPlugin:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_1

    iget-object v2, p0, Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;->mListPlugin:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/album/AlbumUtility/IPluginTopOverlay;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/htc/album/AlbumUtility/IPluginTopOverlay;->onNotifyUpdateChange(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onDispatchScreenRotate()V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;->mListPlugin:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_1

    iget-object v2, p0, Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;->mListPlugin:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/album/AlbumUtility/IPluginTopOverlay;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/htc/album/AlbumUtility/IPluginTopOverlay;->onScreenRotate()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onDispatchTransformImageBegin(I)V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;->mListPlugin:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_1

    iget-object v2, p0, Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;->mListPlugin:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/album/AlbumUtility/IPluginTopOverlay;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/htc/album/AlbumUtility/IPluginTopOverlay;->onTransformImageBegin(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onDispatchTransformImageEnd(I)V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;->mListPlugin:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_1

    iget-object v2, p0, Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;->mListPlugin:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/album/AlbumUtility/IPluginTopOverlay;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/htc/album/AlbumUtility/IPluginTopOverlay;->onTransformImageEnd(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeAll()V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;->mListPlugin:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public setAdater(Landroid/widget/BaseAdapter;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;->mListPlugin:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_1

    iget-object v2, p0, Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;->mListPlugin:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/album/AlbumUtility/IPluginTopOverlay;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/htc/album/AlbumUtility/IPluginTopOverlay;->setAdater(Landroid/widget/BaseAdapter;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setShowHideOverlay(Z)V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;->mListPlugin:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_1

    iget-object v2, p0, Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;->mListPlugin:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/album/AlbumUtility/IPluginTopOverlay;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/htc/album/AlbumUtility/IPluginTopOverlay;->setShowHide(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public unInitialize()V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;->mListPlugin:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_1

    iget-object v2, p0, Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;->mListPlugin:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/album/AlbumUtility/IPluginTopOverlay;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/htc/album/AlbumUtility/IPluginTopOverlay;->unInitialize()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
