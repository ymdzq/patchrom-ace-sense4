.class public Lcom/htc/sunny2/widget/gridview/resource/CarModeFolderParams;
.super Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;
.source "CarModeFolderParams.java"


# direct methods
.method protected constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method protected constructor <init>(Lcom/htc/sunny2/widget/gridview/resource/CarModeFolderParams;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/gridview/resource/CarModeFolderParams;->copy(Lcom/htc/sunny2/widget/gridview/resource/CarModeFolderParams;)V

    return-void
.end method

.method public static clone(Lcom/htc/sunny2/widget/gridview/resource/CarModeFolderParams;)Lcom/htc/sunny2/widget/gridview/resource/CarModeFolderParams;
    .locals 1

    new-instance v0, Lcom/htc/sunny2/widget/gridview/resource/CarModeFolderParams;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/widget/gridview/resource/CarModeFolderParams;-><init>(Lcom/htc/sunny2/widget/gridview/resource/CarModeFolderParams;)V

    return-object v0
.end method

.method public static spawn(Landroid/content/Context;Z)Lcom/htc/sunny2/widget/gridview/resource/CarModeFolderParams;
    .locals 1

    new-instance v0, Lcom/htc/sunny2/widget/gridview/resource/CarModeFolderParams;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny2/widget/gridview/resource/CarModeFolderParams;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method


# virtual methods
.method public copy(Lcom/htc/sunny2/widget/gridview/resource/CarModeFolderParams;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->copy(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;)V

    return-void
.end method

.method protected getFolderBGResId(Z)I
    .locals 1

    const/high16 v0, 0x7f02

    return v0
.end method

.method protected getOverlayCount(Z)I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getTextLayoutId()I
    .locals 1

    const v0, 0x7f03003b

    return v0
.end method

.method public layoutGetter()Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mLayoutGetter:Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;

    return-object v0
.end method

.method protected onNewLayoutGetter(Landroid/content/Context;Z)Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;
    .locals 1

    new-instance v0, Lcom/htc/sunny2/widget/gridview/resource/CarModeFolderLayoutGetter;

    invoke-direct {v0, p1}, Lcom/htc/sunny2/widget/gridview/resource/CarModeFolderLayoutGetter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
