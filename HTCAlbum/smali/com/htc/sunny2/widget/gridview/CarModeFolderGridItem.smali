.class public Lcom/htc/sunny2/widget/gridview/CarModeFolderGridItem;
.super Lcom/htc/sunny2/widget/gridview/GridItemFolder;
.source "CarModeFolderGridItem.java"

# interfaces
.implements Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;)V

    return-void
.end method


# virtual methods
.method public getCacheSet()I
    .locals 1

    const/16 v0, 0xd

    return v0
.end method

.method public getIdentifier()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getIdentifier()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/CarModeFolderGridItem;->getIdentifier()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getRowQuota()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
