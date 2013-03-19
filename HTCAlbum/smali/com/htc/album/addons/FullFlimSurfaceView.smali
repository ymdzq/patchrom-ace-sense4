.class public Lcom/htc/album/addons/FullFlimSurfaceView;
.super Lcom/htc/sunnyCore/view/SSurfaceView;
.source "FullFlimSurfaceView.java"


# instance fields
.field mFullFilmView:Lcom/htc/sunny2/fullfilmview/FullFilmView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/sunnyCore/view/SSurfaceView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/htc/album/addons/FullFlimSurfaceView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/htc/sunnyCore/view/SSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/htc/album/addons/FullFlimSurfaceView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/sunnyCore/view/SSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/htc/album/addons/FullFlimSurfaceView;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    iget-object v0, p0, Lcom/htc/album/addons/FullFlimSurfaceView;->mFullFilmView:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {p0}, Lcom/htc/album/addons/FullFlimSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/addons/FullFlimSurfaceView;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-direct {v0, v1, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V

    iput-object v0, p0, Lcom/htc/album/addons/FullFlimSurfaceView;->mFullFilmView:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    :cond_0
    return-void
.end method


# virtual methods
.method public getFullFilmView()Lcom/htc/sunny2/fullfilmview/FullFilmView;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/addons/FullFlimSurfaceView;->mFullFilmView:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/addons/FullFlimSurfaceView;->mFullFilmView:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRenderStartIRT()Z
    .locals 2

    invoke-super {p0}, Lcom/htc/sunnyCore/view/SSurfaceView;->onRenderStartIRT()Z

    invoke-direct {p0}, Lcom/htc/album/addons/FullFlimSurfaceView;->init()V

    iget-object v0, p0, Lcom/htc/album/addons/FullFlimSurfaceView;->mSViewRoot:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;

    iget-object v1, p0, Lcom/htc/album/addons/FullFlimSurfaceView;->mFullFilmView:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->addView(Lcom/htc/sunnyCore/view/SView;)V

    const/4 v0, 0x1

    return v0
.end method
