.class Lcom/htc/music/online/FriendsCollectionBrowserActivityGrid$1;
.super Ljava/lang/Object;
.source "FriendsCollectionBrowserActivityGrid.java"

# interfaces
.implements Lcom/htc/music/widget/gridview/MusicGridViewItem$ITextViewBind;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/online/FriendsCollectionBrowserActivityGrid;->initMusicGridViewItem(Lcom/htc/music/widget/gridview/MusicGridViewItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/online/FriendsCollectionBrowserActivityGrid;


# direct methods
.method constructor <init>(Lcom/htc/music/online/FriendsCollectionBrowserActivityGrid;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/htc/music/online/FriendsCollectionBrowserActivityGrid$1;->this$0:Lcom/htc/music/online/FriendsCollectionBrowserActivityGrid;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public textViewBinding(ILcom/htc/sunny2/IMediaData;Landroid/view/View;)Landroid/view/View;
    .locals 9
    .parameter "index"
    .parameter "mediaData"
    .parameter "container"

    .prologue
    const/4 v8, 0x1

    const v7, 0x7f080048

    const v6, 0x7f080047

    const/4 v5, 0x0

    .line 112
    if-nez p3, :cond_1

    .line 113
    iget-object v3, p0, Lcom/htc/music/online/FriendsCollectionBrowserActivityGrid$1;->this$0:Lcom/htc/music/online/FriendsCollectionBrowserActivityGrid;

    invoke-virtual {v3}, Lcom/htc/music/online/FriendsCollectionBrowserActivityGrid;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 114
    .local v2, inflator:Landroid/view/LayoutInflater;
    const v3, 0x7f03002d

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 115
    invoke-virtual {p3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 116
    .local v0, collectionNameView:Landroid/widget/TextView;
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 117
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 118
    invoke-virtual {p3, v6, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 120
    invoke-virtual {p3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 121
    .local v1, creatorNameView:Landroid/widget/TextView;
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 122
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 123
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    invoke-virtual {p3, v7, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 130
    .end local v2           #inflator:Landroid/view/LayoutInflater;
    :goto_0
    iget-object v3, p0, Lcom/htc/music/online/FriendsCollectionBrowserActivityGrid$1;->this$0:Lcom/htc/music/online/FriendsCollectionBrowserActivityGrid;

    iget-object v3, v3, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/online/MusicGridViewUtilForCollection;

    if-eqz v3, :cond_0

    .line 132
    iget-object v3, p0, Lcom/htc/music/online/FriendsCollectionBrowserActivityGrid$1;->this$0:Lcom/htc/music/online/FriendsCollectionBrowserActivityGrid;

    iget-object v3, v3, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/online/MusicGridViewUtilForCollection;

    invoke-virtual {v3, p2}, Lcom/htc/music/online/MusicGridViewUtilForCollection;->getParentMediaDataName(Lcom/htc/sunny2/IMediaData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v3, p0, Lcom/htc/music/online/FriendsCollectionBrowserActivityGrid$1;->this$0:Lcom/htc/music/online/FriendsCollectionBrowserActivityGrid;

    iget-object v3, v3, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/online/MusicGridViewUtilForCollection;

    invoke-virtual {v3, p1}, Lcom/htc/music/online/MusicGridViewUtilForCollection;->getParentMediaDataCreator(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    :cond_0
    return-object p3

    .line 126
    .end local v0           #collectionNameView:Landroid/widget/TextView;
    .end local v1           #creatorNameView:Landroid/widget/TextView;
    :cond_1
    invoke-virtual {p3, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 127
    .restart local v0       #collectionNameView:Landroid/widget/TextView;
    invoke-virtual {p3, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .restart local v1       #creatorNameView:Landroid/widget/TextView;
    goto :goto_0
.end method
