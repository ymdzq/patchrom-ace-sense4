.class public Lcom/htc/album/TabPluginDevice/AdapterLocalFolderPlus;
.super Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;
.source "AdapterLocalFolderPlus.java"

# interfaces
.implements Lcom/htc/sunny2/widget/gridview/interfaces/IItemPrototypeFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;",
        "Lcom/htc/sunny2/widget/gridview/interfaces/IItemPrototypeFactory",
        "<",
        "Ljava/lang/Integer;",
        "Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;",
        ">;"
    }
.end annotation


# instance fields
.field protected mItemPrototype:Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;ILandroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;-><init>(Landroid/app/Activity;Landroid/os/Handler;ILandroid/os/Bundle;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolderPlus;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;

    return-void
.end method


# virtual methods
.method public getFactorySize()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getPrototype(Ljava/lang/Integer;)Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolderPlus;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;

    return-object v0
.end method

.method public bridge synthetic getPrototype(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolderPlus;->getPrototype(Ljava/lang/Integer;)Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;

    move-result-object v0

    return-object v0
.end method

.method public getPrototypeByIndex(I)Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolderPlus;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;

    return-object v0
.end method

.method public bridge synthetic getPrototypeByIndex(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolderPlus;->getPrototypeByIndex(I)Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;

    move-result-object v0

    return-object v0
.end method

.method public setSceneDisplayControl(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->setSceneDisplayControl(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;)V

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->spawn(Landroid/content/Context;Z)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    move-result-object v0

    new-instance v1, Lcom/htc/sunny2/widget/gridview/GridItemFolder;

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunnyCore/SunnyContext;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;)V

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolderPlus;->mItemPrototype:Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;

    goto :goto_0
.end method
