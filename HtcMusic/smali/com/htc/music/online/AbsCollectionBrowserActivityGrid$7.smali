.class Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$7;
.super Ljava/lang/Object;
.source "AbsCollectionBrowserActivityGrid.java"

# interfaces
.implements Lcom/htc/music/online/MusicGridViewUtilForCollection$MusicGridViewItemUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->initMusicGridViewUtil()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;


# direct methods
.method constructor <init>(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;)V
    .locals 0
    .parameter

    .prologue
    .line 959
    iput-object p1, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$7;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChildList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "xxxid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/music/online/sinamusic/WrapperSonglist;",
            ">;"
        }
    .end annotation

    .prologue
    .line 984
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImagePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "xxxid"

    .prologue
    .line 963
    const/4 v0, 0x0

    return-object v0
.end method

.method public notifyAllDataChange()V
    .locals 2

    .prologue
    .line 969
    iget-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$7;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    iget-object v0, v0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getMediaList()Lcom/htc/sunny2/IMediaList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 970
    iget-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$7;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    iget-object v0, v0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->notifyMediaDataChange()V

    .line 974
    :goto_0
    return-void

    .line 972
    :cond_0
    iget-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$7;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    iget-object v0, v0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v1, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$7;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    iget-object v1, v1, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/online/MusicGridViewUtilForCollection;

    invoke-virtual {v1}, Lcom/htc/music/online/MusicGridViewUtilForCollection;->getParentMediaList()Lcom/htc/sunny2/IMediaList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setMediaList(Lcom/htc/sunny2/IMediaList;)V

    goto :goto_0
.end method

.method public notifyViewItemDataChange(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 979
    iget-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$7;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    iget-object v0, v0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->notifyMediaDataInvalidate(I)V

    .line 980
    return-void
.end method
