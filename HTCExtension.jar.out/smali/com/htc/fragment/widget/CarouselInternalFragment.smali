.class public Lcom/htc/fragment/widget/CarouselInternalFragment;
.super Lcom/htc/fragment/widget/CarouselFragment;
.source "CarouselInternalFragment.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/fragment/widget/CarouselFragment;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected OnEditModeDrawerClose()V
    .locals 0

    return-void
.end method

.method protected OnEditModeDrawerOpen()V
    .locals 0

    return-void
.end method

.method public enableFullScreen(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselInternalFragment;->getCarouselHost()Lcom/htc/fragment/widget/CarouselHost;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselInternalFragment;->getCarouselHost()Lcom/htc/fragment/widget/CarouselHost;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/fragment/widget/CarouselHost;->enableFullScreen(Z)V

    :cond_0
    return-void
.end method

.method public exitEditMode()V
    .locals 0

    invoke-super {p0}, Lcom/htc/fragment/widget/CarouselFragment;->exitEditMode()V

    return-void
.end method

.method public isInEditMode()Z
    .locals 1

    invoke-super {p0}, Lcom/htc/fragment/widget/CarouselFragment;->isInEditMode()Z

    move-result v0

    return v0
.end method

.method onEditDrawerAboutToOpen()V
    .locals 0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselInternalFragment;->OnEditModeDrawerOpen()V

    return-void
.end method

.method onEditDrawerCompleteClose()V
    .locals 0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselInternalFragment;->OnEditModeDrawerClose()V

    return-void
.end method

.method public setResources(Landroid/content/res/Resources;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselFragment;->eresources:Landroid/content/res/Resources;

    :cond_0
    return-void
.end method
