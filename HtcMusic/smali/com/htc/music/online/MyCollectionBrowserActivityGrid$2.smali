.class Lcom/htc/music/online/MyCollectionBrowserActivityGrid$2;
.super Ljava/lang/Object;
.source "MyCollectionBrowserActivityGrid.java"

# interfaces
.implements Lcom/htc/music/widget/gridview/MusicGridViewItem$ViewItemImageGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/online/MyCollectionBrowserActivityGrid;->initMusicGridViewItem(Lcom/htc/music/widget/gridview/MusicGridViewItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/online/MyCollectionBrowserActivityGrid;


# direct methods
.method constructor <init>(Lcom/htc/music/online/MyCollectionBrowserActivityGrid;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/htc/music/online/MyCollectionBrowserActivityGrid$2;->this$0:Lcom/htc/music/online/MyCollectionBrowserActivityGrid;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getThumbnailImage(ILcom/htc/sunny2/IMediaData;I)Lcom/htc/sunny2/Texture;
    .locals 3
    .parameter "index"
    .parameter "mediaData"
    .parameter "bkgTextureId"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/htc/music/online/MyCollectionBrowserActivityGrid$2;->this$0:Lcom/htc/music/online/MyCollectionBrowserActivityGrid;

    iget-object v0, v0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/online/MusicGridViewPreparatorForCollection;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/htc/music/online/MusicGridViewPreparatorForCollection;->get(IILandroid/os/Bundle;)Lcom/htc/sunny2/Texture;

    move-result-object v0

    return-object v0
.end method

.method public isGridViewInitFinish()Z
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/htc/music/online/MyCollectionBrowserActivityGrid$2;->this$0:Lcom/htc/music/online/MyCollectionBrowserActivityGrid;

    iget-boolean v0, v0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridViewInitFinish:Z

    return v0
.end method

.method public isUseExtraBackgroundImage(ILcom/htc/sunny2/IMediaData;I)Z
    .locals 1
    .parameter "index"
    .parameter "mediaData"
    .parameter "bkgTextureId"

    .prologue
    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public isUseExtraThumbnailImage(ILcom/htc/sunny2/IMediaData;I)Z
    .locals 1
    .parameter "index"
    .parameter "mediaData"
    .parameter "bkgTextureId"

    .prologue
    .line 164
    const/4 v0, 0x0

    return v0
.end method
