.class public Lcom/htc/opensense2/widget/LandingPageImageView;
.super Landroid/widget/ImageView;
.source "LandingPageImageView.java"


# instance fields
.field private mBgDrawble:Landroid/graphics/drawable/Drawable;

.field private mImageId:I

.field private mImageViewSizeChange:Z

.field private mRes:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/htc/opensense2/widget/LandingPageImageView;->mRes:Landroid/content/res/Resources;

    iput-object v0, p0, Lcom/htc/opensense2/widget/LandingPageImageView;->mBgDrawble:Landroid/graphics/drawable/Drawable;

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense2/widget/LandingPageImageView;->mImageId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense2/widget/LandingPageImageView;->mImageViewSizeChange:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/widget/LandingPageImageView;->mRes:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    iget-boolean v6, p0, Lcom/htc/opensense2/widget/LandingPageImageView;->mImageViewSizeChange:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/opensense2/widget/LandingPageImageView;->mBgDrawble:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense2/widget/LandingPageImageView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/htc/opensense2/widget/LandingPageImageView;->getHeight()I

    move-result v4

    iget-object v6, p0, Lcom/htc/opensense2/widget/LandingPageImageView;->mBgDrawble:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v6, p0, Lcom/htc/opensense2/widget/LandingPageImageView;->mBgDrawble:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sub-int v6, v5, v3

    div-int/lit8 v1, v6, 0x2

    sub-int v6, v4, v2

    div-int/lit8 v0, v6, 0x2

    iget-object v6, p0, Lcom/htc/opensense2/widget/LandingPageImageView;->mBgDrawble:Landroid/graphics/drawable/Drawable;

    add-int v7, v1, v3

    add-int v8, v0, v2

    invoke-virtual {v6, v1, v0, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/htc/opensense2/widget/LandingPageImageView;->mImageViewSizeChange:Z

    :cond_0
    iget-object v6, p0, Lcom/htc/opensense2/widget/LandingPageImageView;->mBgDrawble:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/htc/opensense2/widget/LandingPageImageView;->mBgDrawble:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense2/widget/LandingPageImageView;->mImageViewSizeChange:Z

    return-void
.end method

.method public setBackgroundFixImageView(I)V
    .locals 1

    if-nez p1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/widget/LandingPageImageView;->mBgDrawble:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense2/widget/LandingPageImageView;->mImageViewSizeChange:Z

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/LandingPageImageView;->invalidate()V

    return-void

    :cond_1
    iget v0, p0, Lcom/htc/opensense2/widget/LandingPageImageView;->mImageId:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/htc/opensense2/widget/LandingPageImageView;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/widget/LandingPageImageView;->mBgDrawble:Landroid/graphics/drawable/Drawable;

    iput p1, p0, Lcom/htc/opensense2/widget/LandingPageImageView;->mImageId:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense2/widget/LandingPageImageView;->mImageViewSizeChange:Z

    goto :goto_0
.end method
