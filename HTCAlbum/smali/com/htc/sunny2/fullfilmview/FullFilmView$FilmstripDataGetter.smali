.class Lcom/htc/sunny2/fullfilmview/FullFilmView$FilmstripDataGetter;
.super Ljava/lang/Object;
.source "FullFilmView.java"

# interfaces
.implements Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/fullfilmview/FullFilmView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilmstripDataGetter"
.end annotation


# instance fields
.field mList:Lcom/htc/sunnyCore/IMediaList;

.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;


# direct methods
.method private constructor <init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$FilmstripDataGetter;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$FilmstripDataGetter;->mList:Lcom/htc/sunnyCore/IMediaList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;Lcom/htc/sunny2/fullfilmview/FullFilmView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/sunny2/fullfilmview/FullFilmView$FilmstripDataGetter;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V

    return-void
.end method


# virtual methods
.method public getMediaData(I)Lcom/htc/sunnyCore/IMediaData;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$FilmstripDataGetter;->mList:Lcom/htc/sunnyCore/IMediaList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$FilmstripDataGetter;->mList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v0, p1}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v0

    goto :goto_0
.end method

.method public getMediaDataCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$FilmstripDataGetter;->mList:Lcom/htc/sunnyCore/IMediaList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$FilmstripDataGetter;->mList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v0}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getMediaTexture(I)Lcom/htc/sunnyCore/Texture;
    .locals 4

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$FilmstripDataGetter;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmView;->mThumbPreparator:Lcom/htc/sunnyCore/Preparator;
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->access$900(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Lcom/htc/sunnyCore/Preparator;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    if-nez v0, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$FilmstripDataGetter;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmView;->isUploadEditor:Z
    invoke-static {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->access$1100(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->queryItemImageTexture(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v3}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->queryItemImageTexture(II)Lcom/htc/sunnyCore/Texture;

    move-result-object v2

    if-nez v2, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->queryItemImageTexture(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v2

    goto :goto_0
.end method

.method public setMediaList(Lcom/htc/sunnyCore/IMediaList;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$FilmstripDataGetter;->mList:Lcom/htc/sunnyCore/IMediaList;

    return-void
.end method
