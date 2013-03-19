.class public Lcom/htc/album/helper/ErrorViewManager;
.super Landroid/widget/RelativeLayout;
.source "ErrorViewManager.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IScreenControlHook;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ErrorViewManager"


# instance fields
.field private mErrorText:Landroid/widget/TextView;

.field private mMainView:Landroid/widget/RelativeLayout;

.field private mParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private mRootView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/htc/album/helper/ErrorViewManager;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v1, p0, Lcom/htc/album/helper/ErrorViewManager;->mRootView:Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/htc/album/helper/ErrorViewManager;->mMainView:Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/htc/album/helper/ErrorViewManager;->mErrorText:Landroid/widget/TextView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/htc/album/helper/ErrorViewManager;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v1, p0, Lcom/htc/album/helper/ErrorViewManager;->mRootView:Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/htc/album/helper/ErrorViewManager;->mMainView:Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/htc/album/helper/ErrorViewManager;->mErrorText:Landroid/widget/TextView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/htc/album/helper/ErrorViewManager;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v1, p0, Lcom/htc/album/helper/ErrorViewManager;->mRootView:Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/htc/album/helper/ErrorViewManager;->mMainView:Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/htc/album/helper/ErrorViewManager;->mErrorText:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public attachTo(Landroid/view/ViewGroup;)V
    .locals 2

    iput-object p1, p0, Lcom/htc/album/helper/ErrorViewManager;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/htc/album/helper/ErrorViewManager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/helper/ErrorViewManager;->mRootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/htc/album/helper/ErrorViewManager;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public detach()V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/helper/ErrorViewManager;->mRootView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/album/helper/ErrorViewManager;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public hide()V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/album/helper/ErrorViewManager;->setVisibility(I)V

    return-void
.end method

.method public initialize(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/album/helper/ErrorViewManager;->initialize(Landroid/app/Activity;Z)V

    return-void
.end method

.method public initialize(Landroid/app/Activity;Z)V
    .locals 4

    const/4 v2, 0x0

    const-class v1, Lcom/htc/album/helper/ErrorViewManager;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/album/helper/ErrorViewManager;->setId(I)V

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    if-nez p2, :cond_0

    const v1, 0x7f030037

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/htc/album/helper/ErrorViewManager;->mMainView:Landroid/widget/RelativeLayout;

    :goto_0
    iget-object v1, p0, Lcom/htc/album/helper/ErrorViewManager;->mMainView:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/htc/album/helper/ErrorViewManager;->mMainView:Landroid/widget/RelativeLayout;

    const v2, 0x7f090012

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/album/helper/ErrorViewManager;->mErrorText:Landroid/widget/TextView;

    const-string v1, "ErrorViewManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ErrorViewManager][initialize]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/helper/ErrorViewManager;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/album/helper/ErrorViewManager;->mMainView:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/htc/album/helper/ErrorViewManager;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v1, v2}, Lcom/htc/album/helper/ErrorViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    const v1, 0x7f030003

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/htc/album/helper/ErrorViewManager;->mMainView:Landroid/widget/RelativeLayout;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/helper/ErrorViewManager;->mRootView:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/htc/album/helper/ErrorViewManager;->mMainView:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/htc/album/helper/ErrorViewManager;->mErrorText:Landroid/widget/TextView;

    return-void
.end method

.method public setErrorText(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/helper/ErrorViewManager;->mErrorText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/helper/ErrorViewManager;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method public setPageLoadingPadding(I)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/album/helper/ErrorViewManager;->mMainView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, p1, v1, v1}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    return-void
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/helper/ErrorViewManager;->setVisibility(I)V

    return-void
.end method
