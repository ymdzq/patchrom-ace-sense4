.class public Lcom/htc/music/online/FriendsCollectionBrowserActivityGrid;
.super Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;
.source "FriendsCollectionBrowserActivityGrid.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;-><init>()V

    return-void
.end method


# virtual methods
.method protected getFirstCollectionType()I
    .locals 1

    .prologue
    .line 169
    const/16 v0, 0xc8

    return v0
.end method

.method protected getNextCollectionType()I
    .locals 1

    .prologue
    .line 174
    const/16 v0, 0xcd

    return v0
.end method

.method protected getScreenTitleResId()I
    .locals 1

    .prologue
    .line 179
    const v0, 0x7f0701e8

    return v0
.end method

.method initMusicGridViewItem(Lcom/htc/music/widget/gridview/MusicGridViewItem;)V
    .locals 1
    .parameter "gridViewItem"

    .prologue
    .line 106
    new-instance v0, Lcom/htc/music/online/FriendsCollectionBrowserActivityGrid$1;

    invoke-direct {v0, p0}, Lcom/htc/music/online/FriendsCollectionBrowserActivityGrid$1;-><init>(Lcom/htc/music/online/FriendsCollectionBrowserActivityGrid;)V

    invoke-virtual {p1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setTextViewBindListener(Lcom/htc/music/widget/gridview/MusicGridViewItem$ITextViewBind;)V

    .line 139
    new-instance v0, Lcom/htc/music/online/FriendsCollectionBrowserActivityGrid$2;

    invoke-direct {v0, p0}, Lcom/htc/music/online/FriendsCollectionBrowserActivityGrid$2;-><init>(Lcom/htc/music/online/FriendsCollectionBrowserActivityGrid;)V

    invoke-virtual {p1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setViewItemImageGetter(Lcom/htc/music/widget/gridview/MusicGridViewItem$ViewItemImageGetter;)V

    .line 165
    return-void
.end method
