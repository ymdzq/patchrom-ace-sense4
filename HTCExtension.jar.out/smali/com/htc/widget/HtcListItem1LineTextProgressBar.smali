.class public Lcom/htc/widget/HtcListItem1LineTextProgressBar;
.super Landroid/view/ViewGroup;
.source "HtcListItem1LineTextProgressBar.java"

# interfaces
.implements Lcom/htc/widget/IHtcListItemTextComponent;


# instance fields
.field private mBottomGap:I

.field private mCenterGap:I

.field private mContext:Landroid/content/Context;

.field private mIsMarqueeEnabled:Z

.field mItemMode:I

.field private mLeftMargin:I

.field private mProgress:Lcom/htc/widget/HtcProgressBar;

.field private mRightMargin:I

.field private mStamp:Landroid/widget/TextView;

.field private mText:Landroid/widget/TextView;

.field private mTopGap:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getM5()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mTopGap:I

    iput v1, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mCenterGap:I

    iput v1, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mBottomGap:I

    iput-boolean v1, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mIsMarqueeEnabled:Z

    iput v1, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mItemMode:I

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getM5()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mTopGap:I

    iput v1, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mCenterGap:I

    iput v1, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mBottomGap:I

    iput-boolean v1, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mIsMarqueeEnabled:Z

    iput v1, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mItemMode:I

    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getM5()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mTopGap:I

    iput v1, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mCenterGap:I

    iput v1, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mBottomGap:I

    iput-boolean v1, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mIsMarqueeEnabled:Z

    iput v1, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mItemMode:I

    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

.method private init(Landroid/content/Context;)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, -0x2

    const/4 v1, 0x0

    iget v0, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mItemMode:I

    invoke-static {p1, v0}, Lcom/htc/widget/HtcListItemUtil;->setContextForMargins(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/htc/widget/HtcProgressBar;

    invoke-direct {v0, p1}, Lcom/htc/widget/HtcProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mProgress:Lcom/htc/widget/HtcProgressBar;

    new-instance v0, Lcom/htc/widget/HtcFadingEdgeTextView;

    invoke-direct {v0, p1}, Lcom/htc/widget/HtcFadingEdgeTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mText:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mIsMarqueeEnabled:Z

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->enableMarquee(Z)V

    invoke-direct {p0}, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->setDefaultTextStyle()V

    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getDesiredChildrenGap()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mLeftMargin:I

    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getDesiredChildrenGap()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mRightMargin:I

    iput v1, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mPaddingTop:I

    iput v1, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mPaddingRight:I

    iput v1, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mPaddingLeft:I

    iput v1, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mPaddingBottom:I

    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mProgress:Lcom/htc/widget/HtcProgressBar;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mText:Landroid/widget/TextView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    sget-object v1, Lcom/htc/R$styleable;->HtcListItemTextComponentMode:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mIsMarqueeEnabled:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :goto_0
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->init(Landroid/content/Context;)V

    return-void

    :cond_0
    iput-boolean v2, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mIsMarqueeEnabled:Z

    goto :goto_0
.end method

.method private initStamp()V
    .locals 3

    const/4 v2, -0x2

    new-instance v0, Lcom/htc/widget/HtcFadingEdgeTextView;

    iget-object v1, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcFadingEdgeTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mStamp:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mStamp:Landroid/widget/TextView;

    check-cast v0, Lcom/htc/widget/HtcFadingEdgeTextView;

    const v1, 0x2030045

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFadingEdgeTextView;->setTextStyle(I)V

    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mStamp:Landroid/widget/TextView;

    check-cast v0, Lcom/htc/widget/HtcFadingEdgeTextView;

    iget-boolean v1, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mIsMarqueeEnabled:Z

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFadingEdgeTextView;->setEnableMarquee(Z)V

    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mStamp:Landroid/widget/TextView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private layoutTextAtCenter(Z)V
    .locals 5

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x2

    iget-object v3, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mText:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    :goto_1
    iget-object v4, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v3, v2, v0, v1, v4}, Landroid/widget/TextView;->layout(IIII)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    move v2, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->getMeasuredWidth()I

    move-result v1

    goto :goto_1
.end method

.method private setDefaultTextStyle()V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mText:Landroid/widget/TextView;

    check-cast v0, Lcom/htc/widget/HtcFadingEdgeTextView;

    const v1, 0x2030038

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFadingEdgeTextView;->setTextStyle(I)V

    return-void
.end method

.method private setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->compareText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p2, :cond_1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->compareText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p2, :cond_1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public enableMarquee(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mIsMarqueeEnabled:Z

    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mText:Landroid/widget/TextView;

    check-cast v0, Lcom/htc/widget/HtcFadingEdgeTextView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcFadingEdgeTextView;->setEnableMarquee(Z)V

    return-void
.end method

.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    iget-object v1, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    iget v1, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mLeftMargin:I

    iget v2, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mRightMargin:I

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iput-object v0, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    goto :goto_0
.end method

.method public getPrimaryCharSequence()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProgressBar()Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mProgress:Lcom/htc/widget/HtcProgressBar;

    return-object v0
.end method

.method public getStampCharSequence()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mStamp:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getStampText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mStamp:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    const/4 v6, 0x0

    const/16 v5, 0x8

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mProgress:Lcom/htc/widget/HtcProgressBar;

    invoke-virtual {v3}, Lcom/htc/widget/HtcProgressBar;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v0, v2, 0x3

    iget v1, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mTopGap:I

    iget-object v2, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mProgress:Lcom/htc/widget/HtcProgressBar;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mProgress:Lcom/htc/widget/HtcProgressBar;

    invoke-virtual {v2}, Lcom/htc/widget/HtcProgressBar;->getVisibility()I

    move-result v2

    if-eq v2, v5, :cond_2

    iget-object v2, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v6, v1, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    iget-object v2, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mProgress:Lcom/htc/widget/HtcProgressBar;

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mProgress:Lcom/htc/widget/HtcProgressBar;

    invoke-virtual {v4}, Lcom/htc/widget/HtcProgressBar;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v6, v1, v3, v4}, Lcom/htc/widget/HtcProgressBar;->layout(IIII)V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mStamp:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-eq v2, v5, :cond_1

    iget-object v2, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v1, v2

    iget-object v3, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v1, v2, v3

    iget-object v2, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mStamp:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->getMeasuredWidth()I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    :cond_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-eq v2, v5, :cond_0

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->layoutTextAtCenter(Z)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 13

    const/high16 v12, 0x4000

    const/16 v11, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getM2()I

    move-result v4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    iget-object v8, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getVisibility()I

    move-result v8

    if-eq v8, v11, :cond_0

    iget-object v8, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mStamp:Landroid/widget/TextView;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getVisibility()I

    move-result v8

    if-eq v8, v11, :cond_4

    div-int/lit8 v8, v7, 0x3

    div-int/lit8 v9, v4, 0x2

    sub-int v1, v8, v9

    mul-int/lit8 v8, v7, 0x2

    div-int/lit8 v8, v8, 0x3

    div-int/lit8 v9, v4, 0x2

    sub-int v2, v8, v9

    iget-object v8, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mStamp:Landroid/widget/TextView;

    invoke-virtual {p0, v8, p1, p2}, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->measureChild(Landroid/view/View;II)V

    iget-object v8, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v8

    sub-int v3, v8, v1

    if-ltz v3, :cond_3

    iget-object v8, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mStamp:Landroid/widget/TextView;

    invoke-static {v1, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    iget-object v10, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v10

    invoke-static {v10, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {p0, v8, v9, v10}, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->measureChild(Landroid/view/View;II)V

    iget-object v8, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mText:Landroid/widget/TextView;

    invoke-static {v2, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {p0, v8, v9, p2}, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->measureChild(Landroid/view/View;II)V

    :goto_0
    iget-object v8, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v6, v8

    iget-object v8, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    :cond_0
    iget-object v8, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mProgress:Lcom/htc/widget/HtcProgressBar;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mProgress:Lcom/htc/widget/HtcProgressBar;

    invoke-virtual {v8}, Lcom/htc/widget/HtcProgressBar;->getVisibility()I

    move-result v8

    if-eq v8, v11, :cond_1

    iget-object v8, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mProgress:Lcom/htc/widget/HtcProgressBar;

    invoke-virtual {p0, v8, p1, p2}, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->measureChild(Landroid/view/View;II)V

    iget-object v8, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mProgress:Lcom/htc/widget/HtcProgressBar;

    invoke-virtual {v8}, Lcom/htc/widget/HtcProgressBar;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v6, v8

    iget-object v8, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mProgress:Lcom/htc/widget/HtcProgressBar;

    invoke-virtual {v8}, Lcom/htc/widget/HtcProgressBar;->getMeasuredWidth()I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    :cond_1
    iget v8, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mItemMode:I

    invoke-static {v8}, Lcom/htc/widget/HtcListItemUtil;->getDesiredListItemHeight(I)I

    move-result v0

    iget-object v8, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getVisibility()I

    move-result v8

    if-eq v8, v11, :cond_5

    iget-object v8, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mProgress:Lcom/htc/widget/HtcProgressBar;

    invoke-virtual {v8}, Lcom/htc/widget/HtcProgressBar;->getVisibility()I

    move-result v8

    if-eq v8, v11, :cond_5

    iget v8, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mTopGap:I

    iget v9, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mBottomGap:I

    add-int/2addr v8, v9

    iget v9, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mCenterGap:I

    add-int/2addr v8, v9

    add-int/2addr v6, v8

    if-ge v6, v0, :cond_2

    move v6, v0

    :cond_2
    :goto_1
    invoke-static {v5, p1}, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->resolveSize(II)I

    move-result v8

    invoke-static {v6, p2}, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->resolveSize(II)I

    move-result v9

    invoke-virtual {p0, v8, v9}, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->setMeasuredDimension(II)V

    return-void

    :cond_3
    iget-object v8, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mText:Landroid/widget/TextView;

    sub-int v9, v2, v3

    div-int/lit8 v10, v4, 0x2

    sub-int/2addr v9, v10

    invoke-static {v9, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {p0, v8, v9, p2}, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->measureChild(Landroid/view/View;II)V

    goto :goto_0

    :cond_4
    iget-object v8, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mText:Landroid/widget/TextView;

    invoke-virtual {p0, v8, p1, p2}, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->measureChild(Landroid/view/View;II)V

    goto :goto_0

    :cond_5
    iget-object v8, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getVisibility()I

    move-result v8

    if-ne v8, v11, :cond_6

    iget-object v8, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mProgress:Lcom/htc/widget/HtcProgressBar;

    invoke-virtual {v8}, Lcom/htc/widget/HtcProgressBar;->getVisibility()I

    move-result v8

    if-eq v8, v11, :cond_2

    :cond_6
    iget v8, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mTopGap:I

    iget v9, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mBottomGap:I

    add-int/2addr v8, v9

    add-int/2addr v6, v8

    goto :goto_1
.end method

.method public setEnabled(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->isEnabled()Z

    move-result v2

    if-ne v2, p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mLeftMargin:I

    iget v2, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mRightMargin:I

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :cond_0
    iput v3, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setPrimaryText(I)V
    .locals 2

    iget-object v1, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method public setPrimaryText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mText:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPrimaryText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mText:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method public setStampText(I)V
    .locals 2

    iget-object v1, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mStamp:Landroid/widget/TextView;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->initStamp()V

    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mStamp:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method public setStampText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mStamp:Landroid/widget/TextView;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->initStamp()V

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mStamp:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setStampText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mStamp:Landroid/widget/TextView;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->initStamp()V

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mStamp:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method public setStampTextVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
