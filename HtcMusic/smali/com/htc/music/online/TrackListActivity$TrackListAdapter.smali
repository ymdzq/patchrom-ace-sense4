.class Lcom/htc/music/online/TrackListActivity$TrackListAdapter;
.super Landroid/widget/BaseAdapter;
.source "TrackListActivity.java"

# interfaces
.implements Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;
.implements Lcom/htc/music/util/AsyncImageDecoder$IOnlineImageDecodeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/online/TrackListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TrackListAdapter"
.end annotation


# static fields
.field private static final FLAG_LOADING_ITEM:Ljava/lang/String; = "loadingItem"


# instance fields
.field private mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

.field mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLoadingView:Landroid/view/View;

.field private mParentActivity:Lcom/htc/music/online/TrackListActivity;

.field final synthetic this$0:Lcom/htc/music/online/TrackListActivity;


# direct methods
.method public constructor <init>(Lcom/htc/music/online/TrackListActivity;Landroid/content/Context;Lcom/htc/music/online/TrackListActivity;)V
    .locals 9
    .parameter
    .parameter "context"
    .parameter "parentActivity"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 716
    iput-object p1, p0, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->this$0:Lcom/htc/music/online/TrackListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 712
    iput-object v0, p0, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    .line 713
    iput-object v0, p0, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->mLoadingView:Landroid/view/View;

    .line 717
    iput-object p3, p0, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->mParentActivity:Lcom/htc/music/online/TrackListActivity;

    .line 719
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 721
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020058

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 723
    .local v7, b:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 724
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 725
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 727
    const/4 v4, 0x1

    .line 728
    .local v4, height:I
    if-eqz p2, :cond_0

    .line 729
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 730
    .local v8, rsc:Landroid/content/res/Resources;
    if-eqz v8, :cond_0

    .line 731
    const v0, 0x7f0a000a

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 734
    .end local v8           #rsc:Landroid/content/res/Resources;
    :cond_0
    new-instance v0, Lcom/htc/music/util/AsyncImageDecoder;

    const/4 v6, 0x1

    move-object v1, p2

    move-object v2, p0

    move-object v3, p0

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/util/AsyncImageDecoder;-><init>(Landroid/content/Context;Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;Lcom/htc/music/util/AsyncImageDecoder$IOnlineImageDecodeListener;IIZ)V

    iput-object v0, p0, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    .line 735
    return-void
.end method

.method static synthetic access$200(Lcom/htc/music/online/TrackListActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 708
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/online/TrackListActivity$TrackListAdapter;)Lcom/htc/music/online/TrackListActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 708
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->mParentActivity:Lcom/htc/music/online/TrackListActivity;

    return-object v0
.end method

.method private setAlbumArtIcon(Landroid/content/Context;Lcom/htc/widget/HtcListItemTileImage;Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "context"
    .parameter "tileImg"
    .parameter "bmp"

    .prologue
    .line 1063
    if-nez p1, :cond_0

    .line 1064
    const-string v2, "[TrackListActivity]"

    const-string v3, "[setAlbumArtIcon(Context, HtcListItemTileImage, Bitmap)] context cannot be null!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    :goto_0
    return-void

    .line 1067
    :cond_0
    if-nez p2, :cond_1

    .line 1068
    const-string v2, "[TrackListActivity]"

    const-string v3, "[setAlbumArtIcon(Context, HtcListItemTileImage, Bitmap)] tileImg cannot be null!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1071
    :cond_1
    if-nez p3, :cond_2

    .line 1072
    const-string v2, "[TrackListActivity]"

    const-string v3, "[setAlbumArtIcon(Context, HtcListItemTileImage, Bitmap)] bmp cannot be null!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1076
    :cond_2
    invoke-static {p1, p3}, Lcom/htc/music/online/Util;->drawDefaultSourceIconToBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1077
    .local v1, newBitmap:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 1078
    .local v0, drawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1079
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    .line 1081
    :cond_3
    invoke-virtual {p2, v0}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setAlbumArtIcon(Landroid/content/Context;Lcom/htc/widget/QuickContactBadge;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "context"
    .parameter "qcb"
    .parameter "bmp"

    .prologue
    .line 1033
    if-nez p1, :cond_0

    .line 1034
    const-string v1, "[TrackListActivity]"

    const-string v2, "[setSourceIcon(Context, QuickContactBadge, Bitmap)] context cannot be null!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    :goto_0
    return-void

    .line 1037
    :cond_0
    if-nez p2, :cond_1

    .line 1038
    const-string v1, "[TrackListActivity]"

    const-string v2, "[setSourceIcon(Context, QuickContactBadge, Bitmap)] qcb cannot be null!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1041
    :cond_1
    if-nez p3, :cond_2

    .line 1042
    const-string v1, "[TrackListActivity]"

    const-string v2, "[setSourceIcon(Context, QuickContactBadge, Bitmap)] bmp cannot be null!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1045
    :cond_2
    invoke-static {p1, p3}, Lcom/htc/music/online/Util;->drawDefaultSourceIconToBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1046
    .local v0, newBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1047
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    .line 1049
    :cond_3
    invoke-virtual {p2, v0}, Lcom/htc/widget/QuickContactBadge;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private setBubbleImage(Lcom/htc/widget/HtcListItemMessageBody;I)V
    .locals 6
    .parameter "mb"
    .parameter "resID"

    .prologue
    .line 1013
    if-nez p1, :cond_1

    .line 1014
    const-string v4, "[TrackListActivity]"

    const-string v5, "[setBubbleImage] mb cannot be null!"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    :cond_0
    :goto_0
    return-void

    .line 1017
    :cond_1
    invoke-virtual {p1}, Lcom/htc/widget/HtcListItemMessageBody;->getChildCount()I

    move-result v2

    .line 1019
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_0

    .line 1020
    invoke-virtual {p1, v3}, Lcom/htc/widget/HtcListItemMessageBody;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1021
    .local v1, child:Landroid/view/View;
    instance-of v4, v1, Lcom/htc/widget/HtcListItemBubbleCount;

    if-eqz v4, :cond_2

    move-object v0, v1

    .line 1022
    check-cast v0, Lcom/htc/widget/HtcListItemBubbleCount;

    .line 1023
    .local v0, bc:Lcom/htc/widget/HtcListItemBubbleCount;
    if-eqz v0, :cond_0

    .line 1024
    const-string v4, " "

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcListItemBubbleCount;->setBubbleCount(Ljava/lang/String;)V

    .line 1025
    invoke-virtual {v0, p2}, Lcom/htc/widget/HtcListItemBubbleCount;->setBackgroundResource(I)V

    goto :goto_0

    .line 1019
    .end local v0           #bc:Lcom/htc/widget/HtcListItemBubbleCount;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private setImageOnListViewWithDesc(Landroid/view/View;Landroid/graphics/Bitmap;I)V
    .locals 5
    .parameter "ll"
    .parameter "bitmap"
    .parameter "position"

    .prologue
    .line 1136
    if-nez p1, :cond_1

    .line 1137
    const-string v3, "[TrackListActivity]"

    const-string v4, "[setImageOnListViewWithDesc] ll cannot be null!"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    :cond_0
    :goto_0
    return-void

    .line 1141
    :cond_1
    const v3, 0x7f0800b2

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemMessageBody;

    .line 1142
    .local v2, messageBody:Lcom/htc/widget/HtcListItemMessageBody;
    if-nez v2, :cond_2

    .line 1143
    const-string v3, "[TrackListActivity]"

    const-string v4, "[setImageOnListViewWithDesc] messageBody cannot be null!"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1147
    :cond_2
    invoke-virtual {v2}, Lcom/htc/widget/HtcListItemMessageBody;->getQuickContactBadge()Lcom/htc/widget/QuickContactBadge;

    move-result-object v0

    .line 1148
    .local v0, albumArt:Lcom/htc/widget/QuickContactBadge;
    if-nez v0, :cond_3

    .line 1149
    const-string v3, "[TrackListActivity]"

    const-string v4, "[setImageOnListViewWithDesc] albumArt cannot be null!"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1153
    :cond_3
    invoke-virtual {v0}, Lcom/htc/widget/QuickContactBadge;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1154
    .local v1, integer:Ljava/lang/Integer;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p3, :cond_0

    .line 1155
    iget-object v3, p0, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->this$0:Lcom/htc/music/online/TrackListActivity;

    invoke-direct {p0, v3, v0, p2}, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->setAlbumArtIcon(Landroid/content/Context;Lcom/htc/widget/QuickContactBadge;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private setImageOnListViewWithoutDesc(Landroid/view/View;Landroid/graphics/Bitmap;I)V
    .locals 4
    .parameter "ll"
    .parameter "bitmap"
    .parameter "position"

    .prologue
    .line 1160
    const v2, 0x7f080024

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItemTileImage;

    .line 1162
    .local v0, albumArt:Lcom/htc/widget/HtcListItemTileImage;
    if-nez v0, :cond_1

    .line 1163
    const-string v2, "[TrackListActivity]"

    const-string v3, "[setImageOnListViewWithoutDesc] albumArt cannot be null!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    :cond_0
    :goto_0
    return-void

    .line 1167
    :cond_1
    invoke-virtual {v0}, Lcom/htc/widget/HtcListItemTileImage;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1168
    .local v1, integer:Ljava/lang/Integer;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p3, :cond_0

    .line 1169
    iget-object v2, p0, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->this$0:Lcom/htc/music/online/TrackListActivity;

    invoke-direct {p0, v2, v0, p2}, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->setAlbumArtIcon(Landroid/content/Context;Lcom/htc/widget/HtcListItemTileImage;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 739
    iget-object v1, p0, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->this$0:Lcom/htc/music/online/TrackListActivity;

    iget-object v1, v1, Lcom/htc/music/online/TrackListActivity;->mTrackList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 740
    iget-object v1, p0, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->this$0:Lcom/htc/music/online/TrackListActivity;

    iget-object v1, v1, Lcom/htc/music/online/TrackListActivity;->mTrackList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 741
    .local v0, cnt:I
    iget-object v1, p0, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->this$0:Lcom/htc/music/online/TrackListActivity;

    invoke-virtual {v1}, Lcom/htc/music/online/TrackListActivity;->haveMore()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->this$0:Lcom/htc/music/online/TrackListActivity;

    iget-boolean v1, v1, Lcom/htc/music/online/TrackListActivity;->mPrepareGettingMore:Z

    if-eqz v1, :cond_0

    .line 742
    add-int/lit8 v0, v0, 0x1

    .line 746
    .end local v0           #cnt:I
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 751
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->this$0:Lcom/htc/music/online/TrackListActivity;

    iget-object v0, v0, Lcom/htc/music/online/TrackListActivity;->mTrackList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->this$0:Lcom/htc/music/online/TrackListActivity;

    iget-object v0, v0, Lcom/htc/music/online/TrackListActivity;->mTrackList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 752
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->this$0:Lcom/htc/music/online/TrackListActivity;

    iget-object v0, v0, Lcom/htc/music/online/TrackListActivity;->mTrackList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 754
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 759
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "pos"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 769
    iget-object v1, p0, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->mParentActivity:Lcom/htc/music/online/TrackListActivity;

    .line 770
    .local v1, tempActivity:Lcom/htc/music/online/TrackListActivity;
    if-nez v1, :cond_1

    .line 771
    const-string v2, "[TrackListActivity]"

    const-string v3, "TrackListAdapter.getView(int,View,ViewGroup):tempActivity == null."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    .end local p2
    :cond_0
    :goto_0
    return-object p2

    .line 774
    .restart local p2
    :cond_1
    iget-object v2, p0, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->this$0:Lcom/htc/music/online/TrackListActivity;

    iget-object v2, v2, Lcom/htc/music/online/TrackListActivity;->mTrackList:Ljava/util/ArrayList;

    if-nez v2, :cond_2

    .line 775
    const-string v2, "[TrackListActivity]"

    const-string v3, "TrackListAdapter.getView(int,View,ViewGroup):mTrackList == null."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 779
    :cond_2
    const/4 v0, 0x0

    .line 780
    .local v0, curSong:Lcom/htc/music/online/sinamusic/WrapperSong;
    iget-object v2, p0, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->this$0:Lcom/htc/music/online/TrackListActivity;

    iget-object v2, v2, Lcom/htc/music/online/TrackListActivity;->mTrackList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, p1, :cond_3

    .line 781
    iget-object v2, p0, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->this$0:Lcom/htc/music/online/TrackListActivity;

    iget-object v2, v2, Lcom/htc/music/online/TrackListActivity;->mTrackList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #curSong:Lcom/htc/music/online/sinamusic/WrapperSong;
    check-cast v0, Lcom/htc/music/online/sinamusic/WrapperSong;

    .line 791
    .restart local v0       #curSong:Lcom/htc/music/online/sinamusic/WrapperSong;
    if-eqz v0, :cond_0

    .line 795
    iget-object v2, p0, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->this$0:Lcom/htc/music/online/TrackListActivity;

    iget v2, v2, Lcom/htc/music/online/TrackListActivity;->mListViewType:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 797
    :pswitch_0
    invoke-virtual {p0, p2, v0, p3, p1}, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->getViewWithDescription(Landroid/view/View;Lcom/htc/music/online/sinamusic/WrapperSong;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 783
    :cond_3
    iget-object v2, p0, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->mLoadingView:Landroid/view/View;

    if-nez v2, :cond_4

    .line 784
    iget-object v2, p0, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030016

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->mLoadingView:Landroid/view/View;

    .line 785
    iget-object v2, p0, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->mLoadingView:Landroid/view/View;

    const-string v3, "loadingItem"

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 787
    :cond_4
    iget-object v2, p0, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->this$0:Lcom/htc/music/online/TrackListActivity;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/htc/music/online/TrackListActivity;->mLoadingViewIsShown:Z

    .line 788
    iget-object p2, p0, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->mLoadingView:Landroid/view/View;

    goto :goto_0

    .line 799
    :pswitch_1
    invoke-virtual {p0, p2, v0, p3, p1}, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->getViewWithoutDescription(Landroid/view/View;Lcom/htc/music/online/sinamusic/WrapperSong;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 795
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method getViewWithDescription(Landroid/view/View;Lcom/htc/music/online/sinamusic/WrapperSong;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 14
    .parameter "convertView"
    .parameter "curSong"
    .parameter "parent"
    .parameter "pos"

    .prologue
    .line 807
    if-nez p2, :cond_0

    .line 808
    const-string v1, "[TrackListActivity]"

    const-string v2, "[getViewWithDescription] curSong cannot be null!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, p1

    .line 899
    .end local p1
    .local v9, convertView:Landroid/view/View;
    :goto_0
    return-object v9

    .line 813
    .end local v9           #convertView:Landroid/view/View;
    .restart local p1
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/htc/music/online/TrackListActivity$ViewHolderWithDesc;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 814
    :cond_1
    iget-object v1, p0, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030068

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 815
    new-instance v12, Lcom/htc/music/online/TrackListActivity$ViewHolderWithDesc;

    iget-object v1, p0, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->this$0:Lcom/htc/music/online/TrackListActivity;

    invoke-direct {v12, v1}, Lcom/htc/music/online/TrackListActivity$ViewHolderWithDesc;-><init>(Lcom/htc/music/online/TrackListActivity;)V

    .line 816
    .local v12, holder:Lcom/htc/music/online/TrackListActivity$ViewHolderWithDesc;
    const v1, 0x7f0800b2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItemMessageBody;

    iput-object v1, v12, Lcom/htc/music/online/TrackListActivity$ViewHolderWithDesc;->messageBody:Lcom/htc/widget/HtcListItemMessageBody;

    .line 817
    const v1, 0x7f0800cc

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcRimImageButton;

    iput-object v1, v12, Lcom/htc/music/online/TrackListActivity$ViewHolderWithDesc;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    .line 818
    iget-object v1, v12, Lcom/htc/music/online/TrackListActivity$ViewHolderWithDesc;->messageBody:Lcom/htc/widget/HtcListItemMessageBody;

    invoke-virtual {v1}, Lcom/htc/widget/HtcListItemMessageBody;->getQuickContactBadge()Lcom/htc/widget/QuickContactBadge;

    move-result-object v1

    iput-object v1, v12, Lcom/htc/music/online/TrackListActivity$ViewHolderWithDesc;->listItemAlbumArt:Lcom/htc/widget/QuickContactBadge;

    .line 820
    iget-object v1, v12, Lcom/htc/music/online/TrackListActivity$ViewHolderWithDesc;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    const v2, 0x208001f

    const v3, 0x2080020

    const v5, 0x2080021

    invoke-virtual {v1, v2, v3, v5}, Lcom/htc/widget/HtcRimImageButton;->setButtonBackgroundResource(III)V

    .line 824
    iget-object v1, v12, Lcom/htc/music/online/TrackListActivity$ViewHolderWithDesc;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcRimImageButton;->setFocusable(Z)V

    .line 825
    iget-object v1, v12, Lcom/htc/music/online/TrackListActivity$ViewHolderWithDesc;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    const v2, 0x7f020029

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcRimImageButton;->setIconResource(I)V

    .line 826
    iget-object v1, v12, Lcom/htc/music/online/TrackListActivity$ViewHolderWithDesc;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcRimImageButton;->setVisibility(I)V

    .line 827
    iget-object v1, v12, Lcom/htc/music/online/TrackListActivity$ViewHolderWithDesc;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    new-instance v2, Lcom/htc/music/online/TrackListActivity$TrackListAdapter$1;

    invoke-direct {v2, p0}, Lcom/htc/music/online/TrackListActivity$TrackListAdapter$1;-><init>(Lcom/htc/music/online/TrackListActivity$TrackListAdapter;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcRimImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 837
    iget-object v1, v12, Lcom/htc/music/online/TrackListActivity$ViewHolderWithDesc;->messageBody:Lcom/htc/widget/HtcListItemMessageBody;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemMessageBody;->setBodyTextMaxLines(I)V

    .line 840
    const v1, 0x7f080059

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItemImageButton;

    iput-object v1, v12, Lcom/htc/music/online/TrackListActivity$ViewHolderWithDesc;->badgeNowPlaying:Lcom/htc/widget/HtcListItemImageButton;

    .line 843
    invoke-virtual {p1, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 851
    :goto_1
    if-eqz v12, :cond_2

    iget-object v1, v12, Lcom/htc/music/online/TrackListActivity$ViewHolderWithDesc;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    if-eqz v1, :cond_2

    .line 852
    iget-object v1, v12, Lcom/htc/music/online/TrackListActivity$ViewHolderWithDesc;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcRimImageButton;->setTag(Ljava/lang/Object;)V

    .line 856
    :cond_2
    if-eqz v12, :cond_3

    iget-object v1, v12, Lcom/htc/music/online/TrackListActivity$ViewHolderWithDesc;->listItemAlbumArt:Lcom/htc/widget/QuickContactBadge;

    if-eqz v1, :cond_3

    .line 857
    iget-object v1, v12, Lcom/htc/music/online/TrackListActivity$ViewHolderWithDesc;->listItemAlbumArt:Lcom/htc/widget/QuickContactBadge;

    new-instance v2, Ljava/lang/Integer;

    move/from16 v0, p4

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/QuickContactBadge;->setTag(Ljava/lang/Object;)V

    .line 860
    :cond_3
    if-eqz v12, :cond_4

    iget-object v1, v12, Lcom/htc/music/online/TrackListActivity$ViewHolderWithDesc;->messageBody:Lcom/htc/widget/HtcListItemMessageBody;

    if-eqz v1, :cond_4

    .line 861
    iget-object v1, v12, Lcom/htc/music/online/TrackListActivity$ViewHolderWithDesc;->messageBody:Lcom/htc/widget/HtcListItemMessageBody;

    invoke-virtual/range {p2 .. p2}, Lcom/htc/music/online/sinamusic/WrapperSong;->getSongName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemMessageBody;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 862
    iget-object v1, v12, Lcom/htc/music/online/TrackListActivity$ViewHolderWithDesc;->messageBody:Lcom/htc/widget/HtcListItemMessageBody;

    invoke-virtual/range {p2 .. p2}, Lcom/htc/music/online/sinamusic/WrapperSong;->getSingerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemMessageBody;->setSecondaryText(Ljava/lang/String;)V

    .line 863
    iget-object v1, v12, Lcom/htc/music/online/TrackListActivity$ViewHolderWithDesc;->messageBody:Lcom/htc/widget/HtcListItemMessageBody;

    invoke-virtual/range {p2 .. p2}, Lcom/htc/music/online/sinamusic/WrapperSong;->getSongDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemMessageBody;->setBodyText(Ljava/lang/String;)V

    .line 867
    :cond_4
    if-eqz v12, :cond_5

    iget-object v1, v12, Lcom/htc/music/online/TrackListActivity$ViewHolderWithDesc;->badgeNowPlaying:Lcom/htc/widget/HtcListItemImageButton;

    if-eqz v1, :cond_5

    .line 868
    invoke-virtual/range {p2 .. p2}, Lcom/htc/music/online/sinamusic/WrapperSong;->getSongId()I

    move-result v7

    .line 870
    .local v7, audioId:I
    :try_start_0
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v1, :cond_9

    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getSongId()I

    move-result v1

    if-ne v7, v1, :cond_9

    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->isOnlineMode()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 871
    iget-object v1, v12, Lcom/htc/music/online/TrackListActivity$ViewHolderWithDesc;->badgeNowPlaying:Lcom/htc/widget/HtcListItemImageButton;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 872
    iget-object v1, v12, Lcom/htc/music/online/TrackListActivity$ViewHolderWithDesc;->badgeNowPlaying:Lcom/htc/widget/HtcListItemImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 881
    .end local v7           #audioId:I
    :cond_5
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/htc/music/online/sinamusic/WrapperSong;->getSongImage()Ljava/lang/String;

    move-result-object v4

    .line 882
    .local v4, songURL:Ljava/lang/String;
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    move/from16 v0, p4

    invoke-virtual {v1, v0}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->pull(I)Lcom/htc/music/util/MBitmap;

    move-result-object v13

    .line 883
    .local v13, item:Lcom/htc/music/util/MBitmap;
    if-nez v13, :cond_a

    const/4 v8, 0x0

    .line 884
    .local v8, bitmap:Landroid/graphics/Bitmap;
    :goto_3
    if-nez v13, :cond_b

    const/4 v10, 0x0

    .line 885
    .local v10, decodePath:Ljava/lang/String;
    :goto_4
    if-eqz v8, :cond_6

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_6

    if-eqz v8, :cond_d

    invoke-static {v10, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 886
    :cond_6
    iget-object v1, p0, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-eqz v1, :cond_c

    .line 887
    iget-object v1, p0, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    const/4 v2, 0x1

    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v4, v6, v3

    move/from16 v3, p4

    move/from16 v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/htc/music/util/AsyncImageDecoder;->add(ZILjava/lang/String;I[Ljava/lang/Object;)V

    .line 891
    :goto_5
    if-eqz v12, :cond_7

    iget-object v1, v12, Lcom/htc/music/online/TrackListActivity$ViewHolderWithDesc;->listItemAlbumArt:Lcom/htc/widget/QuickContactBadge;

    if-eqz v1, :cond_7

    .line 892
    iget-object v1, v12, Lcom/htc/music/online/TrackListActivity$ViewHolderWithDesc;->listItemAlbumArt:Lcom/htc/widget/QuickContactBadge;

    iget-object v2, p0, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, v2}, Lcom/htc/widget/QuickContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    :goto_6
    move-object v9, p1

    .line 899
    .end local p1
    .restart local v9       #convertView:Landroid/view/View;
    goto/16 :goto_0

    .line 847
    .end local v4           #songURL:Ljava/lang/String;
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .end local v9           #convertView:Landroid/view/View;
    .end local v10           #decodePath:Ljava/lang/String;
    .end local v12           #holder:Lcom/htc/music/online/TrackListActivity$ViewHolderWithDesc;
    .end local v13           #item:Lcom/htc/music/util/MBitmap;
    .restart local p1
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/htc/music/online/TrackListActivity$ViewHolderWithDesc;

    .restart local v12       #holder:Lcom/htc/music/online/TrackListActivity$ViewHolderWithDesc;
    goto/16 :goto_1

    .line 874
    .restart local v7       #audioId:I
    :cond_9
    :try_start_1
    iget-object v1, v12, Lcom/htc/music/online/TrackListActivity$ViewHolderWithDesc;->badgeNowPlaying:Lcom/htc/widget/HtcListItemImageButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 876
    :catch_0
    move-exception v11

    .line 877
    .local v11, e:Landroid/os/RemoteException;
    invoke-virtual {v11}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 883
    .end local v7           #audioId:I
    .end local v11           #e:Landroid/os/RemoteException;
    .restart local v4       #songURL:Ljava/lang/String;
    .restart local v13       #item:Lcom/htc/music/util/MBitmap;
    :cond_a
    invoke-virtual {v13}, Lcom/htc/music/util/MBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    goto :goto_3

    .line 884
    .restart local v8       #bitmap:Landroid/graphics/Bitmap;
    :cond_b
    invoke-virtual {v13}, Lcom/htc/music/util/MBitmap;->getPath()Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    .line 889
    .restart local v10       #decodePath:Ljava/lang/String;
    :cond_c
    const-string v1, "[TrackListActivity]"

    const-string v2, "[getViewWithDescription] mDecoder cannot be null!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 895
    :cond_d
    if-eqz v12, :cond_7

    iget-object v1, v12, Lcom/htc/music/online/TrackListActivity$ViewHolderWithDesc;->listItemAlbumArt:Lcom/htc/widget/QuickContactBadge;

    if-eqz v1, :cond_7

    .line 896
    iget-object v1, p0, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->this$0:Lcom/htc/music/online/TrackListActivity;

    iget-object v2, v12, Lcom/htc/music/online/TrackListActivity$ViewHolderWithDesc;->listItemAlbumArt:Lcom/htc/widget/QuickContactBadge;

    invoke-direct {p0, v1, v2, v8}, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->setAlbumArtIcon(Landroid/content/Context;Lcom/htc/widget/QuickContactBadge;Landroid/graphics/Bitmap;)V

    goto :goto_6
.end method

.method getViewWithoutDescription(Landroid/view/View;Lcom/htc/music/online/sinamusic/WrapperSong;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 17
    .parameter "convertView"
    .parameter "curSong"
    .parameter "parent"
    .parameter "pos"

    .prologue
    .line 904
    if-nez p2, :cond_0

    .line 905
    const-string v1, "[TrackListActivity]"

    const-string v2, "[getViewWithoutDescription] curSong cannot be null!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v10, p1

    .line 1004
    .end local p1
    .local v10, convertView:Landroid/view/View;
    :goto_0
    return-object v10

    .line 909
    .end local v10           #convertView:Landroid/view/View;
    .restart local p1
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/htc/music/online/TrackListActivity$ViewHolderWithoutDesc;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 910
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030009

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 911
    new-instance v13, Lcom/htc/music/online/TrackListActivity$ViewHolderWithoutDesc;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->this$0:Lcom/htc/music/online/TrackListActivity;

    invoke-direct {v13, v1}, Lcom/htc/music/online/TrackListActivity$ViewHolderWithoutDesc;-><init>(Lcom/htc/music/online/TrackListActivity;)V

    .line 912
    .local v13, holder:Lcom/htc/music/online/TrackListActivity$ViewHolderWithoutDesc;
    const v1, 0x7f080025

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v1, v13, Lcom/htc/music/online/TrackListActivity$ViewHolderWithoutDesc;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    .line 913
    const v1, 0x7f080027

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcRimImageButton;

    iput-object v1, v13, Lcom/htc/music/online/TrackListActivity$ViewHolderWithoutDesc;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    .line 914
    iget-object v1, v13, Lcom/htc/music/online/TrackListActivity$ViewHolderWithoutDesc;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    const v2, 0x208001f

    const v3, 0x2080020

    const v5, 0x2080021

    invoke-virtual {v1, v2, v3, v5}, Lcom/htc/widget/HtcRimImageButton;->setButtonBackgroundResource(III)V

    .line 918
    iget-object v1, v13, Lcom/htc/music/online/TrackListActivity$ViewHolderWithoutDesc;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcRimImageButton;->setFocusable(Z)V

    .line 919
    iget-object v1, v13, Lcom/htc/music/online/TrackListActivity$ViewHolderWithoutDesc;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    const v2, 0x7f020029

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcRimImageButton;->setIconResource(I)V

    .line 920
    iget-object v1, v13, Lcom/htc/music/online/TrackListActivity$ViewHolderWithoutDesc;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcRimImageButton;->setVisibility(I)V

    .line 921
    iget-object v1, v13, Lcom/htc/music/online/TrackListActivity$ViewHolderWithoutDesc;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    new-instance v2, Lcom/htc/music/online/TrackListActivity$TrackListAdapter$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/htc/music/online/TrackListActivity$TrackListAdapter$2;-><init>(Lcom/htc/music/online/TrackListActivity$TrackListAdapter;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcRimImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 930
    const v1, 0x7f080024

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItemTileImage;

    iput-object v1, v13, Lcom/htc/music/online/TrackListActivity$ViewHolderWithoutDesc;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    .line 932
    const v1, 0x7f080026

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItemImageButton;

    iput-object v1, v13, Lcom/htc/music/online/TrackListActivity$ViewHolderWithoutDesc;->badgeNowPlayingWithoutDesc:Lcom/htc/widget/HtcListItemImageButton;

    .line 933
    iget-object v1, v13, Lcom/htc/music/online/TrackListActivity$ViewHolderWithoutDesc;->badgeNowPlayingWithoutDesc:Lcom/htc/widget/HtcListItemImageButton;

    if-eqz v1, :cond_2

    .line 934
    iget-object v1, v13, Lcom/htc/music/online/TrackListActivity$ViewHolderWithoutDesc;->badgeNowPlayingWithoutDesc:Lcom/htc/widget/HtcListItemImageButton;

    const v2, 0x2080089

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    .line 936
    :cond_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 943
    :goto_1
    if-eqz v13, :cond_5

    iget-object v1, v13, Lcom/htc/music/online/TrackListActivity$ViewHolderWithoutDesc;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    if-eqz v1, :cond_5

    .line 944
    iget-object v1, v13, Lcom/htc/music/online/TrackListActivity$ViewHolderWithoutDesc;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual/range {p2 .. p2}, Lcom/htc/music/online/sinamusic/WrapperSong;->getSongName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 945
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v15, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 946
    .local v15, sb:Ljava/lang/StringBuilder;
    invoke-virtual/range {p2 .. p2}, Lcom/htc/music/online/sinamusic/WrapperSong;->getAlbumName()Ljava/lang/String;

    move-result-object v7

    .line 947
    .local v7, albumName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/htc/music/online/sinamusic/WrapperSong;->getSingerName()Ljava/lang/String;

    move-result-object v16

    .line 948
    .local v16, singerName:Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 949
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 950
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    .line 951
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 952
    const-string v1, " - "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 955
    :cond_3
    if-eqz v16, :cond_4

    .line 956
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 958
    :cond_4
    iget-object v1, v13, Lcom/htc/music/online/TrackListActivity$ViewHolderWithoutDesc;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 962
    .end local v7           #albumName:Ljava/lang/String;
    .end local v15           #sb:Ljava/lang/StringBuilder;
    .end local v16           #singerName:Ljava/lang/String;
    :cond_5
    if-eqz v13, :cond_6

    iget-object v1, v13, Lcom/htc/music/online/TrackListActivity$ViewHolderWithoutDesc;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    if-eqz v1, :cond_6

    .line 963
    iget-object v1, v13, Lcom/htc/music/online/TrackListActivity$ViewHolderWithoutDesc;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcRimImageButton;->setTag(Ljava/lang/Object;)V

    .line 967
    :cond_6
    if-eqz v13, :cond_7

    iget-object v1, v13, Lcom/htc/music/online/TrackListActivity$ViewHolderWithoutDesc;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    if-eqz v1, :cond_7

    .line 968
    iget-object v1, v13, Lcom/htc/music/online/TrackListActivity$ViewHolderWithoutDesc;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    new-instance v2, Ljava/lang/Integer;

    move/from16 v0, p4

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemTileImage;->setTag(Ljava/lang/Object;)V

    .line 972
    :cond_7
    if-eqz v13, :cond_8

    iget-object v1, v13, Lcom/htc/music/online/TrackListActivity$ViewHolderWithoutDesc;->badgeNowPlayingWithoutDesc:Lcom/htc/widget/HtcListItemImageButton;

    if-eqz v1, :cond_8

    .line 973
    invoke-virtual/range {p2 .. p2}, Lcom/htc/music/online/sinamusic/WrapperSong;->getSongId()I

    move-result v8

    .line 975
    .local v8, audioId:I
    :try_start_0
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v1, :cond_c

    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getSongId()I

    move-result v1

    if-ne v8, v1, :cond_c

    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->isOnlineMode()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 976
    iget-object v1, v13, Lcom/htc/music/online/TrackListActivity$ViewHolderWithoutDesc;->badgeNowPlayingWithoutDesc:Lcom/htc/widget/HtcListItemImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 985
    .end local v8           #audioId:I
    :cond_8
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/htc/music/online/sinamusic/WrapperSong;->getSongImage()Ljava/lang/String;

    move-result-object v4

    .line 986
    .local v4, songURL:Ljava/lang/String;
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    move/from16 v0, p4

    invoke-virtual {v1, v0}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->pull(I)Lcom/htc/music/util/MBitmap;

    move-result-object v14

    .line 987
    .local v14, item:Lcom/htc/music/util/MBitmap;
    if-nez v14, :cond_d

    const/4 v9, 0x0

    .line 988
    .local v9, bitmap:Landroid/graphics/Bitmap;
    :goto_3
    if-nez v14, :cond_e

    const/4 v11, 0x0

    .line 989
    .local v11, decodePath:Ljava/lang/String;
    :goto_4
    if-eqz v9, :cond_9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_9

    if-eqz v9, :cond_10

    invoke-static {v11, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 990
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-eqz v1, :cond_f

    .line 991
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    const/4 v2, 0x1

    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v4, v6, v3

    move/from16 v3, p4

    move/from16 v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/htc/music/util/AsyncImageDecoder;->add(ZILjava/lang/String;I[Ljava/lang/Object;)V

    .line 995
    :goto_5
    if-eqz v13, :cond_a

    iget-object v1, v13, Lcom/htc/music/online/TrackListActivity$ViewHolderWithoutDesc;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    if-eqz v1, :cond_a

    .line 996
    iget-object v1, v13, Lcom/htc/music/online/TrackListActivity$ViewHolderWithoutDesc;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_a
    :goto_6
    move-object/from16 v10, p1

    .line 1004
    .end local p1
    .restart local v10       #convertView:Landroid/view/View;
    goto/16 :goto_0

    .line 940
    .end local v4           #songURL:Ljava/lang/String;
    .end local v9           #bitmap:Landroid/graphics/Bitmap;
    .end local v10           #convertView:Landroid/view/View;
    .end local v11           #decodePath:Ljava/lang/String;
    .end local v13           #holder:Lcom/htc/music/online/TrackListActivity$ViewHolderWithoutDesc;
    .end local v14           #item:Lcom/htc/music/util/MBitmap;
    .restart local p1
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/music/online/TrackListActivity$ViewHolderWithoutDesc;

    .restart local v13       #holder:Lcom/htc/music/online/TrackListActivity$ViewHolderWithoutDesc;
    goto/16 :goto_1

    .line 978
    .restart local v8       #audioId:I
    :cond_c
    :try_start_1
    iget-object v1, v13, Lcom/htc/music/online/TrackListActivity$ViewHolderWithoutDesc;->badgeNowPlayingWithoutDesc:Lcom/htc/widget/HtcListItemImageButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 980
    :catch_0
    move-exception v12

    .line 981
    .local v12, e:Landroid/os/RemoteException;
    invoke-virtual {v12}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 987
    .end local v8           #audioId:I
    .end local v12           #e:Landroid/os/RemoteException;
    .restart local v4       #songURL:Ljava/lang/String;
    .restart local v14       #item:Lcom/htc/music/util/MBitmap;
    :cond_d
    invoke-virtual {v14}, Lcom/htc/music/util/MBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    goto :goto_3

    .line 988
    .restart local v9       #bitmap:Landroid/graphics/Bitmap;
    :cond_e
    invoke-virtual {v14}, Lcom/htc/music/util/MBitmap;->getPath()Ljava/lang/String;

    move-result-object v11

    goto :goto_4

    .line 993
    .restart local v11       #decodePath:Ljava/lang/String;
    :cond_f
    const-string v1, "[TrackListActivity]"

    const-string v2, "[getViewWithDescription] mDecoder cannot be null!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 999
    :cond_10
    if-eqz v13, :cond_a

    iget-object v1, v13, Lcom/htc/music/online/TrackListActivity$ViewHolderWithoutDesc;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    if-eqz v1, :cond_a

    .line 1000
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->this$0:Lcom/htc/music/online/TrackListActivity;

    iget-object v2, v13, Lcom/htc/music/online/TrackListActivity$ViewHolderWithoutDesc;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v9}, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->setAlbumArtIcon(Landroid/content/Context;Lcom/htc/widget/HtcListItemTileImage;Landroid/graphics/Bitmap;)V

    goto :goto_6
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->this$0:Lcom/htc/music/online/TrackListActivity;

    iget-object v0, v0, Lcom/htc/music/online/TrackListActivity;->mTrackList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->this$0:Lcom/htc/music/online/TrackListActivity;

    iget-object v0, v0, Lcom/htc/music/online/TrackListActivity;->mTrackList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 764
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->this$0:Lcom/htc/music/online/TrackListActivity;

    iget-object v0, v0, Lcom/htc/music/online/TrackListActivity;->mTrackList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->this$0:Lcom/htc/music/online/TrackListActivity;

    iget-object v0, v0, Lcom/htc/music/online/TrackListActivity;->mTrackList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs onImageDecoded(ILandroid/graphics/Bitmap;J[Ljava/lang/Object;)V
    .locals 9
    .parameter "position"
    .parameter "bitmap"
    .parameter "timeStamp"
    .parameter "varargs"

    .prologue
    const/4 v8, 0x0

    .line 1096
    if-nez p2, :cond_1

    .line 1127
    :cond_0
    :goto_0
    return-void

    .line 1097
    :cond_1
    iget-object v7, p0, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->mParentActivity:Lcom/htc/music/online/TrackListActivity;

    #getter for: Lcom/htc/music/online/TrackListActivity;->mTrackListView:Lcom/htc/widget/HtcListView;
    invoke-static {v7}, Lcom/htc/music/online/TrackListActivity;->access$600(Lcom/htc/music/online/TrackListActivity;)Lcom/htc/widget/HtcListView;

    move-result-object v4

    .line 1098
    .local v4, listView:Lcom/htc/widget/HtcListView;
    invoke-virtual {v4}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v2

    .line 1099
    .local v2, childCount:I
    if-gtz v2, :cond_2

    .line 1100
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 1104
    :cond_2
    const/4 v6, 0x0

    .line 1105
    .local v6, path:Ljava/lang/String;
    if-eqz p5, :cond_3

    array-length v7, p5

    if-lez v7, :cond_3

    aget-object v7, p5, v8

    if-eqz v7, :cond_3

    aget-object v7, p5, v8

    instance-of v7, v7, Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 1106
    aget-object v6, p5, v8

    .end local v6           #path:Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 1108
    .restart local v6       #path:Ljava/lang/String;
    :cond_3
    new-instance v1, Lcom/htc/music/util/MBitmap;

    invoke-direct {v1, p2, v6}, Lcom/htc/music/util/MBitmap;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 1109
    .local v1, b:Lcom/htc/music/util/MBitmap;
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    invoke-virtual {v7, p1, v1, p3, p4}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->push(ILcom/htc/music/util/MBitmap;J)Z

    move-result v0

    .line 1110
    .local v0, addToCache:Z
    if-eqz v0, :cond_0

    .line 1111
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_0

    .line 1112
    invoke-virtual {v4, v3}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1114
    .local v5, ll:Landroid/view/View;
    if-eqz v5, :cond_4

    .line 1115
    iget-object v7, p0, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->this$0:Lcom/htc/music/online/TrackListActivity;

    iget v7, v7, Lcom/htc/music/online/TrackListActivity;->mListViewType:I

    packed-switch v7, :pswitch_data_0

    .line 1111
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1117
    :pswitch_0
    invoke-direct {p0, v5, p2, p1}, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->setImageOnListViewWithDesc(Landroid/view/View;Landroid/graphics/Bitmap;I)V

    goto :goto_2

    .line 1120
    :pswitch_1
    invoke-direct {p0, v5, p2, p1}, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->setImageOnListViewWithoutDesc(Landroid/view/View;Landroid/graphics/Bitmap;I)V

    goto :goto_2

    .line 1115
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public varargs onOnlineImageDecoded(ILandroid/graphics/Bitmap;J[Ljava/lang/Object;)V
    .locals 0
    .parameter "position"
    .parameter "bitmap"
    .parameter "timeStamp"
    .parameter "varargs"

    .prologue
    .line 1132
    invoke-virtual/range {p0 .. p5}, Lcom/htc/music/online/TrackListActivity$TrackListAdapter;->onImageDecoded(ILandroid/graphics/Bitmap;J[Ljava/lang/Object;)V

    .line 1133
    return-void
.end method
