.class public Lcom/htc/music/online/MyCollectionBrowserActivityGrid;
.super Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;
.source "MyCollectionBrowserActivityGrid.java"


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
    .line 106
    const/16 v0, 0xd1

    return v0
.end method

.method protected getNextCollectionType()I
    .locals 1

    .prologue
    .line 111
    const/16 v0, 0xd2

    return v0
.end method

.method protected getScreenTitleResId()I
    .locals 1

    .prologue
    .line 116
    const v0, 0x7f0701ef

    return v0
.end method

.method protected initMusicGridViewItem(Lcom/htc/music/widget/gridview/MusicGridViewItem;)V
    .locals 1
    .parameter "gridViewItem"

    .prologue
    .line 120
    new-instance v0, Lcom/htc/music/online/MyCollectionBrowserActivityGrid$1;

    invoke-direct {v0, p0}, Lcom/htc/music/online/MyCollectionBrowserActivityGrid$1;-><init>(Lcom/htc/music/online/MyCollectionBrowserActivityGrid;)V

    invoke-virtual {p1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setTextViewBindListener(Lcom/htc/music/widget/gridview/MusicGridViewItem$ITextViewBind;)V

    .line 154
    new-instance v0, Lcom/htc/music/online/MyCollectionBrowserActivityGrid$2;

    invoke-direct {v0, p0}, Lcom/htc/music/online/MyCollectionBrowserActivityGrid$2;-><init>(Lcom/htc/music/online/MyCollectionBrowserActivityGrid;)V

    invoke-virtual {p1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setViewItemImageGetter(Lcom/htc/music/widget/gridview/MusicGridViewItem$ViewItemImageGetter;)V

    .line 180
    return-void
.end method
