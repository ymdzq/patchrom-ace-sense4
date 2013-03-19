.class public Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;
.super Landroid/widget/FrameLayout;
.source "HtcListItem7Badges1LineBottomStamp_s45.java"

# interfaces
.implements Lcom/htc/widget/IHtcListItemComponent;


# static fields
.field static final MAX_BADGES:I = 0x6

.field public static final MAX_BADGE_COUNTS:I = 0x8

.field public static final MODE_DARK_LIST:I = 0x1

.field public static final MODE_WHITE_LIST:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private fgOn:Landroid/graphics/drawable/Drawable;

.field private mAtLeast1BadgeVisible:Z

.field private mBadgeGap:I

.field private mBadges:[Landroid/widget/ImageView;

.field private mBadgesMaxHeight:I

.field private mContext:Landroid/content/Context;

.field private mFlagButton:Lcom/htc/widget/HtcFlagButton;

.field mIsAutomotiveMode:Z

.field private mIsMarqueeEnabled:Z

.field mItemMode:I

.field private mMode:I

.field private mStamp:Landroid/widget/TextView;

.field private mStampStyle:I

.field private mToggleButton:Landroid/widget/ToggleButton;

.field private mToggleButtonSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mContext:Landroid/content/Context;

    iput v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mBadgesMaxHeight:I

    iput-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mBadges:[Landroid/widget/ImageView;

    iput-boolean v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mAtLeast1BadgeVisible:Z

    iput v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mStampStyle:I

    iput-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->fgOn:Landroid/graphics/drawable/Drawable;

    iput v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mMode:I

    iput-boolean v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mIsMarqueeEnabled:Z

    iput-boolean v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mIsAutomotiveMode:Z

    iput v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mItemMode:I

    invoke-direct {p0, p1, v1, v0}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->initDrawable(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mContext:Landroid/content/Context;

    iput v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mBadgesMaxHeight:I

    iput-object v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mBadges:[Landroid/widget/ImageView;

    iput-boolean v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mAtLeast1BadgeVisible:Z

    iput v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mStampStyle:I

    iput-object v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->fgOn:Landroid/graphics/drawable/Drawable;

    iput v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mMode:I

    iput-boolean v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mIsMarqueeEnabled:Z

    iput-boolean v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mIsAutomotiveMode:Z

    iput v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mItemMode:I

    if-ltz p2, :cond_0

    const/4 v0, 0x1

    if-gt p2, v0, :cond_0

    iput p2, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mMode:I

    :goto_0
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->init(Landroid/content/Context;)V

    return-void

    :cond_0
    iput v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mMode:I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mContext:Landroid/content/Context;

    iput v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mBadgesMaxHeight:I

    iput-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mBadges:[Landroid/widget/ImageView;

    iput-boolean v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mAtLeast1BadgeVisible:Z

    iput v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mStampStyle:I

    iput-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->fgOn:Landroid/graphics/drawable/Drawable;

    iput v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mMode:I

    iput-boolean v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mIsMarqueeEnabled:Z

    iput-boolean v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mIsAutomotiveMode:Z

    iput v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mItemMode:I

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->initDrawable(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mContext:Landroid/content/Context;

    iput v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mBadgesMaxHeight:I

    iput-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mBadges:[Landroid/widget/ImageView;

    iput-boolean v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mAtLeast1BadgeVisible:Z

    iput v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mStampStyle:I

    iput-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->fgOn:Landroid/graphics/drawable/Drawable;

    iput v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mMode:I

    iput-boolean v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mIsMarqueeEnabled:Z

    iput-boolean v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mIsAutomotiveMode:Z

    iput v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mItemMode:I

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->initDrawable(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private addAllChild()V
    .locals 3

    const/4 v2, -0x2

    iget-object v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mToggleButton:Landroid/widget/ToggleButton;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mFlagButton:Lcom/htc/widget/HtcFlagButton;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mStamp:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mItemMode:I

    invoke-static {p1, v0}, Lcom/htc/widget/HtcListItemUtil;->setContextForMargins(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mContext:Landroid/content/Context;

    const/4 v0, 0x6

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mBadges:[Landroid/widget/ImageView;

    new-instance v0, Landroid/widget/ToggleButton;

    invoke-direct {v0, p1}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mToggleButton:Landroid/widget/ToggleButton;

    new-instance v0, Lcom/htc/widget/HtcFlagButton;

    invoke-direct {v0, p1}, Lcom/htc/widget/HtcFlagButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mFlagButton:Lcom/htc/widget/HtcFlagButton;

    new-instance v0, Lcom/htc/widget/HtcFadingEdgeTextView;

    invoke-direct {v0, p1}, Lcom/htc/widget/HtcFadingEdgeTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mStamp:Landroid/widget/TextView;

    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getM6()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mBadgeGap:I

    iget-object v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mToggleButton:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->fgOn:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setClickable(Z)V

    iget-object v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setFocusable(Z)V

    iget-object v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mFlagButton:Lcom/htc/widget/HtcFlagButton;

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcFlagButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mStamp:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mIsMarqueeEnabled:Z

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->enableMarquee(Z)V

    iget v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mMode:I

    if-nez v0, :cond_0

    const v0, 0x2030045

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->setStampTextStyle(I)V

    :goto_0
    iput v2, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mPaddingTop:I

    iput v2, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mPaddingRight:I

    iput v2, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mPaddingLeft:I

    iput v2, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mPaddingBottom:I

    invoke-direct {p0}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->addAllChild()V

    return-void

    :cond_0
    const v0, 0x2030024

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->setStampTextStyle(I)V

    goto :goto_0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    sget-object v1, Lcom/htc/R$styleable;->HtcListItemTextComponentMode:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mMode:I

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mIsMarqueeEnabled:Z

    :goto_0
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->init(Landroid/content/Context;)V

    return-void

    :cond_0
    iput v2, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mMode:I

    iput-boolean v2, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mIsMarqueeEnabled:Z

    goto :goto_0
.end method

.method private initDrawable(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/16 v0, 0x22

    invoke-static {p1, p2, p3, v0}, Lcom/htc/widget/HtcButtonUtil;->getButtonDrawable(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->fgOn:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private layoutBadges(Z)V
    .locals 9

    const/16 v8, 0x8

    const/high16 v7, 0x3f00

    const/4 v4, 0x0

    iget v5, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mItemMode:I

    invoke-static {v5}, Lcom/htc/widget/HtcListItemUtil;->getDesiredCenterFor7Badge(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->getMeasuredWidth()I

    move-result v2

    move v3, v2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->getMeasuredHeight()I

    move-result v5

    iget v6, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mBadgesMaxHeight:I

    sub-int/2addr v5, v6

    div-int/lit8 v4, v5, 0x2

    :cond_0
    iget-object v5, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mFlagButton:Lcom/htc/widget/HtcFlagButton;

    invoke-virtual {v5}, Lcom/htc/widget/HtcFlagButton;->getVisibility()I

    move-result v5

    if-eq v5, v8, :cond_2

    if-nez p1, :cond_1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mFlagButton:Lcom/htc/widget/HtcFlagButton;

    invoke-virtual {v6}, Lcom/htc/widget/HtcFlagButton;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    float-to-int v4, v5

    :cond_1
    iget-object v5, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mFlagButton:Lcom/htc/widget/HtcFlagButton;

    invoke-virtual {v5}, Lcom/htc/widget/HtcFlagButton;->getMeasuredWidth()I

    move-result v5

    sub-int v2, v3, v5

    iget-object v5, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mFlagButton:Lcom/htc/widget/HtcFlagButton;

    iget-object v6, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mFlagButton:Lcom/htc/widget/HtcFlagButton;

    invoke-virtual {v6}, Lcom/htc/widget/HtcFlagButton;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v5, v2, v4, v3, v6}, Lcom/htc/widget/HtcFlagButton;->layout(IIII)V

    iget v5, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mBadgeGap:I

    sub-int v3, v2, v5

    :cond_2
    iget-object v5, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v5}, Landroid/widget/ToggleButton;->getVisibility()I

    move-result v5

    if-eq v5, v8, :cond_4

    if-nez p1, :cond_3

    int-to-float v5, v0

    iget v6, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mToggleButtonSize:I

    int-to-float v6, v6

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    float-to-int v4, v5

    :cond_3
    iget-object v5, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v5}, Landroid/widget/ToggleButton;->getMeasuredWidth()I

    move-result v5

    sub-int v2, v3, v5

    iget-object v5, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mToggleButton:Landroid/widget/ToggleButton;

    iget v6, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mToggleButtonSize:I

    add-int/2addr v6, v4

    invoke-virtual {v5, v2, v4, v3, v6}, Landroid/widget/ToggleButton;->layout(IIII)V

    iget v5, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mBadgeGap:I

    sub-int v3, v2, v5

    :cond_4
    const/4 v1, 0x5

    :goto_0
    if-ltz v1, :cond_7

    iget-object v5, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mBadges:[Landroid/widget/ImageView;

    aget-object v5, v5, v1

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mBadges:[Landroid/widget/ImageView;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-eq v5, v8, :cond_6

    if-nez p1, :cond_5

    int-to-float v5, v0

    iget-object v6, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mBadges:[Landroid/widget/ImageView;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    float-to-int v4, v5

    :cond_5
    iget-object v5, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mBadges:[Landroid/widget/ImageView;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v5

    sub-int v2, v3, v5

    iget-object v5, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mBadges:[Landroid/widget/ImageView;

    aget-object v5, v5, v1

    iget-object v6, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mBadges:[Landroid/widget/ImageView;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v5, v2, v4, v3, v6}, Landroid/widget/ImageView;->layout(IIII)V

    iget v5, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mBadgeGap:I

    sub-int v3, v2, v5

    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method private layoutStamp(I)V
    .locals 4

    iget-object v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mStamp:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, p1

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    return-void
.end method

.method private setDefaultTextStyle()V
    .locals 2

    iget v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mItemMode:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mMode:I

    if-nez v0, :cond_1

    const v0, 0x2030045

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->setStampTextStyle(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v0, 0x2030024

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->setStampTextStyle(I)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mItemMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mMode:I

    if-nez v0, :cond_3

    const v0, 0x2030091

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->setStampTextStyle(I)V

    goto :goto_0

    :cond_3
    const v0, 0x2030090

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->setStampTextStyle(I)V

    goto :goto_0
.end method


# virtual methods
.method public enableMarquee(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mIsMarqueeEnabled:Z

    iget-object v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mStamp:Landroid/widget/TextView;

    check-cast v0, Lcom/htc/widget/HtcFadingEdgeTextView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcFadingEdgeTextView;->setEnableMarquee(Z)V

    return-void
.end method

.method public getBadge(I)Landroid/view/View;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x6

    if-ltz p1, :cond_1

    if-ge p1, v1, :cond_1

    iget-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mBadges:[Landroid/widget/ImageView;

    aget-object v1, v1, p1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mBadges:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-ne p1, v1, :cond_2

    iget-object v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mToggleButton:Landroid/widget/ToggleButton;

    goto :goto_0

    :cond_2
    const/4 v1, 0x7

    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mFlagButton:Lcom/htc/widget/HtcFlagButton;

    goto :goto_0
.end method

.method public getBadgeState(I)Z
    .locals 3

    const/4 v2, 0x6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_3

    if-ge p1, v2, :cond_3

    iget-object v2, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mBadges:[Landroid/widget/ImageView;

    aget-object v2, v2, p1

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mBadges:[Landroid/widget/ImageView;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    if-ne p1, v2, :cond_4

    iget-object v2, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    const/4 v2, 0x7

    if-ne p1, v2, :cond_5

    iget-object v2, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mFlagButton:Lcom/htc/widget/HtcFlagButton;

    invoke-virtual {v2}, Lcom/htc/widget/HtcFlagButton;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iput-object v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    goto :goto_0
.end method

.method public getTextStamp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public notifyItemMode(I)V
    .locals 2

    iput p1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mItemMode:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mItemMode:I

    invoke-static {v0, v1}, Lcom/htc/widget/HtcListItemUtil;->setContextForMargins(Landroid/content/Context;I)V

    iget v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mItemMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mIsAutomotiveMode:Z

    invoke-direct {p0}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->setDefaultTextStyle()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    const/16 v2, 0x8

    iget-boolean v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mAtLeast1BadgeVisible:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eq v1, v2, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->layoutBadges(Z)V

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getBaseline()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mItemMode:I

    invoke-static {v2}, Lcom/htc/widget/HtcListItemUtil;->getDesiredBottomGap(I)I

    move-result v2

    sub-int v0, v1, v2

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->layoutStamp(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mAtLeast1BadgeVisible:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->layoutBadges(Z)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x2

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->layoutStamp(I)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 9

    const/16 v8, 0x8

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mAtLeast1BadgeVisible:Z

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v4, 0x6

    if-ge v2, v4, :cond_1

    iget-object v4, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mBadges:[Landroid/widget/ImageView;

    aget-object v4, v4, v2

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mBadges:[Landroid/widget/ImageView;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-eq v4, v8, :cond_0

    iget v4, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mToggleButtonSize:I

    iget-object v5, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mBadges:[Landroid/widget/ImageView;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mToggleButtonSize:I

    iget-object v4, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mBadges:[Landroid/widget/ImageView;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    iget v5, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mBadgeGap:I

    add-int/2addr v4, v5

    add-int/2addr v0, v4

    iget v4, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mBadgesMaxHeight:I

    iget-object v5, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mBadges:[Landroid/widget/ImageView;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mBadgesMaxHeight:I

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4}, Landroid/widget/ToggleButton;->getVisibility()I

    move-result v4

    if-eq v4, v8, :cond_2

    iget v4, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mToggleButtonSize:I

    iget-object v5, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mFlagButton:Lcom/htc/widget/HtcFlagButton;

    invoke-virtual {v5}, Lcom/htc/widget/HtcFlagButton;->getMeasuredHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mToggleButtonSize:I

    iget-object v4, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mToggleButton:Landroid/widget/ToggleButton;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    iget v6, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mToggleButtonSize:I

    iget v7, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mToggleButtonSize:I

    invoke-direct {v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0, v4, p1, p2}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->measureChild(Landroid/view/View;II)V

    iget v4, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mToggleButtonSize:I

    iget v5, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mBadgeGap:I

    add-int/2addr v4, v5

    add-int/2addr v0, v4

    iget v4, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mBadgesMaxHeight:I

    iget v5, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mToggleButtonSize:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mBadgesMaxHeight:I

    :cond_2
    iget-object v4, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mFlagButton:Lcom/htc/widget/HtcFlagButton;

    invoke-virtual {v4}, Lcom/htc/widget/HtcFlagButton;->getVisibility()I

    move-result v4

    if-eq v4, v8, :cond_3

    iget-object v4, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mFlagButton:Lcom/htc/widget/HtcFlagButton;

    invoke-virtual {p0, v4, p1, p2}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->measureChild(Landroid/view/View;II)V

    iget-object v4, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mFlagButton:Lcom/htc/widget/HtcFlagButton;

    invoke-virtual {v4}, Lcom/htc/widget/HtcFlagButton;->getMeasuredWidth()I

    move-result v4

    iget v5, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mBadgeGap:I

    add-int/2addr v4, v5

    add-int/2addr v0, v4

    iget v4, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mBadgesMaxHeight:I

    iget-object v5, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mFlagButton:Lcom/htc/widget/HtcFlagButton;

    invoke-virtual {v5}, Lcom/htc/widget/HtcFlagButton;->getMeasuredHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mBadgesMaxHeight:I

    :cond_3
    if-eqz v0, :cond_4

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mAtLeast1BadgeVisible:Z

    iget v4, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mBadgeGap:I

    sub-int/2addr v0, v4

    :cond_4
    iget v4, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mItemMode:I

    invoke-static {v4}, Lcom/htc/widget/HtcListItemUtil;->getDesiredListItemHeight(I)I

    move-result v1

    move v3, v1

    iget-object v4, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4, p1}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->resolveSize(II)I

    move-result v4

    invoke-virtual {p0, v4, v3}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->setMeasuredDimension(II)V

    return-void
.end method

.method public setBadgeImageResource(II)V
    .locals 4

    const/4 v3, -0x2

    if-ltz p1, :cond_1

    const/4 v0, 0x6

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mBadges:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mBadges:[Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, p1

    iget-object v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mBadges:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mBadges:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mBadges:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mBadges:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->TAG:Ljava/lang/String;

    const-string v1, "setBadgeImageResource: index out of bound."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setBadgeState(IZ)V
    .locals 3

    const/4 v2, 0x6

    const/16 v1, 0x8

    const/4 v0, 0x0

    if-ltz p1, :cond_2

    if-ge p1, v2, :cond_2

    iget-object v2, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mBadges:[Landroid/widget/ImageView;

    aget-object v2, v2, p1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mBadges:[Landroid/widget/ImageView;

    aget-object v2, v2, p1

    if-eqz p2, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    if-ne p1, v2, :cond_4

    iget-object v2, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mToggleButton:Landroid/widget/ToggleButton;

    if-eqz p2, :cond_3

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/ToggleButton;->setVisibility(I)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    const/4 v2, 0x7

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mFlagButton:Lcom/htc/widget/HtcFlagButton;

    if-eqz p2, :cond_5

    :goto_3
    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcFlagButton;->setVisibility(I)V

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_3
.end method

.method public setEnabled(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->isEnabled()Z

    move-result v2

    if-ne v2, p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    invoke-static {v0, p1}, Lcom/htc/widget/HtcListItemUtil;->setViewOpacity(Landroid/view/View;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    const/4 v1, 0x0

    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :cond_0
    const/4 v0, -0x2

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v0, -0x1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    return-void
.end method

.method public setStampTextStyle(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mStamp:Landroid/widget/TextView;

    check-cast v0, Lcom/htc/widget/HtcFadingEdgeTextView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcFadingEdgeTextView;->setTextStyle(I)V

    iput p1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mStampStyle:I

    return-void
.end method

.method public setTextStamp(I)V
    .locals 2

    iget-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->setTextStamp(Ljava/lang/String;)V

    return-void
.end method

.method public setTextStamp(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mStamp:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp_s45;->mStamp:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
