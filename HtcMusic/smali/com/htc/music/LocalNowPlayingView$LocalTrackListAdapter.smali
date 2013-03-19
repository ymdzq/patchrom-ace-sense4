.class Lcom/htc/music/LocalNowPlayingView$LocalTrackListAdapter;
.super Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;
.source "LocalNowPlayingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/LocalNowPlayingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LocalTrackListAdapter"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/htc/music/NowPlayingViewHelper;ILandroid/database/Cursor;[Ljava/lang/String;[IZ)V
    .locals 0
    .parameter "context"
    .parameter "currentactivity"
    .parameter "layout"
    .parameter "cursor"
    .parameter "from"
    .parameter "to"
    .parameter "disablenowplayingindicator"

    .prologue
    .line 587
    invoke-direct/range {p0 .. p7}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;-><init>(Landroid/content/Context;Lcom/htc/music/NowPlayingViewHelper;ILandroid/database/Cursor;[Ljava/lang/String;[IZ)V

    .line 588
    return-void
.end method


# virtual methods
.method protected copyStringtoBuffer(Landroid/database/Cursor;Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;)V
    .locals 2
    .parameter "cursor"
    .parameter "vh"

    .prologue
    .line 604
    iget v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mTitleIdx:I

    iget-object v1, p2, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    invoke-interface {p1, v0, v1}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 605
    return-void
.end method

.method protected requestImageDecode(Landroid/database/Cursor;Lcom/htc/widget/HtcListItemTileImage;Ljava/lang/String;I)V
    .locals 9
    .parameter "cursor"
    .parameter "albumArt"
    .parameter "art"
    .parameter "artIndex"

    .prologue
    const/4 v7, 0x0

    .line 591
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    invoke-virtual {v0, p4}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->pull(I)Lcom/htc/music/util/MBitmap;

    move-result-object v8

    .line 592
    .local v8, item:Lcom/htc/music/util/MBitmap;
    if-nez v8, :cond_1

    move-object v6, v7

    .line 593
    .local v6, bitmap:Landroid/graphics/Bitmap;
    :goto_0
    if-nez v8, :cond_2

    .line 594
    .local v7, decodePath:Ljava/lang/String;
    :goto_1
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v7, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v5, v1

    move v1, p4

    move-object v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/music/util/AsyncImageDecoder;->add(ILjava/lang/String;II[Ljava/lang/Object;)V

    .line 597
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2, v0}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 601
    :goto_2
    return-void

    .line 592
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    .end local v7           #decodePath:Ljava/lang/String;
    :cond_1
    invoke-virtual {v8}, Lcom/htc/music/util/MBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_0

    .line 593
    .restart local v6       #bitmap:Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual {v8}, Lcom/htc/music/util/MBitmap;->getPath()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 599
    .restart local v7       #decodePath:Ljava/lang/String;
    :cond_3
    invoke-virtual {p2, v6}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2
.end method
