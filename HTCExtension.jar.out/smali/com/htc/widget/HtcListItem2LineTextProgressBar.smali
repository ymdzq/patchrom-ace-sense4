.class public Lcom/htc/widget/HtcListItem2LineTextProgressBar;
.super Lcom/htc/widget/HtcListItem2TextComponent;
.source "HtcListItem2LineTextProgressBar.java"

# interfaces
.implements Lcom/htc/widget/IHtcListItemTextComponent;


# instance fields
.field private mBottomGap:I

.field private mCenterGap:I

.field private mLeftMargin:I

.field private mProgress:Lcom/htc/widget/HtcProgressBar;

.field private mRightMargin:I

.field private mTopGap:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getM5()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItem2LineTextProgressBar;->mTopGap:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcListItem2LineTextProgressBar;->mCenterGap:I

    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getM3()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItem2LineTextProgressBar;->mBottomGap:I

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem2LineTextProgressBar;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItem2TextComponent;-><init>(Landroid/content/Context;I)V

    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getM5()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItem2LineTextProgressBar;->mTopGap:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcListItem2LineTextProgressBar;->mCenterGap:I

    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getM3()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItem2LineTextProgressBar;->mBottomGap:I

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem2LineTextProgressBar;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItem2TextComponent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getM5()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItem2LineTextProgressBar;->mTopGap:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcListItem2LineTextProgressBar;->mCenterGap:I

    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getM3()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItem2LineTextProgressBar;->mBottomGap:I

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem2LineTextProgressBar;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcListItem2TextComponent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getM5()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItem2LineTextProgressBar;->mTopGap:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcListItem2LineTextProgressBar;->mCenterGap:I

    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getM3()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItem2LineTextProgressBar;->mBottomGap:I

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem2LineTextProgressBar;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, -0x2

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    new-instance v1, Lcom/htc/widget/HtcFadingEdgeTextView;

    invoke-direct {v1, p1}, Lcom/htc/widget/HtcFadingEdgeTextView;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    new-instance v1, Lcom/htc/widget/HtcFadingEdgeTextView;

    invoke-direct {v1, p1}, Lcom/htc/widget/HtcFadingEdgeTextView;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, v5

    iget-boolean v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mIsMarqueeEnabled:Z

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItem2LineTextProgressBar;->enableMarquee(Z)V

    invoke-direct {p0}, Lcom/htc/widget/HtcListItem2LineTextProgressBar;->setDefaultTextStyle()V

    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getDesiredChildrenGap()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItem2LineTextProgressBar;->mLeftMargin:I

    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getDesiredChildrenGap()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItem2LineTextProgressBar;->mRightMargin:I

    iput v2, p0, Lcom/htc/widget/HtcListItem2LineTextProgressBar;->mPaddingTop:I

    iput v2, p0, Lcom/htc/widget/HtcListItem2LineTextProgressBar;->mPaddingRight:I

    iput v2, p0, Lcom/htc/widget/HtcListItem2LineTextProgressBar;->mPaddingLeft:I

    iput v2, p0, Lcom/htc/widget/HtcListItem2LineTextProgressBar;->mPaddingBottom:I

    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v2

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListItem2LineTextProgressBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v5

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListItem2LineTextProgressBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setDefaultTextStyle()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mItemMode:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mFontSize:[I

    iget-object v1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x205008d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    aput v1, v0, v3

    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mFontSize:[I

    iget-object v1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050094

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    aput v1, v0, v4

    iget v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mMode:I

    if-nez v0, :cond_0

    const v0, 0x2030038

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItem2LineTextProgressBar;->setPrimaryTextStyle(I)V

    const v0, 0x2030042

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItem2LineTextProgressBar;->setSecondaryTextStyle(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mItemMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mFontSize:[I

    iget-object v1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20501fe

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    aput v1, v0, v3

    iget-object v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mFontSize:[I

    iget-object v1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050200

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    aput v1, v0, v4

    iget v0, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mMode:I

    if-nez v0, :cond_0

    const v0, 0x20300af

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItem2LineTextProgressBar;->setPrimaryTextStyle(I)V

    const v0, 0x20300a8

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItem2LineTextProgressBar;->setSecondaryTextStyle(I)V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic enableMarquee(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->enableMarquee(Z)V

    return-void
.end method

.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    iget-object v1, p0, Lcom/htc/widget/HtcListItem2LineTextProgressBar;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineTextProgressBar;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    iget v1, p0, Lcom/htc/widget/HtcListItem2LineTextProgressBar;->mLeftMargin:I

    iget v2, p0, Lcom/htc/widget/HtcListItem2LineTextProgressBar;->mRightMargin:I

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iput-object v0, p0, Lcom/htc/widget/HtcListItem2LineTextProgressBar;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    goto :goto_0
.end method

.method public bridge synthetic getPrimaryCharSequence()Ljava/lang/CharSequence;
    .locals 1

    invoke-super {p0}, Lcom/htc/widget/HtcListItem2TextComponent;->getPrimaryCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPrimaryText()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/htc/widget/HtcListItem2TextComponent;->getPrimaryText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPrimaryTextView()Landroid/widget/TextView;
    .locals 1

    invoke-super {p0}, Lcom/htc/widget/HtcListItem2TextComponent;->getPrimaryTextView()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPrimaryTextVisibility()I
    .locals 1

    invoke-super {p0}, Lcom/htc/widget/HtcListItem2TextComponent;->getPrimaryTextVisibility()I

    move-result v0

    return v0
.end method

.method public getProgressBar()Landroid/widget/ProgressBar;
    .locals 4

    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineTextProgressBar;->mProgress:Lcom/htc/widget/HtcProgressBar;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/widget/HtcProgressBar;

    iget-object v1, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HtcListItem2LineTextProgressBar;->mProgress:Lcom/htc/widget/HtcProgressBar;

    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineTextProgressBar;->mProgress:Lcom/htc/widget/HtcProgressBar;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListItem2LineTextProgressBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcListItem2LineTextProgressBar;->mProgress:Lcom/htc/widget/HtcProgressBar;

    return-object v0
.end method

.method public bridge synthetic getSecondaryCharSequence()Ljava/lang/CharSequence;
    .locals 1

    invoke-super {p0}, Lcom/htc/widget/HtcListItem2TextComponent;->getSecondaryCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSecondaryText()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/htc/widget/HtcListItem2TextComponent;->getSecondaryText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSecondaryTextView()Landroid/widget/TextView;
    .locals 1

    invoke-super {p0}, Lcom/htc/widget/HtcListItem2TextComponent;->getSecondaryTextView()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSecondaryTextVisibility()I
    .locals 1

    invoke-super {p0}, Lcom/htc/widget/HtcListItem2TextComponent;->getSecondaryTextVisibility()I

    move-result v0

    return v0
.end method

.method public bridge synthetic notifyItemMode(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->notifyItemMode(I)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    const/16 v3, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/htc/widget/HtcListItem2LineTextProgressBar;->mProgress:Lcom/htc/widget/HtcProgressBar;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/widget/HtcListItem2LineTextProgressBar;->mProgress:Lcom/htc/widget/HtcProgressBar;

    invoke-virtual {v2}, Lcom/htc/widget/HtcProgressBar;->getVisibility()I

    move-result v2

    if-eq v2, v3, :cond_1

    iget v1, p0, Lcom/htc/widget/HtcListItem2LineTextProgressBar;->mTopGap:I

    iget-object v2, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    add-int v0, v2, v1

    iget-object v2, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v2, v2, v4

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem2LineTextProgressBar;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v2, v4, v1, v3, v0}, Landroid/widget/TextView;->layout(IIII)V

    iget v2, p0, Lcom/htc/widget/HtcListItem2LineTextProgressBar;->mCenterGap:I

    add-int v1, v0, v2

    iget-object v2, p0, Lcom/htc/widget/HtcListItem2LineTextProgressBar;->mProgress:Lcom/htc/widget/HtcProgressBar;

    invoke-virtual {v2}, Lcom/htc/widget/HtcProgressBar;->getMeasuredHeight()I

    move-result v2

    add-int v0, v1, v2

    iget-object v2, p0, Lcom/htc/widget/HtcListItem2LineTextProgressBar;->mProgress:Lcom/htc/widget/HtcProgressBar;

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem2LineTextProgressBar;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v2, v4, v1, v3, v0}, Lcom/htc/widget/HtcProgressBar;->layout(IIII)V

    iget v2, p0, Lcom/htc/widget/HtcListItem2LineTextProgressBar;->mCenterGap:I

    add-int v1, v0, v2

    iget-object v2, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    add-int v0, v1, v2

    iget-object v2, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v2, v2, v5

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem2LineTextProgressBar;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v2, v4, v1, v3, v0}, Landroid/widget/TextView;->layout(IIII)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-eq v2, v3, :cond_2

    invoke-virtual {p0, v4, v5, v4}, Lcom/htc/widget/HtcListItem2LineTextProgressBar;->layoutText(IZI)V

    invoke-virtual {p0, v5, v5, v4}, Lcom/htc/widget/HtcListItem2LineTextProgressBar;->layoutText(IZI)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-eq v2, v3, :cond_3

    invoke-virtual {p0, v4, v5, v4}, Lcom/htc/widget/HtcListItem2LineTextProgressBar;->layoutTextAtCenter(IZI)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-eq v2, v3, :cond_0

    invoke-virtual {p0, v5, v5, v4}, Lcom/htc/widget/HtcListItem2LineTextProgressBar;->layoutTextAtCenter(IZI)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    invoke-super {p0, p1, p2}, Lcom/htc/widget/HtcListItem2TextComponent;->onMeasure(II)V

    iget-object v2, p0, Lcom/htc/widget/HtcListItem2LineTextProgressBar;->mProgress:Lcom/htc/widget/HtcProgressBar;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget/HtcListItem2LineTextProgressBar;->mProgress:Lcom/htc/widget/HtcProgressBar;

    invoke-virtual {v2}, Lcom/htc/widget/HtcProgressBar;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/htc/widget/HtcListItem2LineTextProgressBar;->mProgress:Lcom/htc/widget/HtcProgressBar;

    invoke-virtual {p0, v2, p1, p2}, Lcom/htc/widget/HtcListItem2LineTextProgressBar;->measureChild(Landroid/view/View;II)V

    iget-object v2, p0, Lcom/htc/widget/HtcListItem2LineTextProgressBar;->mProgress:Lcom/htc/widget/HtcProgressBar;

    invoke-virtual {v2}, Lcom/htc/widget/HtcProgressBar;->getMeasuredHeight()I

    move-result v0

    iget v2, p0, Lcom/htc/widget/HtcListItem2LineTextProgressBar;->mTopGap:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/htc/widget/HtcListItem2LineTextProgressBar;->mBottomGap:I

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lcom/htc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    add-int v1, v2, v3

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem2LineTextProgressBar;->getMeasuredWidth()I

    move-result v2

    add-int v3, v1, v0

    invoke-virtual {p0, v2, v3}, Lcom/htc/widget/HtcListItem2LineTextProgressBar;->setMeasuredDimension(II)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setEnabled(Z)V

    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/htc/widget/HtcListItem2LineTextProgressBar;->mLeftMargin:I

    iget v2, p0, Lcom/htc/widget/HtcListItem2LineTextProgressBar;->mRightMargin:I

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :cond_0
    iput v3, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setPrimaryText(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setPrimaryText(I)V

    return-void
.end method

.method public bridge synthetic setPrimaryText(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setPrimaryText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic setPrimaryText(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setPrimaryText(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setPrimaryTextStyle(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setPrimaryTextStyle(I)V

    return-void
.end method

.method public bridge synthetic setPrimaryTextVisibility(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setPrimaryTextVisibility(I)V

    return-void
.end method

.method public bridge synthetic setSecondaryText(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setSecondaryText(I)V

    return-void
.end method

.method public bridge synthetic setSecondaryText(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setSecondaryText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic setSecondaryText(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setSecondaryText(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setSecondaryTextStyle(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setSecondaryTextStyle(I)V

    return-void
.end method

.method public bridge synthetic setSecondaryTextVisibility(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setSecondaryTextVisibility(I)V

    return-void
.end method

.method public bridge synthetic setUseFontSizeInStyle(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem2TextComponent;->setUseFontSizeInStyle(Z)V

    return-void
.end method
