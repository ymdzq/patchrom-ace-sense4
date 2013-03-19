.class public Lcom/htc/album/AlbumMain/AdapterLandingPage;
.super Lcom/htc/album/AlbumMain/AdapterDropList;
.source "AdapterLandingPage.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AdapterLandingPage"


# instance fields
.field private mCompareWidth:I

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLuanchItemBgHeight:I

.field private mLuanchItemBgWidth:I

.field private mVerticalPaddgin:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/htc/album/AlbumMain/AdapterDropList;-><init>()V

    iput-object v1, p0, Lcom/htc/album/AlbumMain/AdapterLandingPage;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/htc/album/AlbumMain/AdapterLandingPage;->mInflater:Landroid/view/LayoutInflater;

    iput v0, p0, Lcom/htc/album/AlbumMain/AdapterLandingPage;->mLuanchItemBgWidth:I

    iput v0, p0, Lcom/htc/album/AlbumMain/AdapterLandingPage;->mLuanchItemBgHeight:I

    iput v0, p0, Lcom/htc/album/AlbumMain/AdapterLandingPage;->mCompareWidth:I

    iput v0, p0, Lcom/htc/album/AlbumMain/AdapterLandingPage;->mVerticalPaddgin:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/htc/album/AlbumMain/AdapterDropList;-><init>()V

    iput-object v6, p0, Lcom/htc/album/AlbumMain/AdapterLandingPage;->mContext:Landroid/content/Context;

    iput-object v6, p0, Lcom/htc/album/AlbumMain/AdapterLandingPage;->mInflater:Landroid/view/LayoutInflater;

    iput v5, p0, Lcom/htc/album/AlbumMain/AdapterLandingPage;->mLuanchItemBgWidth:I

    iput v5, p0, Lcom/htc/album/AlbumMain/AdapterLandingPage;->mLuanchItemBgHeight:I

    iput v5, p0, Lcom/htc/album/AlbumMain/AdapterLandingPage;->mCompareWidth:I

    iput v5, p0, Lcom/htc/album/AlbumMain/AdapterLandingPage;->mVerticalPaddgin:I

    iput-object p1, p0, Lcom/htc/album/AlbumMain/AdapterLandingPage;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/htc/album/AlbumMain/AdapterLandingPage;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/album/AlbumMain/AdapterLandingPage;->mInflater:Landroid/view/LayoutInflater;

    iget-object v5, p0, Lcom/htc/album/AlbumMain/AdapterLandingPage;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02000f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const v5, 0x7f020033

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-le v1, v3, :cond_0

    iput v1, p0, Lcom/htc/album/AlbumMain/AdapterLandingPage;->mLuanchItemBgWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    iput v5, p0, Lcom/htc/album/AlbumMain/AdapterLandingPage;->mLuanchItemBgHeight:I

    :goto_0
    const v5, 0x7f02000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int/lit8 v5, v5, -0x32

    iput v5, p0, Lcom/htc/album/AlbumMain/AdapterLandingPage;->mCompareWidth:I

    const/high16 v5, 0x205

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/htc/album/AlbumMain/AdapterLandingPage;->mVerticalPaddgin:I

    return-void

    :cond_0
    iput v3, p0, Lcom/htc/album/AlbumMain/AdapterLandingPage;->mLuanchItemBgWidth:I

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    iput v5, p0, Lcom/htc/album/AlbumMain/AdapterLandingPage;->mLuanchItemBgHeight:I

    goto :goto_0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 24

    const/4 v11, 0x0

    const/16 v16, 0x0

    if-nez p2, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/AlbumMain/AdapterLandingPage;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v20, v0

    const v21, 0x7f03002a

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, p3

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v20, 0x7f09001c

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/AlbumMain/AdapterLandingPage;->mLuanchItemBgHeight:I

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/AlbumMain/AdapterLandingPage;->mLuanchItemBgWidth:I

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    const v20, 0x7f09002c

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/AlbumMain/AdapterLandingPage;->mLuanchItemBgWidth:I

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_0
    const v20, 0x7f09001c

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/htc/opensense2/widget/LandingPageImageView;

    const v20, 0x7f09002c

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/AlbumMain/AdapterDropList;->mList:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;

    invoke-virtual/range {v18 .. v18}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->getTabPlugin()Lcom/htc/opensense/plugin/TabPlugin;

    move-result-object v13

    instance-of v0, v13, Lcom/htc/opensense/plugin/TabPluginRemote;

    move/from16 v20, v0

    if-eqz v20, :cond_1

    move-object/from16 v16, v13

    check-cast v16, Lcom/htc/opensense/plugin/TabPluginRemote;

    :cond_1
    if-eqz v16, :cond_2

    invoke-virtual/range {v16 .. v16}, Lcom/htc/opensense/plugin/TabPluginRemote;->onCreateAlbumListPlugin()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_2

    const/4 v11, 0x1

    :cond_2
    const/16 v19, 0x0

    if-eqz v11, :cond_5

    :try_start_0
    invoke-virtual/range {v16 .. v16}, Lcom/htc/opensense/plugin/TabPluginRemote;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual {v13}, Lcom/htc/opensense/plugin/TabPlugin;->getDrawableResSet()[I

    move-result-object v21

    const/16 v22, 0x2

    aget v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v7, v14}, Lcom/htc/opensense2/widget/LandingPageImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v19

    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/AlbumMain/AdapterLandingPage;->mCompareWidth:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_7

    const v20, 0x7f020033

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/htc/opensense2/widget/LandingPageImageView;->setBackgroundFixImageView(I)V

    :goto_1
    sget-object v20, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/htc/opensense2/widget/LandingPageImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual/range {v18 .. v18}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->getTabName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v20, 0x11

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/AlbumMain/AdapterLandingPage;->mVerticalPaddgin:I

    move/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    return-object p2

    :catch_0
    move-exception v6

    invoke-virtual/range {v16 .. v16}, Lcom/htc/opensense/plugin/TabPluginRemote;->getLogoRes()Landroid/graphics/Bitmap;

    move-result-object v5

    if-nez v5, :cond_4

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/htc/opensense2/widget/LandingPageImageView;->setImageResource(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {v7, v5}, Lcom/htc/opensense2/widget/LandingPageImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    goto :goto_0

    :cond_5
    const/4 v10, 0x0

    const/4 v15, 0x0

    :try_start_1
    invoke-virtual/range {v18 .. v18}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->getDrawableResSet()[I

    move-result-object v20

    const/16 v21, 0x2

    aget v10, v20, v21
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    if-eqz v10, :cond_3

    invoke-virtual/range {v18 .. v18}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->getSubPackageName()Ljava/lang/String;

    move-result-object v12

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/AlbumMain/AdapterLandingPage;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/AlbumMain/AdapterLandingPage;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    :goto_3
    invoke-virtual {v15, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v7, v14}, Lcom/htc/opensense2/widget/LandingPageImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v19

    goto/16 :goto_0

    :catch_1
    move-exception v6

    const/4 v10, 0x0

    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/AlbumMain/AdapterLandingPage;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v15

    goto :goto_3

    :catch_2
    move-exception v6

    invoke-virtual {v6}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    :cond_7
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/htc/opensense2/widget/LandingPageImageView;->setBackgroundFixImageView(I)V

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/AlbumMain/AdapterLandingPage;->mInflater:Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/album/AlbumMain/AdapterLandingPage;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setAdapterList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/album/AlbumMain/AdapterDropList;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/htc/album/AlbumMain/AdapterDropList;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/AdapterLandingPage;->notifyDataSetChanged()V

    return-void
.end method
