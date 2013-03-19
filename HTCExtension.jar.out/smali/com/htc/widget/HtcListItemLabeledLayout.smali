.class public Lcom/htc/widget/HtcListItemLabeledLayout;
.super Landroid/view/ViewGroup;
.source "HtcListItemLabeledLayout.java"

# interfaces
.implements Lcom/htc/widget/IHtcListItemTextComponent;


# instance fields
.field mControl:Landroid/view/View;

.field mControlMarginBottom:I

.field mLabel:Ljava/lang/CharSequence;

.field mLabelMarginTop:I

.field mLabelView:Lcom/htc/widget/HtcFadingEdgeTextView;

.field mMarginLeftAndRight:I

.field mPaddingLeftAndRight:I

.field mVerticalGap:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcListItemLabeledLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/HtcListItemLabeledLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const v4, 0x205000d

    const/4 v3, 0x4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v3, p0, Lcom/htc/widget/HtcListItemLabeledLayout;->mLabelMarginTop:I

    const/16 v2, 0x10

    iput v2, p0, Lcom/htc/widget/HtcListItemLabeledLayout;->mMarginLeftAndRight:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/widget/HtcListItemLabeledLayout;->mPaddingLeftAndRight:I

    iput v3, p0, Lcom/htc/widget/HtcListItemLabeledLayout;->mVerticalGap:I

    iput v3, p0, Lcom/htc/widget/HtcListItemLabeledLayout;->mControlMarginBottom:I

    const-string v2, ""

    iput-object v2, p0, Lcom/htc/widget/HtcListItemLabeledLayout;->mLabel:Ljava/lang/CharSequence;

    sget-object v2, Lcom/android/internal/R$styleable;->TextView:[I

    const/16 v3, 0x14

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/widget/HtcListItemLabeledLayout;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/htc/widget/HtcListItemLabeledLayout;->mLabelMarginTop:I

    const v2, 0x2050001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/htc/widget/HtcListItemLabeledLayout;->mMarginLeftAndRight:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/htc/widget/HtcListItemLabeledLayout;->mVerticalGap:I

    new-instance v2, Lcom/htc/widget/HtcFadingEdgeTextView;

    invoke-direct {v2, p1}, Lcom/htc/widget/HtcFadingEdgeTextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/widget/HtcListItemLabeledLayout;->mLabelView:Lcom/htc/widget/HtcFadingEdgeTextView;

    iget-object v2, p0, Lcom/htc/widget/HtcListItemLabeledLayout;->mLabelView:Lcom/htc/widget/HtcFadingEdgeTextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFadingEdgeTextView;->setSingleLine(Z)V

    iget-object v2, p0, Lcom/htc/widget/HtcListItemLabeledLayout;->mLabelView:Lcom/htc/widget/HtcFadingEdgeTextView;

    const v3, 0x2030042

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFadingEdgeTextView;->setTextStyle(I)V

    iget-object v2, p0, Lcom/htc/widget/HtcListItemLabeledLayout;->mLabelView:Lcom/htc/widget/HtcFadingEdgeTextView;

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListItemLabeledLayout;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/htc/widget/HtcListItemLabeledLayout;->mLabel:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget/HtcListItemLabeledLayout;->mLabelView:Lcom/htc/widget/HtcFadingEdgeTextView;

    iget-object v3, p0, Lcom/htc/widget/HtcListItemLabeledLayout;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFadingEdgeTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const v2, 0x2050002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/htc/widget/HtcListItemLabeledLayout;->mControlMarginBottom:I

    return-void
.end method

.method private compareText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getComponentHeight()I
    .locals 2

    iget v0, p0, Lcom/htc/widget/HtcListItemLabeledLayout;->mLabelMarginTop:I

    iget-object v1, p0, Lcom/htc/widget/HtcListItemLabeledLayout;->mLabelView:Lcom/htc/widget/HtcFadingEdgeTextView;

    invoke-virtual {v1}, Lcom/htc/widget/HtcFadingEdgeTextView;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/htc/widget/HtcListItemLabeledLayout;->mVerticalGap:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemLabeledLayout;->getControlHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/htc/widget/HtcListItemLabeledLayout;->mControlMarginBottom:I

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemLabeledLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HtcListItemLabeledComponent can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemLabeledLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iput-object p1, p0, Lcom/htc/widget/HtcListItemLabeledLayout;->mControl:Landroid/view/View;

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method getControlHeight()I
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/HtcListItemLabeledLayout;->mControl:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListItemLabeledLayout;->mControl:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListItemLabeledLayout;->mControl:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLabelText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcListItemLabeledLayout;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemLabeledLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/HtcListItemLabeledLayout;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_0

    instance-of v1, v0, Lcom/htc/widget/HtcListItem;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lcom/htc/widget/HtcListItemLabeledLayout;->mPaddingLeftAndRight:I

    return-void

    :cond_0
    iget v1, p0, Lcom/htc/widget/HtcListItemLabeledLayout;->mMarginLeftAndRight:I

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    iget v3, p0, Lcom/htc/widget/HtcListItemLabeledLayout;->mLabelMarginTop:I

    iget-object v4, p0, Lcom/htc/widget/HtcListItemLabeledLayout;->mLabelView:Lcom/htc/widget/HtcFadingEdgeTextView;

    invoke-virtual {v4}, Lcom/htc/widget/HtcFadingEdgeTextView;->getMeasuredHeight()I

    move-result v4

    add-int v2, v3, v4

    iget-object v4, p0, Lcom/htc/widget/HtcListItemLabeledLayout;->mLabelView:Lcom/htc/widget/HtcFadingEdgeTextView;

    iget v5, p0, Lcom/htc/widget/HtcListItemLabeledLayout;->mPaddingLeftAndRight:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemLabeledLayout;->getMeasuredWidth()I

    move-result v6

    iget v7, p0, Lcom/htc/widget/HtcListItemLabeledLayout;->mPaddingLeftAndRight:I

    sub-int/2addr v6, v7

    invoke-virtual {v4, v5, v3, v6, v2}, Lcom/htc/widget/HtcFadingEdgeTextView;->layout(IIII)V

    iget-object v4, p0, Lcom/htc/widget/HtcListItemLabeledLayout;->mControl:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/widget/HtcListItemLabeledLayout;->mControl:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    iget v4, p0, Lcom/htc/widget/HtcListItemLabeledLayout;->mVerticalGap:I

    add-int v1, v2, v4

    iget-object v4, p0, Lcom/htc/widget/HtcListItemLabeledLayout;->mControl:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int v0, v1, v4

    iget-object v4, p0, Lcom/htc/widget/HtcListItemLabeledLayout;->mControl:Landroid/view/View;

    iget v5, p0, Lcom/htc/widget/HtcListItemLabeledLayout;->mPaddingLeftAndRight:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemLabeledLayout;->getMeasuredWidth()I

    move-result v6

    iget v7, p0, Lcom/htc/widget/HtcListItemLabeledLayout;->mPaddingLeftAndRight:I

    sub-int/2addr v6, v7

    invoke-virtual {v4, v5, v1, v6, v0}, Landroid/view/View;->layout(IIII)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    const/high16 v4, 0x4000

    iget v5, p0, Lcom/htc/widget/HtcListItemLabeledLayout;->mPaddingLeftAndRight:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v3, v5

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/4 v5, 0x0

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v5, p0, Lcom/htc/widget/HtcListItemLabeledLayout;->mLabelView:Lcom/htc/widget/HtcFadingEdgeTextView;

    invoke-virtual {v5, v1, v0}, Lcom/htc/widget/HtcFadingEdgeTextView;->measure(II)V

    iget-object v5, p0, Lcom/htc/widget/HtcListItemLabeledLayout;->mControl:Landroid/view/View;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/widget/HtcListItemLabeledLayout;->mControl:Landroid/view/View;

    invoke-virtual {v5, v1, v0}, Landroid/view/View;->measure(II)V

    :cond_0
    invoke-direct {p0}, Lcom/htc/widget/HtcListItemLabeledLayout;->getComponentHeight()I

    move-result v5

    invoke-virtual {p0, v3, v5}, Lcom/htc/widget/HtcListItemLabeledLayout;->setMeasuredDimension(II)V

    iget-object v5, p0, Lcom/htc/widget/HtcListItemLabeledLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x2

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method public setLabelText(I)V
    .locals 2

    iget-object v1, p0, Lcom/htc/widget/HtcListItemLabeledLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItemLabeledLayout;->setLabelText(Ljava/lang/String;)V

    return-void
.end method

.method public setLabelText(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/HtcListItemLabeledLayout;->mLabel:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, p1}, Lcom/htc/widget/HtcListItemLabeledLayout;->compareText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/htc/widget/HtcListItemLabeledLayout;->mLabel:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/htc/widget/HtcListItemLabeledLayout;->mLabelView:Lcom/htc/widget/HtcFadingEdgeTextView;

    iget-object v1, p0, Lcom/htc/widget/HtcListItemLabeledLayout;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFadingEdgeTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setLabelText(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/HtcListItemLabeledLayout;->mLabel:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, p1}, Lcom/htc/widget/HtcListItemLabeledLayout;->compareText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/htc/widget/HtcListItemLabeledLayout;->mLabel:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/htc/widget/HtcListItemLabeledLayout;->mLabelView:Lcom/htc/widget/HtcFadingEdgeTextView;

    iget-object v1, p0, Lcom/htc/widget/HtcListItemLabeledLayout;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFadingEdgeTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    const/4 v0, -0x2

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    return-void
.end method
