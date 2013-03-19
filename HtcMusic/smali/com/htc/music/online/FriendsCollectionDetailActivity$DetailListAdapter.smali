.class Lcom/htc/music/online/FriendsCollectionDetailActivity$DetailListAdapter;
.super Landroid/widget/BaseAdapter;
.source "FriendsCollectionDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/online/FriendsCollectionDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DetailListAdapter"
.end annotation


# static fields
.field private static final OFFSET_TRACKS:I = 0x1

.field private static final POSITION_HEADER:I


# instance fields
.field private mCtx:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mParentActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/music/online/FriendsCollectionDetailActivity;",
            ">;"
        }
    .end annotation
.end field

.field private posMoreByArtistName:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/music/online/FriendsCollectionDetailActivity;)V
    .locals 3
    .parameter "context"
    .parameter "parentActivity"

    .prologue
    .line 1250
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1242
    const/4 v2, -0x1

    iput v2, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$DetailListAdapter;->posMoreByArtistName:I

    .line 1246
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$DetailListAdapter;->mCtx:Landroid/content/Context;

    .line 1251
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$DetailListAdapter;->mParentActivity:Ljava/lang/ref/WeakReference;

    .line 1253
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$DetailListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1254
    iput-object p1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$DetailListAdapter;->mCtx:Landroid/content/Context;

    .line 1256
    iget-object v2, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$DetailListAdapter;->mParentActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/online/FriendsCollectionDetailActivity;

    .line 1257
    .local v1, tempActivity:Lcom/htc/music/online/FriendsCollectionDetailActivity;
    if-eqz v1, :cond_0

    .line 1258
    invoke-virtual {v1}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1259
    .local v0, resources:Landroid/content/res/Resources;
    const v2, 0x7f02003f

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    #setter for: Lcom/htc/music/online/FriendsCollectionDetailActivity;->mDefaultAlbumArt:Landroid/graphics/Bitmap;
    invoke-static {v1, v2}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$2802(Lcom/htc/music/online/FriendsCollectionDetailActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1261
    .end local v0           #resources:Landroid/content/res/Resources;
    :cond_0
    return-void
.end method


# virtual methods
.method public clearData()V
    .locals 1

    .prologue
    .line 1561
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$DetailListAdapter;->posMoreByArtistName:I

    .line 1562
    return-void
.end method

.method public getCount()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1264
    iget-object v2, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$DetailListAdapter;->mParentActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/online/FriendsCollectionDetailActivity;

    .line 1265
    .local v1, tempActivity:Lcom/htc/music/online/FriendsCollectionDetailActivity;
    if-nez v1, :cond_1

    .line 1266
    const-string v2, "[FriendsCollectionDetailActivity]"

    const-string v3, "DetailListAdapter.getCount():tempActivity == null."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1295
    :cond_0
    :goto_0
    return v0

    .line 1270
    :cond_1
    #getter for: Lcom/htc/music/online/FriendsCollectionDetailActivity;->mStopping:Z
    invoke-static {v1}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$1300(Lcom/htc/music/online/FriendsCollectionDetailActivity;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1271
    const-string v2, "[FriendsCollectionDetailActivity]"

    const-string v3, "DetailListAdapter.getCount():stopping."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1275
    :cond_2
    #getter for: Lcom/htc/music/online/FriendsCollectionDetailActivity;->mShowError:Z
    invoke-static {v1}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$1500(Lcom/htc/music/online/FriendsCollectionDetailActivity;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1276
    const-string v2, "[FriendsCollectionDetailActivity]"

    const-string v3, "DetailListAdapter.getCount():mShowError."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1280
    :cond_3
    #getter for: Lcom/htc/music/online/FriendsCollectionDetailActivity;->mCollectedTracks:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$2300(Lcom/htc/music/online/FriendsCollectionDetailActivity;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    #getter for: Lcom/htc/music/online/FriendsCollectionDetailActivity;->mCollectedTracks:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$2300(Lcom/htc/music/online/FriendsCollectionDetailActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_5

    .line 1281
    :cond_4
    const-string v2, "[FriendsCollectionDetailActivity]"

    const-string v3, "DetailListAdapter.getCount():mTrackCursor == null || mTrackCursor.getCount() == 0."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1285
    :cond_5
    #getter for: Lcom/htc/music/online/FriendsCollectionDetailActivity;->mCollectedTracks:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$2300(Lcom/htc/music/online/FriendsCollectionDetailActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 1288
    .local v0, retInt:I
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSupportListenStore()Z

    move-result v2

    if-eqz v2, :cond_0

    #getter for: Lcom/htc/music/online/FriendsCollectionDetailActivity;->mCreatorName:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$2500(Lcom/htc/music/online/FriendsCollectionDetailActivity;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    #getter for: Lcom/htc/music/online/FriendsCollectionDetailActivity;->mCreatorName:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$2500(Lcom/htc/music/online/FriendsCollectionDetailActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "<unknown>"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1290
    iput v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$DetailListAdapter;->posMoreByArtistName:I

    .line 1291
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 1299
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 1303
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 1546
    if-nez p1, :cond_0

    .line 1547
    const/4 v0, 0x0

    .line 1552
    :goto_0
    return v0

    .line 1549
    :cond_0
    iget v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$DetailListAdapter;->posMoreByArtistName:I

    if-ne p1, v0, :cond_1

    .line 1550
    const/4 v0, 0x3

    goto :goto_0

    .line 1552
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 33
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/FriendsCollectionDetailActivity$DetailListAdapter;->mParentActivity:Ljava/lang/ref/WeakReference;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/htc/music/online/FriendsCollectionDetailActivity;

    .line 1316
    .local v21, tempActivity:Lcom/htc/music/online/FriendsCollectionDetailActivity;
    if-nez v21, :cond_0

    .line 1317
    const-string v29, "[FriendsCollectionDetailActivity]"

    const-string v30, "DetailListAdapter.getView(int,View,ViewGroup):tempActivity == null."

    invoke-static/range {v29 .. v30}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v26, p2

    .line 1541
    :goto_0
    return-object v26

    .line 1321
    :cond_0
    #getter for: Lcom/htc/music/online/FriendsCollectionDetailActivity;->mStopping:Z
    invoke-static/range {v21 .. v21}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$1300(Lcom/htc/music/online/FriendsCollectionDetailActivity;)Z

    move-result v29

    if-eqz v29, :cond_1

    .line 1322
    const-string v29, "[FriendsCollectionDetailActivity]"

    const-string v30, "DetailListAdapter.getView(int,View,ViewGroup):stopping."

    invoke-static/range {v29 .. v30}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v26, p2

    .line 1323
    goto :goto_0

    .line 1325
    :cond_1
    if-nez p1, :cond_a

    .line 1327
    if-eqz p2, :cond_3

    .line 1329
    move-object/from16 v26, p2

    .line 1359
    .local v26, v:Landroid/view/View;
    :goto_1
    const v29, 0x7f080060

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/htc/widget/HtcRimImageButton;

    .line 1360
    .local v18, shareOn:Lcom/htc/widget/HtcRimImageButton;
    new-instance v29, Lcom/htc/music/online/FriendsCollectionDetailActivity$DetailListAdapter$1;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/htc/music/online/FriendsCollectionDetailActivity$DetailListAdapter$1;-><init>(Lcom/htc/music/online/FriendsCollectionDetailActivity$DetailListAdapter;Lcom/htc/music/online/FriendsCollectionDetailActivity;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1366
    #getter for: Lcom/htc/music/online/FriendsCollectionDetailActivity;->mCreatorName:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$2500(Lcom/htc/music/online/FriendsCollectionDetailActivity;)Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_5

    #getter for: Lcom/htc/music/online/FriendsCollectionDetailActivity;->mCollectionName:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$2400(Lcom/htc/music/online/FriendsCollectionDetailActivity;)Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_5

    const/16 v29, 0x1

    :goto_2
    move-object/from16 v0, v18

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimImageButton;->setEnabled(Z)V

    .line 1368
    const v29, 0x7f08005e

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 1369
    .local v8, collectionDescriptTV:Landroid/widget/TextView;
    const/16 v20, 0x0

    .line 1370
    .local v20, strDescription:Ljava/lang/String;
    #getter for: Lcom/htc/music/online/FriendsCollectionDetailActivity;->mCollectionDescript:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$2600(Lcom/htc/music/online/FriendsCollectionDetailActivity;)Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_6

    .line 1371
    #getter for: Lcom/htc/music/online/FriendsCollectionDetailActivity;->mCollectionDescript:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$2600(Lcom/htc/music/online/FriendsCollectionDetailActivity;)Ljava/lang/String;

    move-result-object v20

    .line 1372
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1375
    const/16 v29, 0x5

    move/from16 v0, v29

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1376
    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1403
    :goto_3
    #getter for: Lcom/htc/music/online/FriendsCollectionDetailActivity;->mCollectedTracks:Ljava/util/List;
    invoke-static/range {v21 .. v21}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$2300(Lcom/htc/music/online/FriendsCollectionDetailActivity;)Ljava/util/List;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v15

    .line 1404
    .local v15, numberOfTracks:I
    if-lez v15, :cond_2

    .line 1405
    const v29, 0x7f08005d

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    .line 1406
    .local v25, trackNumberTV:Landroid/widget/TextView;
    const/4 v14, 0x0

    .line 1407
    .local v14, numTracks:Ljava/lang/String;
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v15, v0, :cond_7

    .line 1408
    const v29, 0x7f0701c9

    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 1412
    :goto_4
    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1425
    .end local v14           #numTracks:Ljava/lang/String;
    .end local v25           #trackNumberTV:Landroid/widget/TextView;
    :cond_2
    const v29, 0x7f08005b

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 1426
    .local v4, albumArtIV:Landroid/widget/ImageView;
    sget-object v29, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1427
    const v29, 0x7f08005c

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/ImageView;

    .line 1428
    .local v27, view:Landroid/widget/ImageView;
    #getter for: Lcom/htc/music/online/FriendsCollectionDetailActivity;->mAlbumArt:Landroid/graphics/Bitmap;
    invoke-static/range {v21 .. v21}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$1700(Lcom/htc/music/online/FriendsCollectionDetailActivity;)Landroid/graphics/Bitmap;

    move-result-object v29

    if-eqz v29, :cond_8

    #getter for: Lcom/htc/music/online/FriendsCollectionDetailActivity;->mAlbumArt:Landroid/graphics/Bitmap;
    invoke-static/range {v21 .. v21}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$1700(Lcom/htc/music/online/FriendsCollectionDetailActivity;)Landroid/graphics/Bitmap;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v29

    if-nez v29, :cond_8

    .line 1429
    #getter for: Lcom/htc/music/online/FriendsCollectionDetailActivity;->mAlbumArt:Landroid/graphics/Bitmap;
    invoke-static/range {v21 .. v21}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$1700(Lcom/htc/music/online/FriendsCollectionDetailActivity;)Landroid/graphics/Bitmap;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1430
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1332
    .end local v4           #albumArtIV:Landroid/widget/ImageView;
    .end local v8           #collectionDescriptTV:Landroid/widget/TextView;
    .end local v15           #numberOfTracks:I
    .end local v18           #shareOn:Lcom/htc/widget/HtcRimImageButton;
    .end local v20           #strDescription:Ljava/lang/String;
    .end local v26           #v:Landroid/view/View;
    .end local v27           #view:Landroid/widget/ImageView;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/FriendsCollectionDetailActivity$DetailListAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v29, v0

    const v30, 0x7f03001e

    const/16 v31, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    move-object/from16 v2, p3

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v26

    .line 1333
    .restart local v26       #v:Landroid/view/View;
    const v29, 0x7f080060

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/htc/widget/HtcRimImageButton;

    .line 1334
    .restart local v18       #shareOn:Lcom/htc/widget/HtcRimImageButton;
    if-eqz v18, :cond_4

    .line 1335
    const v29, 0x2080007

    const v30, 0x2080008

    const v31, 0x2080009

    move-object/from16 v0, v18

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcRimImageButton;->setButtonBackgroundResource(III)V

    .line 1338
    const v29, 0x7f020027

    move-object/from16 v0, v18

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimImageButton;->setIconResource(I)V

    .line 1341
    :cond_4
    invoke-virtual/range {v21 .. v21}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 1342
    .local v17, res:Landroid/content/res/Resources;
    new-instance v16, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1343
    .local v16, option:Landroid/graphics/BitmapFactory$Options;
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1344
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1345
    const v29, 0x7f02003f

    move-object/from16 v0, v17

    move/from16 v1, v29

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1347
    const v29, 0x7f08005c

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/ImageView;

    .line 1348
    .restart local v27       #view:Landroid/widget/ImageView;
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v29, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v30

    add-int v29, v29, v30

    invoke-virtual/range {v27 .. v27}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v30

    add-int v28, v29, v30

    .line 1349
    .local v28, width:I
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v29, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v30

    add-int v29, v29, v30

    invoke-virtual/range {v27 .. v27}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v30

    add-int v11, v29, v30

    .line 1350
    .local v11, height:I
    invoke-virtual/range {v27 .. v27}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    move/from16 v0, v28

    move-object/from16 v1, v29

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1351
    invoke-virtual/range {v27 .. v27}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    move-object/from16 v0, v29

    iput v11, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1353
    new-instance v12, Lcom/htc/music/online/FriendsCollectionDetailActivity$ViewHolder;

    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-direct {v12, v0}, Lcom/htc/music/online/FriendsCollectionDetailActivity$ViewHolder;-><init>(I)V

    .line 1354
    .local v12, holder:Lcom/htc/music/online/FriendsCollectionDetailActivity$ViewHolder;
    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1366
    .end local v11           #height:I
    .end local v12           #holder:Lcom/htc/music/online/FriendsCollectionDetailActivity$ViewHolder;
    .end local v16           #option:Landroid/graphics/BitmapFactory$Options;
    .end local v17           #res:Landroid/content/res/Resources;
    .end local v27           #view:Landroid/widget/ImageView;
    .end local v28           #width:I
    :cond_5
    const/16 v29, 0x0

    goto/16 :goto_2

    .line 1381
    .restart local v8       #collectionDescriptTV:Landroid/widget/TextView;
    .restart local v20       #strDescription:Ljava/lang/String;
    :cond_6
    const/16 v29, 0x8

    move/from16 v0, v29

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 1410
    .restart local v14       #numTracks:Ljava/lang/String;
    .restart local v15       #numberOfTracks:I
    .restart local v25       #trackNumberTV:Landroid/widget/TextView;
    :cond_7
    const v29, 0x7f0701c8

    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_4

    .line 1433
    .end local v14           #numTracks:Ljava/lang/String;
    .end local v25           #trackNumberTV:Landroid/widget/TextView;
    .restart local v4       #albumArtIV:Landroid/widget/ImageView;
    .restart local v27       #view:Landroid/widget/ImageView;
    :cond_8
    #getter for: Lcom/htc/music/online/FriendsCollectionDetailActivity;->mDefaultAlbumArt:Landroid/graphics/Bitmap;
    invoke-static/range {v21 .. v21}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$2800(Lcom/htc/music/online/FriendsCollectionDetailActivity;)Landroid/graphics/Bitmap;

    move-result-object v29

    if-eqz v29, :cond_9

    #getter for: Lcom/htc/music/online/FriendsCollectionDetailActivity;->mDefaultAlbumArt:Landroid/graphics/Bitmap;
    invoke-static/range {v21 .. v21}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$2800(Lcom/htc/music/online/FriendsCollectionDetailActivity;)Landroid/graphics/Bitmap;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v29

    if-nez v29, :cond_9

    .line 1434
    #getter for: Lcom/htc/music/online/FriendsCollectionDetailActivity;->mDefaultAlbumArt:Landroid/graphics/Bitmap;
    invoke-static/range {v21 .. v21}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$2800(Lcom/htc/music/online/FriendsCollectionDetailActivity;)Landroid/graphics/Bitmap;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1437
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1441
    :cond_9
    const/16 v29, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1442
    const/16 v29, 0x8

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1463
    .end local v4           #albumArtIV:Landroid/widget/ImageView;
    .end local v8           #collectionDescriptTV:Landroid/widget/TextView;
    .end local v15           #numberOfTracks:I
    .end local v18           #shareOn:Lcom/htc/widget/HtcRimImageButton;
    .end local v20           #strDescription:Ljava/lang/String;
    .end local v26           #v:Landroid/view/View;
    .end local v27           #view:Landroid/widget/ImageView;
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/online/FriendsCollectionDetailActivity$DetailListAdapter;->posMoreByArtistName:I

    move/from16 v29, v0

    move/from16 v0, p1

    move/from16 v1, v29

    if-ne v0, v1, :cond_d

    .line 1465
    if-eqz p2, :cond_b

    .line 1466
    move-object/from16 v26, p2

    .line 1473
    .restart local v26       #v:Landroid/view/View;
    :goto_5
    const v29, 0x7f080058

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 1474
    .local v22, textContent:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/FriendsCollectionDetailActivity$DetailListAdapter;->mCtx:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f070113

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1475
    .local v5, artistPattern:Ljava/lang/String;
    const-string v29, "%s"

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_c

    .line 1476
    const-string v29, "%s"

    #getter for: Lcom/htc/music/online/FriendsCollectionDetailActivity;->mCreatorName:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$2500(Lcom/htc/music/online/FriendsCollectionDetailActivity;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1468
    .end local v5           #artistPattern:Ljava/lang/String;
    .end local v22           #textContent:Landroid/widget/TextView;
    .end local v26           #v:Landroid/view/View;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/FriendsCollectionDetailActivity$DetailListAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v29, v0

    const v30, 0x7f03001a

    const/16 v31, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    move-object/from16 v2, p3

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v26

    .line 1469
    .restart local v26       #v:Landroid/view/View;
    new-instance v12, Lcom/htc/music/online/FriendsCollectionDetailActivity$ViewHolder;

    const/16 v29, 0x3

    move/from16 v0, v29

    invoke-direct {v12, v0}, Lcom/htc/music/online/FriendsCollectionDetailActivity$ViewHolder;-><init>(I)V

    .line 1470
    .restart local v12       #holder:Lcom/htc/music/online/FriendsCollectionDetailActivity$ViewHolder;
    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_5

    .line 1478
    .end local v12           #holder:Lcom/htc/music/online/FriendsCollectionDetailActivity$ViewHolder;
    .restart local v5       #artistPattern:Ljava/lang/String;
    .restart local v22       #textContent:Landroid/widget/TextView;
    :cond_c
    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1484
    .end local v5           #artistPattern:Ljava/lang/String;
    .end local v22           #textContent:Landroid/widget/TextView;
    .end local v26           #v:Landroid/view/View;
    :cond_d
    add-int/lit8 p1, p1, -0x1

    .line 1486
    #getter for: Lcom/htc/music/online/FriendsCollectionDetailActivity;->mCollectedTracks:Ljava/util/List;
    invoke-static/range {v21 .. v21}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$2300(Lcom/htc/music/online/FriendsCollectionDetailActivity;)Ljava/util/List;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/htc/music/online/sinamusic/WrapperSong;

    .line 1487
    .local v19, song:Lcom/htc/music/online/sinamusic/WrapperSong;
    invoke-virtual/range {v19 .. v19}, Lcom/htc/music/online/sinamusic/WrapperSong;->getSongName()Ljava/lang/String;

    move-result-object v24

    .line 1488
    .local v24, trackName:Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Lcom/htc/music/online/sinamusic/WrapperSong;->getSongId()I

    move-result v6

    .line 1492
    .local v6, audioId:I
    if-eqz p2, :cond_e

    .line 1493
    move-object/from16 v26, p2

    .line 1494
    .restart local v26       #v:Landroid/view/View;
    const v29, 0x7f08005a

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/htc/widget/HtcRimImageButton;

    .line 1507
    .local v13, ib:Lcom/htc/widget/HtcRimImageButton;
    :goto_6
    const v29, 0x7f080038

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Lcom/htc/widget/HtcListItem2LineText;

    .line 1509
    .local v23, textView:Lcom/htc/widget/HtcListItem2LineText;
    invoke-virtual/range {v23 .. v24}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 1510
    const/16 v29, 0x8

    move-object/from16 v0, v23

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 1515
    const v29, 0x7f080059

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/htc/widget/HtcListItemImageButton;

    .line 1517
    .local v7, badgeNowPlaying:Lcom/htc/widget/HtcListItemImageButton;
    :try_start_0
    sget-object v29, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v29, :cond_f

    sget-object v29, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface/range {v29 .. v29}, Lcom/htc/music/IMediaPlaybackService;->getSongId()I

    move-result v29

    move/from16 v0, v29

    if-ne v6, v0, :cond_f

    sget-object v29, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-static/range {v29 .. v29}, Lcom/htc/music/online/Util;->serviceInOnlineMode(Lcom/htc/music/IMediaPlaybackService;)Z

    move-result v29

    if-eqz v29, :cond_f

    .line 1518
    sget-object v29, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Lcom/htc/widget/HtcListItemImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1519
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v7, v0}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1527
    :goto_7
    invoke-virtual {v13}, Lcom/htc/widget/HtcRimImageButton;->getTag()Ljava/lang/Object;

    move-result-object v29

    if-eqz v29, :cond_10

    invoke-virtual {v13}, Lcom/htc/widget/HtcRimImageButton;->getTag()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/os/Bundle;

    move-object/from16 v9, v29

    .line 1528
    .local v9, data:Landroid/os/Bundle;
    :goto_8
    const-string v29, "audioid"

    move-object/from16 v0, v29

    invoke-virtual {v9, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1529
    const-string v29, "position"

    move-object/from16 v0, v29

    move/from16 v1, p1

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1530
    const-string v29, "trackname"

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1531
    invoke-virtual {v13, v9}, Lcom/htc/widget/HtcRimImageButton;->setTag(Ljava/lang/Object;)V

    .line 1532
    new-instance v29, Lcom/htc/music/online/FriendsCollectionDetailActivity$DetailListAdapter$2;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/htc/music/online/FriendsCollectionDetailActivity$DetailListAdapter$2;-><init>(Lcom/htc/music/online/FriendsCollectionDetailActivity$DetailListAdapter;Lcom/htc/music/online/FriendsCollectionDetailActivity;)V

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Lcom/htc/widget/HtcRimImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 1496
    .end local v7           #badgeNowPlaying:Lcom/htc/widget/HtcListItemImageButton;
    .end local v9           #data:Landroid/os/Bundle;
    .end local v13           #ib:Lcom/htc/widget/HtcRimImageButton;
    .end local v23           #textView:Lcom/htc/widget/HtcListItem2LineText;
    .end local v26           #v:Landroid/view/View;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/FriendsCollectionDetailActivity$DetailListAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v29, v0

    const v30, 0x7f03001c

    const/16 v31, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    move-object/from16 v2, p3

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v26

    .line 1497
    .restart local v26       #v:Landroid/view/View;
    const v29, 0x7f08005a

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/htc/widget/HtcRimImageButton;

    .line 1498
    .restart local v13       #ib:Lcom/htc/widget/HtcRimImageButton;
    const v29, 0x208001f

    const v30, 0x2080020

    const v31, 0x2080021

    move/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v13, v0, v1, v2}, Lcom/htc/widget/HtcRimImageButton;->setButtonBackgroundResource(III)V

    .line 1501
    const v29, 0x7f020029

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Lcom/htc/widget/HtcRimImageButton;->setIconResource(I)V

    .line 1502
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Lcom/htc/widget/HtcRimImageButton;->setFocusable(Z)V

    .line 1503
    new-instance v12, Lcom/htc/music/online/FriendsCollectionDetailActivity$ViewHolder;

    const/16 v29, 0x2

    move/from16 v0, v29

    invoke-direct {v12, v0}, Lcom/htc/music/online/FriendsCollectionDetailActivity$ViewHolder;-><init>(I)V

    .line 1504
    .restart local v12       #holder:Lcom/htc/music/online/FriendsCollectionDetailActivity$ViewHolder;
    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 1521
    .end local v12           #holder:Lcom/htc/music/online/FriendsCollectionDetailActivity$ViewHolder;
    .restart local v7       #badgeNowPlaying:Lcom/htc/widget/HtcListItemImageButton;
    .restart local v23       #textView:Lcom/htc/widget/HtcListItem2LineText;
    :cond_f
    const/16 v29, 0x8

    :try_start_1
    move/from16 v0, v29

    invoke-virtual {v7, v0}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_7

    .line 1523
    :catch_0
    move-exception v10

    .line 1524
    .local v10, e:Landroid/os/RemoteException;
    invoke-virtual {v10}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_7

    .line 1527
    .end local v10           #e:Landroid/os/RemoteException;
    :cond_10
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    goto/16 :goto_8
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 1557
    const/4 v0, 0x4

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    const/4 v0, 0x1

    .line 1308
    if-ge p1, v0, :cond_0

    .line 1309
    const/4 v0, 0x0

    .line 1311
    :cond_0
    return v0
.end method
