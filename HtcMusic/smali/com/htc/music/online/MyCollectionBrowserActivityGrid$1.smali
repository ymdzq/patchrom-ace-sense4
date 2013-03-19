.class Lcom/htc/music/online/MyCollectionBrowserActivityGrid$1;
.super Ljava/lang/Object;
.source "MyCollectionBrowserActivityGrid.java"

# interfaces
.implements Lcom/htc/music/widget/gridview/MusicGridViewItem$ITextViewBind;


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
    .line 120
    iput-object p1, p0, Lcom/htc/music/online/MyCollectionBrowserActivityGrid$1;->this$0:Lcom/htc/music/online/MyCollectionBrowserActivityGrid;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public textViewBinding(ILcom/htc/sunny2/IMediaData;Landroid/view/View;)Landroid/view/View;
    .locals 5
    .parameter "index"
    .parameter "mediaData"
    .parameter "container"

    .prologue
    const v4, 0x7f080047

    .line 126
    if-nez p3, :cond_1

    .line 127
    iget-object v2, p0, Lcom/htc/music/online/MyCollectionBrowserActivityGrid$1;->this$0:Lcom/htc/music/online/MyCollectionBrowserActivityGrid;

    invoke-virtual {v2}, Lcom/htc/music/online/MyCollectionBrowserActivityGrid;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 128
    .local v1, inflator:Landroid/view/LayoutInflater;
    const v2, 0x7f03002d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 129
    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 130
    .local v0, collectionNameView:Landroid/widget/TextView;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 131
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLines(I)V

    .line 132
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 133
    invoke-virtual {p3, v4, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 145
    .end local v1           #inflator:Landroid/view/LayoutInflater;
    :goto_0
    iget-object v2, p0, Lcom/htc/music/online/MyCollectionBrowserActivityGrid$1;->this$0:Lcom/htc/music/online/MyCollectionBrowserActivityGrid;

    iget-object v2, v2, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/online/MusicGridViewUtilForCollection;

    if-eqz v2, :cond_0

    .line 147
    iget-object v2, p0, Lcom/htc/music/online/MyCollectionBrowserActivityGrid$1;->this$0:Lcom/htc/music/online/MyCollectionBrowserActivityGrid;

    iget-object v2, v2, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/online/MusicGridViewUtilForCollection;

    invoke-virtual {v2, p2}, Lcom/htc/music/online/MusicGridViewUtilForCollection;->getParentMediaDataName(Lcom/htc/sunny2/IMediaData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    :cond_0
    return-object p3

    .line 141
    .end local v0           #collectionNameView:Landroid/widget/TextView;
    :cond_1
    invoke-virtual {p3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .restart local v0       #collectionNameView:Landroid/widget/TextView;
    goto :goto_0
.end method
