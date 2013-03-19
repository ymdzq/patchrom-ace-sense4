.class Lcom/htc/fragment/widget/CarouselContentAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "CarouselContentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fragment/widget/CarouselContentAdapter$1;,
        Lcom/htc/fragment/widget/CarouselContentAdapter$FastBitmapDrawable;
    }
.end annotation


# instance fields
.field eresources:Landroid/content/res/Resources;

.field private mAlternativeNameIndex:I

.field private mModel:Lcom/htc/fragment/widget/CarouselModel;

.field private mOverlayIndex:I

.field private mPackageIndex:I

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mTaskNameIndex:I

.field private mTaskTag:Ljava/lang/String;

.field private mTaskTagIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[ILcom/htc/fragment/widget/CarouselModel;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct/range {p0 .. p5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput v0, p0, Lcom/htc/fragment/widget/CarouselContentAdapter;->mTaskTagIndex:I

    iput v0, p0, Lcom/htc/fragment/widget/CarouselContentAdapter;->mAlternativeNameIndex:I

    iput v0, p0, Lcom/htc/fragment/widget/CarouselContentAdapter;->mOverlayIndex:I

    iput v0, p0, Lcom/htc/fragment/widget/CarouselContentAdapter;->mTaskNameIndex:I

    iput v0, p0, Lcom/htc/fragment/widget/CarouselContentAdapter;->mPackageIndex:I

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselContentAdapter;->mTaskTag:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselContentAdapter;->eresources:Landroid/content/res/Resources;

    iput-object p6, p0, Lcom/htc/fragment/widget/CarouselContentAdapter;->mModel:Lcom/htc/fragment/widget/CarouselModel;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselContentAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method private initColumnIndex(Landroid/database/Cursor;)V
    .locals 2

    iget v0, p0, Lcom/htc/fragment/widget/CarouselContentAdapter;->mAlternativeNameIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "task_tag"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/fragment/widget/CarouselContentAdapter;->mTaskTagIndex:I

    const-string v0, "task_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/fragment/widget/CarouselContentAdapter;->mTaskNameIndex:I

    const-string v0, "res_package"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/fragment/widget/CarouselContentAdapter;->mPackageIndex:I

    const-string v0, "overlay_resource"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/fragment/widget/CarouselContentAdapter;->mOverlayIndex:I

    const-string v0, "alternative_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/fragment/widget/CarouselContentAdapter;->mAlternativeNameIndex:I

    goto :goto_0
.end method


# virtual methods
.method public bindCoverView(Landroid/database/Cursor;Landroid/view/View;)V
    .locals 16

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/fragment/widget/CarouselContentAdapter;->mAlternativeNameIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/fragment/widget/CarouselContentAdapter;->mOverlayIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/fragment/widget/CarouselContentAdapter;->mTaskNameIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/fragment/widget/CarouselContentAdapter;->mPackageIndex:I

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v3, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/fragment/widget/CarouselContentAdapter;->eresources:Landroid/content/res/Resources;

    if-nez v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/fragment/widget/CarouselContentAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v14, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_1

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v3, v6, v14, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v4, v14, v15}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    if-eqz v2, :cond_0

    sget v14, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    invoke-virtual {v2, v14}, Landroid/graphics/Bitmap;->setDensity(I)V

    new-instance v8, Lcom/htc/fragment/widget/CarouselContentAdapter$FastBitmapDrawable;

    const/4 v14, 0x0

    invoke-direct {v8, v2, v14}, Lcom/htc/fragment/widget/CarouselContentAdapter$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;Lcom/htc/fragment/widget/CarouselContentAdapter$1;)V

    :cond_0
    move-object v10, v1

    if-nez v1, :cond_1

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v3, v12, v14, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    :cond_1
    const v14, 0x202006d

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    const v14, 0x202006c

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v13, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/fragment/widget/CarouselContentAdapter;->eresources:Landroid/content/res/Resources;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_0
    move-exception v14

    goto :goto_1

    :catch_1
    move-exception v14

    goto :goto_0
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2

    const v1, 0x202009d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0, p3, p1}, Lcom/htc/fragment/widget/CarouselContentAdapter;->bindCoverView(Landroid/database/Cursor;Landroid/view/View;)V

    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-boolean v1, p0, Lcom/htc/fragment/widget/CarouselContentAdapter;->mDataValid:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "this should only be called when the cursor is valid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/fragment/widget/CarouselContentAdapter;->setFrameView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setFrameView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselContentAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "couldn\'t move cursor to position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselContentAdapter;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v1}, Lcom/htc/fragment/widget/CarouselContentAdapter;->initColumnIndex(Landroid/database/Cursor;)V

    iget v3, p0, Lcom/htc/fragment/widget/CarouselContentAdapter;->mTaskTagIndex:I

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/fragment/widget/CarouselContentAdapter;->mTaskTag:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselContentAdapter;->mModel:Lcom/htc/fragment/widget/CarouselModel;

    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselContentAdapter;->mTaskTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/htc/fragment/widget/CarouselModel;->getTabSpec(Ljava/lang/String;)Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->getCacheView()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method
