.class public Lcom/htc/widget/ShadowLinearLayout;
.super Landroid/widget/LinearLayout;
.source "ShadowLinearLayout.java"


# instance fields
.field private mBottomShadow:Landroid/graphics/drawable/Drawable;

.field private mBottomShadowGone:Z

.field private mBottomShadowHeight:I

.field private mBottomShadowLeft:I

.field private mBottomShadowTop:I

.field private mBottomShadowWidth:I

.field private mDirty:Z

.field private mTopShadow:Landroid/graphics/drawable/Drawable;

.field private mTopShadowGone:Z

.field private mTopShadowHeight:I

.field private mTopShadowLeft:I

.field private mTopShadowTop:I

.field private mTopShadowWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/htc/widget/ShadowLinearLayout;->mDirty:Z

    iput v0, p0, Lcom/htc/widget/ShadowLinearLayout;->mTopShadowLeft:I

    iput v0, p0, Lcom/htc/widget/ShadowLinearLayout;->mTopShadowTop:I

    iput v0, p0, Lcom/htc/widget/ShadowLinearLayout;->mTopShadowWidth:I

    iput v0, p0, Lcom/htc/widget/ShadowLinearLayout;->mTopShadowHeight:I

    iput-object v2, p0, Lcom/htc/widget/ShadowLinearLayout;->mTopShadow:Landroid/graphics/drawable/Drawable;

    iput-boolean v1, p0, Lcom/htc/widget/ShadowLinearLayout;->mTopShadowGone:Z

    iput v0, p0, Lcom/htc/widget/ShadowLinearLayout;->mBottomShadowLeft:I

    iput v0, p0, Lcom/htc/widget/ShadowLinearLayout;->mBottomShadowTop:I

    iput v0, p0, Lcom/htc/widget/ShadowLinearLayout;->mBottomShadowWidth:I

    iput v0, p0, Lcom/htc/widget/ShadowLinearLayout;->mBottomShadowHeight:I

    iput-object v2, p0, Lcom/htc/widget/ShadowLinearLayout;->mBottomShadow:Landroid/graphics/drawable/Drawable;

    iput-boolean v1, p0, Lcom/htc/widget/ShadowLinearLayout;->mBottomShadowGone:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v1, p0, Lcom/htc/widget/ShadowLinearLayout;->mDirty:Z

    iput v0, p0, Lcom/htc/widget/ShadowLinearLayout;->mTopShadowLeft:I

    iput v0, p0, Lcom/htc/widget/ShadowLinearLayout;->mTopShadowTop:I

    iput v0, p0, Lcom/htc/widget/ShadowLinearLayout;->mTopShadowWidth:I

    iput v0, p0, Lcom/htc/widget/ShadowLinearLayout;->mTopShadowHeight:I

    iput-object v2, p0, Lcom/htc/widget/ShadowLinearLayout;->mTopShadow:Landroid/graphics/drawable/Drawable;

    iput-boolean v1, p0, Lcom/htc/widget/ShadowLinearLayout;->mTopShadowGone:Z

    iput v0, p0, Lcom/htc/widget/ShadowLinearLayout;->mBottomShadowLeft:I

    iput v0, p0, Lcom/htc/widget/ShadowLinearLayout;->mBottomShadowTop:I

    iput v0, p0, Lcom/htc/widget/ShadowLinearLayout;->mBottomShadowWidth:I

    iput v0, p0, Lcom/htc/widget/ShadowLinearLayout;->mBottomShadowHeight:I

    iput-object v2, p0, Lcom/htc/widget/ShadowLinearLayout;->mBottomShadow:Landroid/graphics/drawable/Drawable;

    iput-boolean v1, p0, Lcom/htc/widget/ShadowLinearLayout;->mBottomShadowGone:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v1, p0, Lcom/htc/widget/ShadowLinearLayout;->mDirty:Z

    iput v0, p0, Lcom/htc/widget/ShadowLinearLayout;->mTopShadowLeft:I

    iput v0, p0, Lcom/htc/widget/ShadowLinearLayout;->mTopShadowTop:I

    iput v0, p0, Lcom/htc/widget/ShadowLinearLayout;->mTopShadowWidth:I

    iput v0, p0, Lcom/htc/widget/ShadowLinearLayout;->mTopShadowHeight:I

    iput-object v2, p0, Lcom/htc/widget/ShadowLinearLayout;->mTopShadow:Landroid/graphics/drawable/Drawable;

    iput-boolean v1, p0, Lcom/htc/widget/ShadowLinearLayout;->mTopShadowGone:Z

    iput v0, p0, Lcom/htc/widget/ShadowLinearLayout;->mBottomShadowLeft:I

    iput v0, p0, Lcom/htc/widget/ShadowLinearLayout;->mBottomShadowTop:I

    iput v0, p0, Lcom/htc/widget/ShadowLinearLayout;->mBottomShadowWidth:I

    iput v0, p0, Lcom/htc/widget/ShadowLinearLayout;->mBottomShadowHeight:I

    iput-object v2, p0, Lcom/htc/widget/ShadowLinearLayout;->mBottomShadow:Landroid/graphics/drawable/Drawable;

    iput-boolean v1, p0, Lcom/htc/widget/ShadowLinearLayout;->mBottomShadowGone:Z

    return-void
.end method

.method private drawShadow(Landroid/graphics/Canvas;)V
    .locals 6

    iget-boolean v0, p0, Lcom/htc/widget/ShadowLinearLayout;->mDirty:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/ShadowLinearLayout;->setupShadows()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/ShadowLinearLayout;->mDirty:Z

    :cond_0
    iget-boolean v0, p0, Lcom/htc/widget/ShadowLinearLayout;->mTopShadowGone:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/ShadowLinearLayout;->mTopShadow:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/htc/widget/ShadowLinearLayout;->mTopShadowLeft:I

    iget v2, p0, Lcom/htc/widget/ShadowLinearLayout;->mTopShadowTop:I

    iget v3, p0, Lcom/htc/widget/ShadowLinearLayout;->mTopShadowLeft:I

    iget v4, p0, Lcom/htc/widget/ShadowLinearLayout;->mTopShadowWidth:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/htc/widget/ShadowLinearLayout;->mTopShadowTop:I

    iget v5, p0, Lcom/htc/widget/ShadowLinearLayout;->mTopShadowHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/htc/widget/ShadowLinearLayout;->mTopShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    iget-boolean v0, p0, Lcom/htc/widget/ShadowLinearLayout;->mBottomShadowGone:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/ShadowLinearLayout;->mBottomShadow:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/htc/widget/ShadowLinearLayout;->mBottomShadowLeft:I

    iget v2, p0, Lcom/htc/widget/ShadowLinearLayout;->mBottomShadowTop:I

    iget v3, p0, Lcom/htc/widget/ShadowLinearLayout;->mBottomShadowLeft:I

    iget v4, p0, Lcom/htc/widget/ShadowLinearLayout;->mBottomShadowWidth:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/htc/widget/ShadowLinearLayout;->mBottomShadowTop:I

    iget v5, p0, Lcom/htc/widget/ShadowLinearLayout;->mBottomShadowHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/htc/widget/ShadowLinearLayout;->mBottomShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method

.method private setupShadows()V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/ShadowLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x202004d

    invoke-virtual {p0, v3}, Lcom/htc/widget/ShadowLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    iput-boolean v7, p0, Lcom/htc/widget/ShadowLinearLayout;->mTopShadowGone:Z

    iput-object v8, p0, Lcom/htc/widget/ShadowLinearLayout;->mTopShadow:Landroid/graphics/drawable/Drawable;

    :goto_0
    const v3, 0x2020057

    invoke-virtual {p0, v3}, Lcom/htc/widget/ShadowLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_2

    iput-boolean v7, p0, Lcom/htc/widget/ShadowLinearLayout;->mBottomShadowGone:Z

    iput-object v8, p0, Lcom/htc/widget/ShadowLinearLayout;->mBottomShadow:Landroid/graphics/drawable/Drawable;

    :goto_1
    return-void

    :cond_0
    iput-boolean v6, p0, Lcom/htc/widget/ShadowLinearLayout;->mTopShadowGone:Z

    iget-object v3, p0, Lcom/htc/widget/ShadowLinearLayout;->mTopShadow:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_1

    const v3, 0x208026c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/widget/ShadowLinearLayout;->mTopShadow:Landroid/graphics/drawable/Drawable;

    :cond_1
    iget-object v3, p0, Lcom/htc/widget/ShadowLinearLayout;->mTopShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iput v3, p0, Lcom/htc/widget/ShadowLinearLayout;->mTopShadowHeight:I

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/htc/widget/ShadowLinearLayout;->mTopShadowTop:I

    invoke-virtual {p0}, Lcom/htc/widget/ShadowLinearLayout;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/htc/widget/ShadowLinearLayout;->mTopShadowLeft:I

    invoke-virtual {p0}, Lcom/htc/widget/ShadowLinearLayout;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/htc/widget/ShadowLinearLayout;->mTopShadowLeft:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/htc/widget/ShadowLinearLayout;->getPaddingRight()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/htc/widget/ShadowLinearLayout;->mTopShadowWidth:I

    goto :goto_0

    :cond_2
    iput-boolean v6, p0, Lcom/htc/widget/ShadowLinearLayout;->mBottomShadowGone:Z

    iget-object v3, p0, Lcom/htc/widget/ShadowLinearLayout;->mBottomShadow:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_3

    const v3, 0x2080262

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/widget/ShadowLinearLayout;->mBottomShadow:Landroid/graphics/drawable/Drawable;

    :cond_3
    iget-object v3, p0, Lcom/htc/widget/ShadowLinearLayout;->mBottomShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iput v3, p0, Lcom/htc/widget/ShadowLinearLayout;->mBottomShadowHeight:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, p0, Lcom/htc/widget/ShadowLinearLayout;->mBottomShadowHeight:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/htc/widget/ShadowLinearLayout;->mBottomShadowTop:I

    iget v3, p0, Lcom/htc/widget/ShadowLinearLayout;->mTopShadowLeft:I

    iput v3, p0, Lcom/htc/widget/ShadowLinearLayout;->mBottomShadowLeft:I

    iget v3, p0, Lcom/htc/widget/ShadowLinearLayout;->mTopShadowWidth:I

    iput v3, p0, Lcom/htc/widget/ShadowLinearLayout;->mBottomShadowWidth:I

    goto :goto_1
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/htc/widget/ShadowLinearLayout;->drawShadow(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/ShadowLinearLayout;->mDirty:Z

    return-void
.end method
