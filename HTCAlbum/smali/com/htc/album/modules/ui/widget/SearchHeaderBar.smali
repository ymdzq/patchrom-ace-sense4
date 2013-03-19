.class public Lcom/htc/album/modules/ui/widget/SearchHeaderBar;
.super Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;
.source "SearchHeaderBar.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/album/modules/ui/widget/GalleryHeaderBar",
        "<",
        "Lcom/htc/widget/HeaderBar;",
        ">;"
    }
.end annotation


# instance fields
.field mHeaderBarInput:Lcom/htc/widget/HeaderBarInput;


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/SearchHeaderBar;->mHeaderBarInput:Lcom/htc/widget/HeaderBarInput;

    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    check-cast v0, Lcom/htc/widget/HeaderBar;

    const v1, 0x7f09006c

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarInput;

    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/SearchHeaderBar;->mHeaderBarInput:Lcom/htc/widget/HeaderBarInput;

    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/SearchHeaderBar;->mHeaderBarInput:Lcom/htc/widget/HeaderBarInput;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarInput;->setVisibility(I)V

    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/SearchHeaderBar;->mHeaderBarInput:Lcom/htc/widget/HeaderBarInput;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarInput;->setInputMode(I)V

    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/SearchHeaderBar;->mHeaderBarInput:Lcom/htc/widget/HeaderBarInput;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarInput;->setClearIconVisibility(I)V

    return-void
.end method


# virtual methods
.method public getEditTextView()Landroid/widget/AutoCompleteTextView;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/SearchHeaderBar;->mHeaderBarInput:Lcom/htc/widget/HeaderBarInput;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/SearchHeaderBar;->mHeaderBarInput:Lcom/htc/widget/HeaderBarInput;

    invoke-virtual {v0}, Lcom/htc/widget/HeaderBarInput;->getAutoCompleteTextView()Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setClearIconVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/SearchHeaderBar;->mHeaderBarInput:Lcom/htc/widget/HeaderBarInput;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/SearchHeaderBar;->mHeaderBarInput:Lcom/htc/widget/HeaderBarInput;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarInput;->setClearIconVisibility(I)V

    :cond_0
    return-void
.end method
