.class Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;
.super Landroid/widget/BaseAdapter;
.source "LandingPageActivity.java"

# interfaces
.implements Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;
.implements Lcom/htc/music/util/AsyncImageDecoder$IOnlineImageDecodeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/LandingPageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecentAlbumListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/music/LandingPageActivity;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/music/LandingPageActivity;)V
    .locals 10
    .parameter "context"
    .parameter "currentactivity"

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 1737
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1738
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1739
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    .line 1742
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020058

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1744
    .local v8, b:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 1745
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 1746
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 1748
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/music/LandingPageActivity;

    .line 1749
    .local v9, tempActivity:Lcom/htc/music/LandingPageActivity;
    if-eqz v9, :cond_1

    .line 1750
    #getter for: Lcom/htc/music/LandingPageActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v9}, Lcom/htc/music/LandingPageActivity;->access$5900(Lcom/htc/music/LandingPageActivity;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1753
    new-instance v0, Lcom/htc/music/util/AsyncImageDecoder;

    iget-object v1, p0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v1, p0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    move-object v1, p1

    move-object v2, p0

    move-object v3, p0

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/htc/music/util/AsyncImageDecoder;-><init>(Landroid/content/Context;Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;Lcom/htc/music/util/AsyncImageDecoder$IOnlineImageDecodeListener;IIZZ)V

    #setter for: Lcom/htc/music/LandingPageActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v9, v0}, Lcom/htc/music/LandingPageActivity;->access$5902(Lcom/htc/music/LandingPageActivity;Lcom/htc/music/util/AsyncImageDecoder;)Lcom/htc/music/util/AsyncImageDecoder;

    .line 1764
    :goto_0
    return-void

    .line 1758
    :cond_0
    const-string v0, "[LandingPage]"

    const-string v1, "SearchListAdapter...mAsyncImageDecoder is not null, don\'t new it again..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1762
    :cond_1
    const-string v0, "[LandingPage]"

    const-string v1, "SearchListAdapter, tempActivity is null!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .prologue
    .line 1774
    iget-object v1, p0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/LandingPageActivity;

    .line 1775
    .local v0, tempActivity:Lcom/htc/music/LandingPageActivity;
    if-eqz v0, :cond_0

    .line 1776
    #getter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/music/LandingPageActivity;->access$2400(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1782
    :goto_0
    return v1

    .line 1779
    :cond_0
    const-string v1, "[LandingPage]"

    const-string v2, "RecentAlbumListAdapter, getCount, tempActivity is null!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1782
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .parameter "position"

    .prologue
    .line 1787
    iget-object v1, p0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/LandingPageActivity;

    .line 1788
    .local v0, tempActivity:Lcom/htc/music/LandingPageActivity;
    if-eqz v0, :cond_0

    .line 1789
    #getter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/music/LandingPageActivity;->access$2400(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1795
    :goto_0
    return-object v1

    .line 1792
    :cond_0
    const-string v1, "[LandingPage]"

    const-string v2, "RecentAlbumListAdapter, getItem, tempActivity is null!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1795
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 3
    .parameter "position"

    .prologue
    .line 1800
    iget-object v1, p0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/LandingPageActivity;

    .line 1801
    .local v0, tempActivity:Lcom/htc/music/LandingPageActivity;
    if-eqz v0, :cond_0

    .line 1802
    #getter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/music/LandingPageActivity;->access$2400(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/LandingPageActivity$BaseItem;

    #calls: Lcom/htc/music/LandingPageActivity$BaseItem;->getId()I
    invoke-static {v1}, Lcom/htc/music/LandingPageActivity$BaseItem;->access$5800(Lcom/htc/music/LandingPageActivity$BaseItem;)I

    move-result v1

    int-to-long v1, v1

    .line 1807
    :goto_0
    return-wide v1

    .line 1804
    :cond_0
    const-string v1, "[LandingPage]"

    const-string v2, "RecentAlbumListAdapter, getItemId, tempActivity is null!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1807
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 22
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1818
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/music/LandingPageActivity;

    .line 1819
    .local v4, tempActivity:Lcom/htc/music/LandingPageActivity;
    if-eqz v4, :cond_1

    if-ltz p1, :cond_1

    #getter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/htc/music/LandingPageActivity;->access$2400(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, p1

    if-ge v0, v2, :cond_1

    .line 1820
    #getter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/htc/music/LandingPageActivity;->access$2400(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/music/LandingPageActivity$BaseItem;

    .line 1828
    .local v8, itemInfo:Lcom/htc/music/LandingPageActivity$BaseItem;
    :goto_0
    if-nez v8, :cond_2

    move-object/from16 v21, p2

    .line 1993
    :cond_0
    :goto_1
    return-object v21

    .line 1823
    .end local v8           #itemInfo:Lcom/htc/music/LandingPageActivity$BaseItem;
    :cond_1
    const-string v2, "[LandingPage]"

    const-string v3, "SearchListAdapter, getItem, tempActivity is null!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1824
    const/4 v8, 0x0

    .restart local v8       #itemInfo:Lcom/htc/music/LandingPageActivity$BaseItem;
    goto :goto_0

    .line 1832
    :cond_2
    const/16 v21, 0x0

    .line 1833
    .local v21, v:Landroid/view/View;
    const/16 v19, 0x0

    .line 1835
    .local v19, holder:Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$ViewHolder;
    #calls: Lcom/htc/music/LandingPageActivity$BaseItem;->getPrimaryText()Ljava/lang/String;
    invoke-static {v8}, Lcom/htc/music/LandingPageActivity$BaseItem;->access$6000(Lcom/htc/music/LandingPageActivity$BaseItem;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    #calls: Lcom/htc/music/LandingPageActivity$BaseItem;->getPrimaryText()Ljava/lang/String;
    invoke-static {v8}, Lcom/htc/music/LandingPageActivity$BaseItem;->access$6000(Lcom/htc/music/LandingPageActivity$BaseItem;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    #calls: Lcom/htc/music/LandingPageActivity$BaseItem;->getPrimaryText()Ljava/lang/String;
    invoke-static {v8}, Lcom/htc/music/LandingPageActivity$BaseItem;->access$6000(Lcom/htc/music/LandingPageActivity$BaseItem;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "<unknown>"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1836
    :cond_3
    const v2, 0x7f07004e

    invoke-virtual {v4, v2}, Lcom/htc/music/LandingPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1842
    .local v5, albumName:Ljava/lang/String;
    :goto_2
    #calls: Lcom/htc/music/LandingPageActivity$BaseItem;->getSecondaryText()Ljava/lang/String;
    invoke-static {v8}, Lcom/htc/music/LandingPageActivity$BaseItem;->access$6100(Lcom/htc/music/LandingPageActivity$BaseItem;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    #calls: Lcom/htc/music/LandingPageActivity$BaseItem;->getSecondaryText()Ljava/lang/String;
    invoke-static {v8}, Lcom/htc/music/LandingPageActivity$BaseItem;->access$6100(Lcom/htc/music/LandingPageActivity$BaseItem;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    #calls: Lcom/htc/music/LandingPageActivity$BaseItem;->getSecondaryText()Ljava/lang/String;
    invoke-static {v8}, Lcom/htc/music/LandingPageActivity$BaseItem;->access$6100(Lcom/htc/music/LandingPageActivity$BaseItem;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "<unknown>"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1843
    :cond_4
    const v2, 0x7f07004d

    invoke-virtual {v4, v2}, Lcom/htc/music/LandingPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1848
    .local v6, artistName:Ljava/lang/String;
    :goto_3
    #calls: Lcom/htc/music/LandingPageActivity$BaseItem;->getId()I
    invoke-static {v8}, Lcom/htc/music/LandingPageActivity$BaseItem;->access$5800(Lcom/htc/music/LandingPageActivity$BaseItem;)I

    move-result v7

    .line 1850
    .local v7, albumId:I
    if-nez p2, :cond_7

    .line 1851
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03003a

    const/4 v9, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v21

    .line 1852
    new-instance v19, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$ViewHolder;

    .end local v19           #holder:Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$ViewHolder;
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$ViewHolder;-><init>(Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;)V

    .line 1853
    .restart local v19       #holder:Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$ViewHolder;
    const v2, 0x7f080024

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemTileImage;

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    .line 1855
    const v2, 0x7f080025

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    .line 1856
    const v2, 0x7f080027

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcRimImageButton;

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    .line 1857
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    const-string v3, "common_circle_outer"

    const v9, 0x208001f

    invoke-static {v4, v3, v9}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    const-string v9, "common_circle_pressed"

    const v10, 0x2080020

    invoke-static {v4, v9, v10}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v9

    const-string v10, "common_circle_rest"

    const v11, 0x2080021

    invoke-static {v4, v10, v11}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v2, v3, v9, v10}, Lcom/htc/widget/HtcRimImageButton;->setButtonBackgroundResource(III)V

    .line 1861
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcRimImageButton;->setFocusable(Z)V

    .line 1862
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    const v3, 0x7f020029

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcRimImageButton;->setIconResource(I)V

    .line 1863
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcRimImageButton;->setVisibility(I)V

    .line 1864
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1871
    :goto_4
    move-object/from16 v0, v19

    iget-object v9, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    new-instance v2, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$1;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$1;-><init>(Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;Lcom/htc/music/LandingPageActivity;Ljava/lang/String;Ljava/lang/String;ILcom/htc/music/LandingPageActivity$BaseItem;)V

    invoke-virtual {v9, v2}, Lcom/htc/widget/HtcRimImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1889
    if-nez v19, :cond_8

    .line 1890
    const-string v2, "[LandingPage]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, "], getView, holder is null!"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1838
    .end local v5           #albumName:Ljava/lang/String;
    .end local v6           #artistName:Ljava/lang/String;
    .end local v7           #albumId:I
    :cond_5
    #calls: Lcom/htc/music/LandingPageActivity$BaseItem;->getPrimaryText()Ljava/lang/String;
    invoke-static {v8}, Lcom/htc/music/LandingPageActivity$BaseItem;->access$6000(Lcom/htc/music/LandingPageActivity$BaseItem;)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #albumName:Ljava/lang/String;
    goto/16 :goto_2

    .line 1845
    :cond_6
    #calls: Lcom/htc/music/LandingPageActivity$BaseItem;->getSecondaryText()Ljava/lang/String;
    invoke-static {v8}, Lcom/htc/music/LandingPageActivity$BaseItem;->access$6100(Lcom/htc/music/LandingPageActivity$BaseItem;)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #artistName:Ljava/lang/String;
    goto/16 :goto_3

    .line 1866
    .restart local v7       #albumId:I
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v19

    .end local v19           #holder:Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$ViewHolder;
    check-cast v19, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$ViewHolder;

    .line 1867
    .restart local v19       #holder:Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$ViewHolder;
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItemTileImage;->setTag(Ljava/lang/Object;)V

    .line 1868
    move-object/from16 v21, p2

    goto :goto_4

    .line 1894
    :cond_8
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    if-eqz v2, :cond_9

    .line 1895
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 1896
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v2, v6}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 1899
    :cond_9
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    if-eqz v2, :cond_a

    .line 1902
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItemTileImage;->setTag(Ljava/lang/Object;)V

    .line 1905
    #getter for: Lcom/htc/music/LandingPageActivity$BaseItem;->isOnline:Z
    invoke-static {v8}, Lcom/htc/music/LandingPageActivity$BaseItem;->access$5500(Lcom/htc/music/LandingPageActivity$BaseItem;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1906
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mOnlineMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;
    invoke-static {v2}, Lcom/htc/music/LandingPageActivity;->access$6700(Lcom/htc/music/LandingPageActivity;)Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->pull(I)Lcom/htc/music/util/MBitmap;

    move-result-object v20

    .line 1911
    .local v20, item:Lcom/htc/music/util/MBitmap;
    :goto_5
    if-nez v20, :cond_c

    const/16 v17, 0x0

    .line 1912
    .local v17, cacheBmp:Landroid/graphics/Bitmap;
    :goto_6
    if-nez v20, :cond_d

    const/16 v18, 0x0

    .line 1924
    .local v18, decodePath:Ljava/lang/String;
    :goto_7
    if-eqz v17, :cond_e

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_e

    .line 1926
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1972
    .end local v17           #cacheBmp:Landroid/graphics/Bitmap;
    .end local v18           #decodePath:Ljava/lang/String;
    .end local v20           #item:Lcom/htc/music/util/MBitmap;
    :cond_a
    :goto_8
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    if-eqz v2, :cond_0

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    if-eqz v2, :cond_0

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    if-eqz v2, :cond_0

    .line 1973
    const/4 v2, -0x2

    if-ne v7, v2, :cond_12

    .line 1974
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    .line 1975
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    const v3, 0x7f0701d6

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 1976
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 1977
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcRimImageButton;->setVisibility(I)V

    .line 1978
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    goto/16 :goto_1

    .line 1908
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;
    invoke-static {v2}, Lcom/htc/music/LandingPageActivity;->access$6800(Lcom/htc/music/LandingPageActivity;)Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->pull(I)Lcom/htc/music/util/MBitmap;

    move-result-object v20

    .restart local v20       #item:Lcom/htc/music/util/MBitmap;
    goto :goto_5

    .line 1911
    :cond_c
    invoke-virtual/range {v20 .. v20}, Lcom/htc/music/util/MBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v17

    goto :goto_6

    .line 1912
    .restart local v17       #cacheBmp:Landroid/graphics/Bitmap;
    :cond_d
    invoke-virtual/range {v20 .. v20}, Lcom/htc/music/util/MBitmap;->getPath()Ljava/lang/String;

    move-result-object v18

    goto :goto_7

    .line 1928
    .restart local v18       #decodePath:Ljava/lang/String;
    :cond_e
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1930
    #calls: Lcom/htc/music/LandingPageActivity$BaseItem;->getArtPath()Ljava/lang/String;
    invoke-static {v8}, Lcom/htc/music/LandingPageActivity$BaseItem;->access$6900(Lcom/htc/music/LandingPageActivity$BaseItem;)Ljava/lang/String;

    move-result-object v12

    .line 1931
    .local v12, albumArtpath:Ljava/lang/String;
    if-eqz v12, :cond_11

    .line 1932
    const-string v2, "[LandingPage]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Pos ["

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, "] ## There is art path in this item, path = "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1934
    #getter for: Lcom/htc/music/LandingPageActivity$BaseItem;->isOnline:Z
    invoke-static {v8}, Lcom/htc/music/LandingPageActivity$BaseItem;->access$5500(Lcom/htc/music/LandingPageActivity$BaseItem;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1935
    const v2, 0x7f080024

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/htc/widget/HtcListItemTileImage;

    .line 1936
    .local v16, albumArt:Lcom/htc/widget/HtcListItemTileImage;
    if-eqz v16, :cond_f

    .line 1937
    const/high16 v2, 0x7f08

    const-string v3, "y"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcListItemTileImage;->setTag(ILjava/lang/Object;)V

    .line 1939
    :cond_f
    #getter for: Lcom/htc/music/LandingPageActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v4}, Lcom/htc/music/LandingPageActivity;->access$5900(Lcom/htc/music/LandingPageActivity;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v2, 0x2

    new-array v14, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v14, v2

    const/4 v2, 0x1

    aput-object v12, v14, v2

    move v11, v7

    move v13, v7

    invoke-virtual/range {v9 .. v14}, Lcom/htc/music/util/AsyncImageDecoder;->add(ZILjava/lang/String;I[Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 1950
    .end local v16           #albumArt:Lcom/htc/widget/HtcListItemTileImage;
    :cond_10
    #getter for: Lcom/htc/music/LandingPageActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v4}, Lcom/htc/music/LandingPageActivity;->access$5900(Lcom/htc/music/LandingPageActivity;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v10

    const/4 v2, 0x1

    new-array v15, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v12, v15, v2

    move v11, v7

    move v13, v7

    move/from16 v14, p1

    invoke-virtual/range {v10 .. v15}, Lcom/htc/music/util/AsyncImageDecoder;->add(ILjava/lang/String;II[Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 1959
    :cond_11
    const-string v2, "[LandingPage]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Pos ["

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, "], No album art path, set default one."

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1980
    .end local v12           #albumArtpath:Ljava/lang/String;
    .end local v17           #cacheBmp:Landroid/graphics/Bitmap;
    .end local v18           #decodePath:Ljava/lang/String;
    .end local v20           #item:Lcom/htc/music/util/MBitmap;
    :cond_12
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    .line 1981
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 1982
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcRimImageButton;->setVisibility(I)V

    .line 1983
    new-instance v2, Landroid/view/TouchDelegate;

    new-instance v3, Landroid/graphics/Rect;

    #getter for: Lcom/htc/music/LandingPageActivity;->mScreenWidth:I
    invoke-static {v4}, Lcom/htc/music/LandingPageActivity;->access$7000(Lcom/htc/music/LandingPageActivity;)I

    move-result v9

    const v10, 0x7f0b009c

    invoke-static {v4, v10}, Lcom/htc/music/util/ProjectSettings;->getIntValue(Landroid/content/Context;I)I

    move-result v10

    sub-int/2addr v9, v10

    const/4 v10, 0x0

    #getter for: Lcom/htc/music/LandingPageActivity;->mScreenWidth:I
    invoke-static {v4}, Lcom/htc/music/LandingPageActivity;->access$7000(Lcom/htc/music/LandingPageActivity;)I

    move-result v11

    #getter for: Lcom/htc/music/LandingPageActivity;->mScreenHeight:I
    invoke-static {v4}, Lcom/htc/music/LandingPageActivity;->access$7100(Lcom/htc/music/LandingPageActivity;)I

    move-result v13

    invoke-direct {v3, v9, v10, v11, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v19

    iget-object v9, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    invoke-direct {v2, v3, v9}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    goto/16 :goto_1
.end method

.method public varargs onImageDecoded(ILandroid/graphics/Bitmap;J[Ljava/lang/Object;)V
    .locals 16
    .parameter "position"
    .parameter "bitmap"
    .parameter "timeStamp"
    .parameter "varargs"

    .prologue
    .line 1999
    if-nez p2, :cond_1

    .line 2000
    const-string v13, "[LandingPage]"

    const-string v14, "onImageDecoded: bitmap is null"

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2037
    :cond_0
    :goto_0
    return-void

    .line 2003
    :cond_1
    const-string v13, "[LandingPage]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onImageDecoded: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2004
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v13}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/music/LandingPageActivity;

    .line 2005
    .local v11, tempActivity:Lcom/htc/music/LandingPageActivity;
    invoke-virtual {v11}, Lcom/htc/music/LandingPageActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v9

    .line 2006
    .local v9, listView:Lcom/htc/widget/HtcListView;
    invoke-virtual {v9}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v6

    .line 2007
    .local v6, childCount:I
    if-gtz v6, :cond_2

    .line 2008
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 2011
    :cond_2
    const/4 v10, 0x0

    .line 2012
    .local v10, path:Ljava/lang/String;
    if-eqz p5, :cond_3

    move-object/from16 v0, p5

    array-length v13, v0

    if-lez v13, :cond_3

    const/4 v13, 0x0

    aget-object v13, p5, v13

    if-eqz v13, :cond_3

    const/4 v13, 0x0

    aget-object v13, p5, v13

    instance-of v13, v13, Ljava/lang/String;

    if-eqz v13, :cond_3

    .line 2013
    const/4 v13, 0x0

    aget-object v10, p5, v13

    .end local v10           #path:Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .line 2015
    .restart local v10       #path:Ljava/lang/String;
    :cond_3
    new-instance v5, Lcom/htc/music/util/MBitmap;

    move-object/from16 v0, p2

    invoke-direct {v5, v0, v10}, Lcom/htc/music/util/MBitmap;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 2016
    .local v5, b:Lcom/htc/music/util/MBitmap;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v13}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;
    invoke-static {v13}, Lcom/htc/music/LandingPageActivity;->access$6800(Lcom/htc/music/LandingPageActivity;)Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    move-result-object v13

    move/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-virtual {v13, v0, v5, v1, v2}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->push(ILcom/htc/music/util/MBitmap;J)Z

    move-result v3

    .line 2017
    .local v3, addToCache:Z
    if-eqz v3, :cond_0

    .line 2018
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, v6, :cond_0

    .line 2019
    invoke-virtual {v9, v7}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    .line 2020
    .local v12, viewGroup:Landroid/view/ViewGroup;
    if-eqz v12, :cond_4

    .line 2021
    const v13, 0x7f080024

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListItemTileImage;

    .line 2022
    .local v4, albumArt:Lcom/htc/widget/HtcListItemTileImage;
    if-eqz v4, :cond_4

    .line 2023
    invoke-virtual {v4}, Lcom/htc/widget/HtcListItemTileImage;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 2025
    .local v8, integer:Ljava/lang/Integer;
    const-string v13, "y"

    const/high16 v14, 0x7f08

    invoke-virtual {v4, v14}, Lcom/htc/widget/HtcListItemTileImage;->getTag(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 2018
    .end local v4           #albumArt:Lcom/htc/widget/HtcListItemTileImage;
    .end local v8           #integer:Ljava/lang/Integer;
    :cond_4
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2029
    .restart local v4       #albumArt:Lcom/htc/widget/HtcListItemTileImage;
    .restart local v8       #integer:Ljava/lang/Integer;
    :cond_5
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move/from16 v0, p1

    if-ne v13, v0, :cond_4

    .line 2030
    if-eqz p2, :cond_4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v13

    if-nez v13, :cond_4

    .line 2031
    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2
.end method

.method public varargs onOnlineImageDecoded(ILandroid/graphics/Bitmap;J[Ljava/lang/Object;)V
    .locals 16
    .parameter "position"
    .parameter "bitmap"
    .parameter "timeStamp"
    .parameter "varargs"

    .prologue
    .line 2043
    if-nez p2, :cond_1

    .line 2044
    const-string v13, "[LandingPage]"

    const-string v14, "onImageDecoded: bitmap is null"

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2086
    :cond_0
    :goto_0
    return-void

    .line 2047
    :cond_1
    const-string v13, "[LandingPage]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onImageDecoded: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2048
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v13}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/music/LandingPageActivity;

    .line 2049
    .local v11, tempActivity:Lcom/htc/music/LandingPageActivity;
    invoke-virtual {v11}, Lcom/htc/music/LandingPageActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v9

    .line 2050
    .local v9, listView:Lcom/htc/widget/HtcListView;
    invoke-virtual {v9}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v6

    .line 2051
    .local v6, childCount:I
    if-gtz v6, :cond_2

    .line 2052
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 2055
    :cond_2
    const/4 v10, 0x0

    .line 2056
    .local v10, path:Ljava/lang/String;
    if-eqz p5, :cond_3

    move-object/from16 v0, p5

    array-length v13, v0

    if-lez v13, :cond_3

    const/4 v13, 0x0

    aget-object v13, p5, v13

    if-eqz v13, :cond_3

    const/4 v13, 0x0

    aget-object v13, p5, v13

    instance-of v13, v13, Ljava/lang/String;

    if-eqz v13, :cond_3

    .line 2057
    const/4 v13, 0x0

    aget-object v10, p5, v13

    .end local v10           #path:Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .line 2061
    .restart local v10       #path:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v13}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-static {v13, v0}, Lcom/htc/music/online/Util;->drawDefaultSourceIconToBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 2063
    new-instance v5, Lcom/htc/music/util/MBitmap;

    move-object/from16 v0, p2

    invoke-direct {v5, v0, v10}, Lcom/htc/music/util/MBitmap;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 2064
    .local v5, b:Lcom/htc/music/util/MBitmap;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v13}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mOnlineMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;
    invoke-static {v13}, Lcom/htc/music/LandingPageActivity;->access$6700(Lcom/htc/music/LandingPageActivity;)Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    move-result-object v13

    move/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-virtual {v13, v0, v5, v1, v2}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->push(ILcom/htc/music/util/MBitmap;J)Z

    move-result v3

    .line 2065
    .local v3, addToCache:Z
    if-eqz v3, :cond_0

    .line 2066
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, v6, :cond_0

    .line 2067
    invoke-virtual {v9, v7}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    .line 2068
    .local v12, viewGroup:Landroid/view/ViewGroup;
    if-eqz v12, :cond_4

    .line 2069
    const v13, 0x7f080024

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListItemTileImage;

    .line 2071
    .local v4, albumArt:Lcom/htc/widget/HtcListItemTileImage;
    if-eqz v4, :cond_4

    .line 2072
    invoke-virtual {v4}, Lcom/htc/widget/HtcListItemTileImage;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 2074
    .local v8, integer:Ljava/lang/Integer;
    const-string v13, "y"

    const/high16 v14, 0x7f08

    invoke-virtual {v4, v14}, Lcom/htc/widget/HtcListItemTileImage;->getTag(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 2066
    .end local v4           #albumArt:Lcom/htc/widget/HtcListItemTileImage;
    .end local v8           #integer:Ljava/lang/Integer;
    :cond_4
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2078
    .restart local v4       #albumArt:Lcom/htc/widget/HtcListItemTileImage;
    .restart local v8       #integer:Ljava/lang/Integer;
    :cond_5
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move/from16 v0, p1

    if-ne v13, v0, :cond_4

    .line 2079
    if-eqz p2, :cond_4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v13

    if-nez v13, :cond_4

    .line 2080
    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2
.end method
