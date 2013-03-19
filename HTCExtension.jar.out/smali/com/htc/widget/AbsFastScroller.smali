.class public Lcom/htc/widget/AbsFastScroller;
.super Ljava/lang/Object;
.source "AbsFastScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;,
        Lcom/htc/widget/AbsFastScroller$ScrollFade;
    }
.end annotation


# static fields
.field private static final FADE_TIMEOUT:I = 0x5dc

.field public static final HtcFastScroller:[I = null

.field public static final HtcFastScroller_android_drawable:I = 0x0

.field public static final HtcTheme_htcFastScrollerStyle:I = 0x6

.field private static final STATE_DRAGGING:I = 0x3

.field private static final STATE_ENTER:I = 0x1

.field private static final STATE_EXIT:I = 0x4

.field private static final STATE_NONE:I = 0x0

.field private static final STATE_VISIBLE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "AbsFastScroller"

.field static sSymbol:Ljava/lang/String;


# instance fields
.field private M2:I

.field private ORIENTATION:I

.field private computeX:I

.field private computeY:I

.field private drawX:I

.field private drawY:I

.field private isActionUp:Z

.field private isAlreadyAtTop:Z

.field isCorrectThumbDrawable:Z

.field private mChangedBounds:Z

.field protected final mContext:Landroid/content/Context;

.field private mDownCancel:Z

.field private mDrawOverlay:Z

.field private mList:Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;

.field private mListAdapter:Landroid/widget/BaseAdapter;

.field private mOverlayDrawable:Landroid/graphics/drawable/Drawable;

.field private mOverlayFading:Z

.field private mOverlayH:I

.field private mOverlayPaddingRect:Landroid/graphics/Rect;

.field private mOverlayTextMargin:I

.field private mOverlayTextSize:I

.field private mOverlayW:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintShadow:Landroid/graphics/Paint;

.field protected mResOverlay:I

.field protected mResThumb:I

.field protected mResTrack:I

.field private mScrollCompleted:Z

.field private mScrollFade:Lcom/htc/widget/AbsFastScroller$ScrollFade;

.field private mSectionIndexer:Landroid/widget/SectionIndexer;

.field private mSectionText:Ljava/lang/String;

.field private mSections:[Ljava/lang/Object;

.field private mSectionsDirty:Z

.field private mState:I

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mThumbDrawableWithSection:Landroid/graphics/drawable/Drawable;

.field private mThumbDrawableWithoutSection:Landroid/graphics/drawable/Drawable;

.field private mThumbH:I

.field private mThumbW:I

.field private mThumbX:I

.field private mThumbY:I

.field private mVisibleItem:I

.field private rangeX:I

.field private rangeY:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "#"

    sput-object v0, Lcom/htc/widget/AbsFastScroller;->sSymbol:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v0, v1, [I

    const/4 v1, 0x0

    const v2, 0x1010199

    aput v2, v0, v1

    sput-object v0, Lcom/htc/widget/AbsFastScroller;->HtcFastScroller:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;I)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/htc/widget/AbsFastScroller;->M2:I

    iput v0, p0, Lcom/htc/widget/AbsFastScroller;->mResThumb:I

    iput v0, p0, Lcom/htc/widget/AbsFastScroller;->mResOverlay:I

    iput v0, p0, Lcom/htc/widget/AbsFastScroller;->mResTrack:I

    iput v0, p0, Lcom/htc/widget/AbsFastScroller;->ORIENTATION:I

    iput-boolean v0, p0, Lcom/htc/widget/AbsFastScroller;->isCorrectThumbDrawable:Z

    iput-boolean v0, p0, Lcom/htc/widget/AbsFastScroller;->mDownCancel:Z

    iput-boolean v0, p0, Lcom/htc/widget/AbsFastScroller;->mSectionsDirty:Z

    iput-boolean v0, p0, Lcom/htc/widget/AbsFastScroller;->isAlreadyAtTop:Z

    iput-boolean v0, p0, Lcom/htc/widget/AbsFastScroller;->isActionUp:Z

    iput-object v1, p0, Lcom/htc/widget/AbsFastScroller;->mOverlayPaddingRect:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/htc/widget/AbsFastScroller;->mThumbDrawableWithoutSection:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/htc/widget/AbsFastScroller;->mThumbDrawableWithSection:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/htc/widget/AbsFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/htc/widget/AbsFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    iput v0, p0, Lcom/htc/widget/AbsFastScroller;->rangeX:I

    iput v0, p0, Lcom/htc/widget/AbsFastScroller;->computeX:I

    iput v0, p0, Lcom/htc/widget/AbsFastScroller;->drawX:I

    iput v0, p0, Lcom/htc/widget/AbsFastScroller;->rangeY:I

    iput v0, p0, Lcom/htc/widget/AbsFastScroller;->computeY:I

    iput v0, p0, Lcom/htc/widget/AbsFastScroller;->drawY:I

    iput-object p2, p0, Lcom/htc/widget/AbsFastScroller;->mList:Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;

    iput-object p1, p0, Lcom/htc/widget/AbsFastScroller;->mContext:Landroid/content/Context;

    iput p3, p0, Lcom/htc/widget/AbsFastScroller;->ORIENTATION:I

    invoke-direct {p0, p1}, Lcom/htc/widget/AbsFastScroller;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/AbsFastScroller;)Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/AbsFastScroller;->mList:Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;

    return-object v0
.end method

.method private cancelFling()V
    .locals 9

    const-wide/16 v0, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/widget/AbsFastScroller;->mDownCancel:Z

    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    iget-object v0, p0, Lcom/htc/widget/AbsFastScroller;->mList:Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;

    invoke-interface {v0, v8}, Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iput-boolean v7, p0, Lcom/htc/widget/AbsFastScroller;->mDownCancel:Z

    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method private getSectionsFromIndexer()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/htc/widget/AbsFastScroller;->mList:Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;

    invoke-interface {v1}, Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/widget/AbsFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    instance-of v1, v0, Landroid/widget/SectionIndexer;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Landroid/widget/BaseAdapter;

    iput-object v1, p0, Lcom/htc/widget/AbsFastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Landroid/widget/SectionIndexer;

    iput-object v0, p0, Lcom/htc/widget/AbsFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    iget-object v1, p0, Lcom/htc/widget/AbsFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v1}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/AbsFastScroller;->mSections:[Ljava/lang/Object;

    iget v1, p0, Lcom/htc/widget/AbsFastScroller;->ORIENTATION:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/widget/AbsFastScroller;->mSections:[Ljava/lang/Object;

    if-nez v1, :cond_1

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, " "

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/htc/widget/AbsFastScroller;->mSections:[Ljava/lang/Object;

    :cond_0
    :goto_0
    iput-boolean v3, p0, Lcom/htc/widget/AbsFastScroller;->mSectionsDirty:Z

    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/widget/AbsFastScroller;->mSections:[Ljava/lang/Object;

    array-length v1, v1

    if-lez v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/widget/AbsFastScroller;->isCorrectThumbDrawable:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/AbsFastScroller;->mThumbDrawableWithSection:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1}, Lcom/htc/widget/AbsFastScroller;->useThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-boolean v2, p0, Lcom/htc/widget/AbsFastScroller;->isCorrectThumbDrawable:Z

    goto :goto_0

    :cond_2
    check-cast v0, Landroid/widget/BaseAdapter;

    iput-object v0, p0, Lcom/htc/widget/AbsFastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, " "

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/htc/widget/AbsFastScroller;->mSections:[Ljava/lang/Object;

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v3, p0, Lcom/htc/widget/AbsFastScroller;->ORIENTATION:I

    if-nez v3, :cond_0

    const v3, 0x2080141

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/widget/AbsFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const v3, 0x2080140

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/widget/AbsFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/htc/widget/AbsFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v3}, Lcom/htc/widget/AbsFastScroller;->useThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/htc/widget/AbsFastScroller;->mOverlayPaddingRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/htc/widget/AbsFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/htc/widget/AbsFastScroller;->mOverlayPaddingRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    const v3, 0x2050001

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lcom/htc/widget/AbsFastScroller;->M2:I

    iput-boolean v8, p0, Lcom/htc/widget/AbsFastScroller;->mScrollCompleted:Z

    invoke-direct {p0}, Lcom/htc/widget/AbsFastScroller;->getSectionsFromIndexer()V

    new-instance v3, Lcom/htc/widget/AbsFastScroller$ScrollFade;

    invoke-direct {v3, p0}, Lcom/htc/widget/AbsFastScroller$ScrollFade;-><init>(Lcom/htc/widget/AbsFastScroller;)V

    iput-object v3, p0, Lcom/htc/widget/AbsFastScroller;->mScrollFade:Lcom/htc/widget/AbsFastScroller$ScrollFade;

    iput v7, p0, Lcom/htc/widget/AbsFastScroller;->mState:I

    iput-boolean v7, p0, Lcom/htc/widget/AbsFastScroller;->mOverlayFading:Z

    return-void

    :cond_0
    const/4 v3, 0x0

    sget-object v4, Lcom/htc/widget/AbsFastScroller;->HtcFastScroller:[I

    const v5, 0x201003d

    const v6, 0x203008e

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/widget/AbsFastScroller;->mThumbDrawableWithoutSection:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/widget/AbsFastScroller;->mThumbDrawableWithSection:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/widget/AbsFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v3, p0, Lcom/htc/widget/AbsFastScroller;->mThumbDrawableWithoutSection:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v3}, Lcom/htc/widget/AbsFastScroller;->useThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    const v3, 0x20800f5

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/widget/AbsFastScroller;->mThumbDrawableWithoutSection:Landroid/graphics/drawable/Drawable;

    const v3, 0x208003f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/widget/AbsFastScroller;->mThumbDrawableWithSection:Landroid/graphics/drawable/Drawable;

    const v3, 0x208003e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/widget/AbsFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method private resetOverlayPos()V
    .locals 8

    iget-object v2, p0, Lcom/htc/widget/AbsFastScroller;->mList:Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;

    invoke-interface {v2}, Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/htc/widget/AbsFastScroller;->mList:Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;

    invoke-interface {v2}, Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;->getHeight()I

    move-result v0

    iget v2, p0, Lcom/htc/widget/AbsFastScroller;->ORIENTATION:I

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget/AbsFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/htc/widget/AbsFastScroller;->mOverlayW:I

    sub-int v3, v1, v3

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v4, v0, 0x3

    iget v5, p0, Lcom/htc/widget/AbsFastScroller;->mOverlayH:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/htc/widget/AbsFastScroller;->mOverlayW:I

    add-int/2addr v5, v1

    div-int/lit8 v5, v5, 0x2

    div-int/lit8 v6, v0, 0x3

    iget v7, p0, Lcom/htc/widget/AbsFastScroller;->mOverlayH:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/htc/widget/AbsFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/htc/widget/AbsFastScroller;->mOverlayW:I

    sub-int v3, v1, v3

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v4, v0, 0x3

    iget v5, p0, Lcom/htc/widget/AbsFastScroller;->mOverlayH:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/htc/widget/AbsFastScroller;->mOverlayW:I

    add-int/2addr v5, v1

    div-int/lit8 v5, v5, 0x2

    div-int/lit8 v6, v0, 0x3

    iget v7, p0, Lcom/htc/widget/AbsFastScroller;->mOverlayH:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method private resetThumbPos()V
    .locals 7

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/htc/widget/AbsFastScroller;->mList:Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;

    invoke-interface {v2}, Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/htc/widget/AbsFastScroller;->mList:Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;

    invoke-interface {v2}, Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;->getHeight()I

    move-result v0

    iget v2, p0, Lcom/htc/widget/AbsFastScroller;->ORIENTATION:I

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget/AbsFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/htc/widget/AbsFastScroller;->mThumbH:I

    sub-int v3, v0, v3

    iget v4, p0, Lcom/htc/widget/AbsFastScroller;->M2:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/htc/widget/AbsFastScroller;->mThumbW:I

    iget v5, p0, Lcom/htc/widget/AbsFastScroller;->M2:I

    sub-int v5, v0, v5

    invoke-virtual {v2, v6, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v2, p0, Lcom/htc/widget/AbsFastScroller;->isCorrectThumbDrawable:Z

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/htc/widget/AbsFastScroller;->getSectionsFromIndexer()V

    :cond_1
    iget-object v2, p0, Lcom/htc/widget/AbsFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/htc/widget/AbsFastScroller;->mThumbW:I

    sub-int v3, v1, v3

    iget v4, p0, Lcom/htc/widget/AbsFastScroller;->mThumbH:I

    invoke-virtual {v2, v3, v6, v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, p0, Lcom/htc/widget/AbsFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v3, 0xd0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0
.end method

.method private scrollTo(F)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/AbsFastScroller;->mList:Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;->getCount()I

    move-result v2

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/AbsFastScroller;->mScrollCompleted:Z

    const/high16 v18, 0x3f80

    int-to-float v0, v2

    move/from16 v19, v0

    div-float v18, v18, v19

    const/high16 v19, 0x4100

    div-float v6, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/AbsFastScroller;->mSections:[Ljava/lang/Object;

    move-object/from16 v16, v0

    if-eqz v16, :cond_d

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_d

    move-object/from16 v0, v16

    array-length v8, v0

    int-to-float v0, v8

    move/from16 v18, v0

    mul-float v18, v18, p1

    move/from16 v0, v18

    float-to-int v14, v0

    if-lt v14, v8, :cond_0

    add-int/lit8 v14, v8, -0x1

    :cond_0
    move v3, v14

    move v15, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/AbsFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v7

    move v9, v2

    move v12, v7

    move v13, v14

    add-int/lit8 v11, v14, 0x1

    add-int/lit8 v18, v8, -0x1

    move/from16 v0, v18

    if-ge v14, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/AbsFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v18, v0

    add-int/lit8 v19, v14, 0x1

    invoke-interface/range {v18 .. v19}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v9

    :cond_1
    if-ne v9, v7, :cond_3

    :cond_2
    if-lez v14, :cond_3

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/AbsFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v12

    if-eq v12, v7, :cond_4

    move v13, v14

    move v15, v14

    :cond_3
    :goto_0
    add-int/lit8 v10, v11, 0x1

    :goto_1
    if-ge v10, v8, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/AbsFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v18

    move/from16 v0, v18

    if-ne v0, v9, :cond_5

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_4
    if-nez v14, :cond_2

    const/4 v15, 0x0

    goto :goto_0

    :cond_5
    int-to-float v0, v13

    move/from16 v18, v0

    int-to-float v0, v8

    move/from16 v19, v0

    div-float v5, v18, v19

    int-to-float v0, v11

    move/from16 v18, v0

    int-to-float v0, v8

    move/from16 v19, v0

    div-float v4, v18, v19

    if-ne v13, v3, :cond_c

    sub-float v18, p1, v5

    cmpg-float v18, v18, v6

    if-gez v18, :cond_c

    move v7, v12

    :cond_6
    :goto_2
    add-int/lit8 v18, v2, -0x1

    move/from16 v0, v18

    if-le v7, v0, :cond_7

    add-int/lit8 v7, v2, -0x1

    :cond_7
    move/from16 v0, p1

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x3feff7ced916872bL

    cmpl-double v18, v18, v20

    if-lez v18, :cond_8

    add-int/lit8 v7, v2, -0x1

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/AbsFastScroller;->mList:Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v7}, Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;->setSelectionInt(I)V

    :goto_3
    if-ltz v15, :cond_10

    aget-object v18, v16, v15

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/AbsFastScroller;->mSectionText:Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x20

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_e

    :cond_9
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v15, v0, :cond_e

    const/16 v18, 0x1

    :goto_4
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/AbsFastScroller;->mDrawOverlay:Z

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x20

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    if-nez v15, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/AbsFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v15}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v18

    if-nez v18, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/AbsFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v18, v0

    add-int/lit8 v19, v15, 0x1

    invoke-interface/range {v18 .. v19}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v18

    if-nez v18, :cond_f

    const/16 v18, 0x1

    aget-object v18, v16, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/AbsFastScroller;->mSectionText:Ljava/lang/String;

    :cond_a
    :goto_5
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/AbsFastScroller;->mDrawOverlay:Z

    :cond_b
    :goto_6
    return-void

    :cond_c
    move v7, v12

    if-gez v7, :cond_6

    const/4 v7, 0x0

    goto/16 :goto_2

    :cond_d
    int-to-float v0, v2

    move/from16 v18, v0

    mul-float v18, v18, p1

    move/from16 v0, v18

    float-to-int v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/AbsFastScroller;->mList:Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v7}, Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;->setSelectionInt(I)V

    const/4 v15, -0x1

    goto/16 :goto_3

    :cond_e
    const/16 v18, 0x0

    goto :goto_4

    :cond_f
    sget-object v17, Lcom/htc/widget/AbsFastScroller;->sSymbol:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/AbsFastScroller;->mSectionText:Ljava/lang/String;

    goto :goto_5

    :cond_10
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/AbsFastScroller;->mDrawOverlay:Z

    goto :goto_6
.end method

.method private useOverlayDrawable(Z)V
    .locals 9

    const/4 v8, 0x1

    iget-object v4, p0, Lcom/htc/widget/AbsFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iput v4, p0, Lcom/htc/widget/AbsFastScroller;->mOverlayW:I

    iget-object v4, p0, Lcom/htc/widget/AbsFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    iput v4, p0, Lcom/htc/widget/AbsFastScroller;->mOverlayH:I

    iget-object v4, p0, Lcom/htc/widget/AbsFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz p1, :cond_2

    iget v4, p0, Lcom/htc/widget/AbsFastScroller;->ORIENTATION:I

    if-nez v4, :cond_1

    const v4, 0x20e00be

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/htc/widget/AbsFastScroller;->mOverlayW:I

    const v4, 0x20e00bd

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/htc/widget/AbsFastScroller;->mOverlayH:I

    const v4, 0x20e00bf

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/htc/widget/AbsFastScroller;->mOverlayTextSize:I

    :goto_0
    const v4, 0x20e00b6

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/htc/widget/AbsFastScroller;->mOverlayTextMargin:I

    :goto_1
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/htc/widget/AbsFastScroller;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/htc/widget/AbsFastScroller;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v4, p0, Lcom/htc/widget/AbsFastScroller;->mPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v4, p0, Lcom/htc/widget/AbsFastScroller;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/htc/widget/AbsFastScroller;->mOverlayTextSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    iget v4, p0, Lcom/htc/widget/AbsFastScroller;->ORIENTATION:I

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/htc/widget/AbsFastScroller;->mPaint:Landroid/graphics/Paint;

    const/high16 v5, -0x100

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    :goto_2
    new-instance v4, Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/htc/widget/AbsFastScroller;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v4, p0, Lcom/htc/widget/AbsFastScroller;->mPaintShadow:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/htc/widget/AbsFastScroller;->mPaintShadow:Landroid/graphics/Paint;

    const v5, -0xe5e5e6

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p0, Lcom/htc/widget/AbsFastScroller;->mPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/htc/widget/AbsFastScroller;->mSectionText:Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/htc/widget/AbsFastScroller;->mSectionText:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    if-eqz p1, :cond_6

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget v4, p0, Lcom/htc/widget/AbsFastScroller;->mOverlayTextMargin:I

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int v3, v4, v5

    iget v4, p0, Lcom/htc/widget/AbsFastScroller;->mOverlayW:I

    if-le v3, v4, :cond_0

    iput v3, p0, Lcom/htc/widget/AbsFastScroller;->mOverlayW:I

    :cond_0
    iget v4, p0, Lcom/htc/widget/AbsFastScroller;->mOverlayTextMargin:I

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int v0, v4, v5

    iget v4, p0, Lcom/htc/widget/AbsFastScroller;->mOverlayH:I

    if-le v0, v4, :cond_5

    iput v0, p0, Lcom/htc/widget/AbsFastScroller;->mOverlayH:I

    :goto_3
    iget v4, p0, Lcom/htc/widget/AbsFastScroller;->mOverlayW:I

    iget-object v5, p0, Lcom/htc/widget/AbsFastScroller;->mOverlayPaddingRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/htc/widget/AbsFastScroller;->mOverlayPaddingRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, p0, Lcom/htc/widget/AbsFastScroller;->mOverlayW:I

    iget v4, p0, Lcom/htc/widget/AbsFastScroller;->mOverlayH:I

    iget-object v5, p0, Lcom/htc/widget/AbsFastScroller;->mOverlayPaddingRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/htc/widget/AbsFastScroller;->mOverlayPaddingRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, p0, Lcom/htc/widget/AbsFastScroller;->mOverlayH:I

    iget v4, p0, Lcom/htc/widget/AbsFastScroller;->mOverlayTextMargin:I

    iget-object v5, p0, Lcom/htc/widget/AbsFastScroller;->mOverlayPaddingRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/htc/widget/AbsFastScroller;->mOverlayTextMargin:I

    iput-boolean v8, p0, Lcom/htc/widget/AbsFastScroller;->mChangedBounds:Z

    return-void

    :cond_1
    const v4, 0x20e00b4

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/htc/widget/AbsFastScroller;->mOverlayW:I

    const v4, 0x20e00b3

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/htc/widget/AbsFastScroller;->mOverlayH:I

    const v4, 0x20e00b5

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/htc/widget/AbsFastScroller;->mOverlayTextSize:I

    goto/16 :goto_0

    :cond_2
    iget v4, p0, Lcom/htc/widget/AbsFastScroller;->ORIENTATION:I

    if-nez v4, :cond_3

    const v4, 0x20e00c0

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/htc/widget/AbsFastScroller;->mOverlayTextSize:I

    :goto_4
    const v4, 0x20e00ba

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/htc/widget/AbsFastScroller;->mOverlayTextMargin:I

    goto/16 :goto_1

    :cond_3
    const v4, 0x20e00b9

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/htc/widget/AbsFastScroller;->mOverlayTextSize:I

    goto :goto_4

    :cond_4
    iget-object v4, p0, Lcom/htc/widget/AbsFastScroller;->mPaint:Landroid/graphics/Paint;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_2

    :cond_5
    iget v4, p0, Lcom/htc/widget/AbsFastScroller;->mOverlayH:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/htc/widget/AbsFastScroller;->mOverlayTextMargin:I

    goto :goto_3

    :cond_6
    iget v4, p0, Lcom/htc/widget/AbsFastScroller;->mOverlayTextMargin:I

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/htc/widget/AbsFastScroller;->mOverlayW:I

    iget v4, p0, Lcom/htc/widget/AbsFastScroller;->mOverlayTextMargin:I

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/htc/widget/AbsFastScroller;->mOverlayH:I

    goto/16 :goto_3
.end method

.method private useThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/widget/AbsFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/htc/widget/AbsFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/AbsFastScroller;->mThumbW:I

    iget-object v0, p0, Lcom/htc/widget/AbsFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/AbsFastScroller;->mThumbH:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/AbsFastScroller;->mChangedBounds:Z

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/AbsFastScroller;->mState:I

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/AbsFastScroller;->mThumbX:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/AbsFastScroller;->mThumbY:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/AbsFastScroller;->mList:Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;

    invoke-interface {v2}, Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;->getWidth()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/AbsFastScroller;->mList:Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;

    invoke-interface {v2}, Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;->getHeight()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/widget/AbsFastScroller;->mScrollFade:Lcom/htc/widget/AbsFastScroller$ScrollFade;

    const/4 v8, -0x1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/AbsFastScroller;->mState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/AbsFastScroller;->ORIENTATION:I

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/widget/AbsFastScroller;->isActionUp:Z

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/AbsFastScroller;->mList:Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;

    invoke-interface {v2}, Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;->computeHorizontalScrollRange()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/AbsFastScroller;->mList:Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;

    invoke-interface {v3}, Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;->computeHorizontalScrollExtent()I

    move-result v3

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/widget/AbsFastScroller;->rangeX:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/AbsFastScroller;->mList:Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;

    invoke-interface {v2}, Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;->computeHorizontalScrollOffset()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/widget/AbsFastScroller;->computeX:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/AbsFastScroller;->computeX:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/AbsFastScroller;->rangeX:I

    if-le v2, v3, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/AbsFastScroller;->rangeX:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/widget/AbsFastScroller;->computeX:I

    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/AbsFastScroller;->rangeX:I

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/AbsFastScroller;->computeX:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/AbsFastScroller;->mThumbW:I

    sub-int v3, v12, v3

    mul-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/AbsFastScroller;->rangeX:I

    div-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/widget/AbsFastScroller;->drawX:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/AbsFastScroller;->mList:Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/AbsFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/widget/AbsFastScroller;->drawX:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/widget/AbsFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/widget/AbsFastScroller;->drawX:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/widget/AbsFastScroller;->mThumbW:I

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/widget/AbsFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-interface/range {v2 .. v7}, Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;->draw(Landroid/graphics/drawable/Drawable;IIII)V

    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/AbsFastScroller;->mState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/AbsFastScroller;->ORIENTATION:I

    if-nez v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/AbsFastScroller;->mList:Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/AbsFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/AbsFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v5, v4, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/widget/AbsFastScroller;->mThumbW:I

    add-int v6, v14, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/AbsFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    move v4, v14

    invoke-interface/range {v2 .. v7}, Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;->draw(Landroid/graphics/drawable/Drawable;IIII)V

    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/AbsFastScroller;->mState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/widget/AbsFastScroller;->mDrawOverlay:Z

    if-nez v2, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/AbsFastScroller;->mState:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_7

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/widget/AbsFastScroller;->mOverlayFading:Z

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/widget/AbsFastScroller;->mDrawOverlay:Z

    if-eqz v2, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/AbsFastScroller;->mState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/AbsFastScroller;->mSectionText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/widget/AbsFastScroller;->useOverlayDrawable(Z)V

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/AbsFastScroller;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/AbsFastScroller;->mSectionText:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/widget/AbsFastScroller;->draw_center(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;Landroid/graphics/Rect;)V

    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/AbsFastScroller;->mState:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    invoke-virtual {v10}, Lcom/htc/widget/AbsFastScroller$ScrollFade;->getAlpha()I

    move-result v2

    if-nez v2, :cond_e

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/widget/AbsFastScroller;->setState(I)V

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/AbsFastScroller;->mList:Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/AbsFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/AbsFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v5, v4, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/widget/AbsFastScroller;->mThumbW:I

    add-int v6, v14, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/AbsFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    move v4, v14

    invoke-interface/range {v2 .. v7}, Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;->draw(Landroid/graphics/drawable/Drawable;IIII)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/widget/AbsFastScroller;->isActionUp:Z

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/widget/AbsFastScroller;->isActionUp:Z

    if-nez v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/AbsFastScroller;->mList:Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;

    invoke-interface {v2}, Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;->computeVerticalScrollRange()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/AbsFastScroller;->mList:Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;

    invoke-interface {v3}, Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;->computeVerticalScrollExtent()I

    move-result v3

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/widget/AbsFastScroller;->rangeY:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/AbsFastScroller;->mList:Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;

    invoke-interface {v2}, Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;->computeVerticalScrollOffset()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/widget/AbsFastScroller;->computeY:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/AbsFastScroller;->computeY:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/AbsFastScroller;->rangeY:I

    if-le v2, v3, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/AbsFastScroller;->rangeY:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/widget/AbsFastScroller;->computeY:I

    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/AbsFastScroller;->rangeY:I

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/AbsFastScroller;->computeY:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/AbsFastScroller;->mThumbH:I

    sub-int v3, v11, v3

    mul-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/AbsFastScroller;->rangeY:I

    div-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/widget/AbsFastScroller;->drawY:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/AbsFastScroller;->mList:Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/AbsFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/AbsFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/widget/AbsFastScroller;->drawY:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/widget/AbsFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/widget/AbsFastScroller;->drawY:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/AbsFastScroller;->mThumbH:I

    move/from16 v16, v0

    add-int v7, v7, v16

    invoke-interface/range {v2 .. v7}, Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;->draw(Landroid/graphics/drawable/Drawable;IIII)V

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/AbsFastScroller;->mList:Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/AbsFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/AbsFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/widget/AbsFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget v6, v5, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/widget/AbsFastScroller;->mThumbH:I

    add-int v7, v15, v5

    move v5, v15

    invoke-interface/range {v2 .. v7}, Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;->draw(Landroid/graphics/drawable/Drawable;IIII)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/widget/AbsFastScroller;->isActionUp:Z

    goto/16 :goto_1

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/AbsFastScroller;->mList:Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/AbsFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/AbsFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/widget/AbsFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget v6, v5, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/widget/AbsFastScroller;->mThumbH:I

    add-int v7, v15, v5

    move v5, v15

    invoke-interface/range {v2 .. v7}, Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;->draw(Landroid/graphics/drawable/Drawable;IIII)V

    goto/16 :goto_2

    :cond_d
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/widget/AbsFastScroller;->useOverlayDrawable(Z)V

    goto/16 :goto_3

    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/AbsFastScroller;->mOverlayW:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/AbsFastScroller;->mThumbW:I

    if-le v2, v3, :cond_f

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/widget/AbsFastScroller;->mOverlayW:I

    :goto_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/AbsFastScroller;->mOverlayH:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/AbsFastScroller;->mThumbH:I

    if-le v2, v3, :cond_10

    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/widget/AbsFastScroller;->mOverlayH:I

    :goto_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/AbsFastScroller;->ORIENTATION:I

    if-nez v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/AbsFastScroller;->mList:Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;

    sub-int v3, v11, v9

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/widget/AbsFastScroller;->M2:I

    sub-int/2addr v3, v4

    add-int v4, v14, v13

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/widget/AbsFastScroller;->M2:I

    sub-int v5, v11, v5

    invoke-interface {v2, v14, v3, v4, v5}, Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;->invalidate(IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/AbsFastScroller;->mList:Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;

    const/4 v3, 0x0

    div-int/lit8 v4, v11, 0x3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/widget/AbsFastScroller;->mOverlayH:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    div-int/lit8 v5, v11, 0x3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/widget/AbsFastScroller;->mOverlayH:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    invoke-interface {v2, v3, v4, v12, v5}, Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;->invalidate(IIII)V

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/widget/AbsFastScroller;->mThumbW:I

    goto :goto_4

    :cond_10
    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/widget/AbsFastScroller;->mThumbH:I

    goto :goto_5

    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/AbsFastScroller;->mList:Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;

    sub-int v3, v12, v13

    add-int v4, v15, v9

    invoke-interface {v2, v3, v15, v12, v4}, Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;->invalidate(IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/AbsFastScroller;->mList:Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;

    const/4 v3, 0x0

    div-int/lit8 v4, v11, 0x3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/widget/AbsFastScroller;->mOverlayH:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    div-int/lit8 v5, v11, 0x3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/widget/AbsFastScroller;->mOverlayH:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    invoke-interface {v2, v3, v4, v12, v5}, Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;->invalidate(IIII)V

    goto/16 :goto_0
.end method

.method draw_center(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/AbsFastScroller;->mList:Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;

    invoke-interface {v3}, Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;->getWidth()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/AbsFastScroller;->mList:Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;

    invoke-interface {v3}, Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;->getHeight()I

    move-result v20

    new-instance v19, Landroid/graphics/Rect;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    if-nez p4, :cond_2

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int v3, v21, v3

    div-int/lit8 v16, v3, 0x2

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int v17, v16, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/AbsFastScroller;->mOverlayW:I

    sub-int v3, v21, v3

    div-int/lit8 v5, v3, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/AbsFastScroller;->mOverlayW:I

    add-int v7, v5, v3

    sub-int v3, v17, v16

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/widget/AbsFastScroller;->mOverlayH:I

    if-ge v3, v4, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/AbsFastScroller;->mOverlayH:I

    sub-int v3, v21, v3

    div-int/lit8 v16, v3, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/AbsFastScroller;->mOverlayH:I

    add-int v3, v3, v21

    div-int/lit8 v17, v3, 0x2

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/AbsFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/AbsFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v4, v20, 0x3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/widget/AbsFastScroller;->mOverlayH:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v4, v6

    div-int/lit8 v6, v20, 0x3

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/widget/AbsFastScroller;->mOverlayH:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v6, v8

    invoke-virtual {v3, v5, v4, v7, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/AbsFastScroller;->mList:Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/AbsFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v6, v20, 0x3

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/widget/AbsFastScroller;->mOverlayH:I

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v6, v8

    div-int/lit8 v8, v20, 0x3

    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/widget/AbsFastScroller;->mOverlayH:I

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    invoke-interface/range {v3 .. v8}, Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;->draw(Landroid/graphics/drawable/Drawable;IIII)V

    :cond_1
    new-instance p4, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v6

    move-object/from16 v0, p4

    move/from16 v1, v21

    invoke-direct {v0, v3, v4, v1, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    :cond_2
    move-object/from16 v0, p4

    iget v3, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int/2addr v4, v6

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    move-object/from16 v0, v19

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int v15, v3, v4

    move-object/from16 v0, p4

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int/2addr v4, v6

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    move-object/from16 v0, v19

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int v18, v3, v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/widget/AbsFastScroller;->mList:Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;

    add-int/lit8 v10, v15, -0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/AbsFastScroller;->mOverlayTextMargin:I

    add-int v3, v3, v18

    add-int/lit8 v3, v3, -0x1

    div-int/lit8 v4, v20, 0x3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/widget/AbsFastScroller;->mOverlayH:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v4, v6

    add-int v11, v3, v4

    add-int/lit8 v3, v15, -0x1

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int v12, v3, v4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/AbsFastScroller;->mOverlayTextMargin:I

    add-int v3, v3, v18

    add-int/lit8 v3, v3, -0x1

    div-int/lit8 v4, v20, 0x3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/widget/AbsFastScroller;->mOverlayH:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v4, v6

    add-int/2addr v3, v4

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int v13, v3, v4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/AbsFastScroller;->mPaintShadow:Landroid/graphics/Paint;

    move-object/from16 v9, p3

    invoke-interface/range {v8 .. v14}, Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;->draw(Ljava/lang/String;IIIILandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/widget/AbsFastScroller;->mList:Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/AbsFastScroller;->mOverlayTextMargin:I

    add-int v3, v3, v18

    div-int/lit8 v4, v20, 0x3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/widget/AbsFastScroller;->mOverlayH:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v4, v6

    add-int v11, v3, v4

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int v12, v15, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/AbsFastScroller;->mOverlayTextMargin:I

    add-int v3, v3, v18

    div-int/lit8 v4, v20, 0x3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/widget/AbsFastScroller;->mOverlayH:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v4, v6

    add-int/2addr v3, v4

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int v13, v3, v4

    move-object/from16 v9, p3

    move v10, v15

    move-object/from16 v14, p2

    invoke-interface/range {v8 .. v14}, Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;->draw(Ljava/lang/String;IIIILandroid/graphics/Paint;)V

    return-void
.end method

.method getSectionIndexer()Landroid/widget/SectionIndexer;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/AbsFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    return-object v0
.end method

.method getSections()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/AbsFastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/AbsFastScroller;->mList:Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/AbsFastScroller;->getSectionsFromIndexer()V

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/AbsFastScroller;->mSections:[Ljava/lang/Object;

    return-object v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/AbsFastScroller;->mState:I

    return v0
.end method

.method isPointInside(FF)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/htc/widget/AbsFastScroller;->ORIENTATION:I

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/htc/widget/AbsFastScroller;->mList:Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;

    invoke-interface {v2}, Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/htc/widget/AbsFastScroller;->mThumbH:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/htc/widget/AbsFastScroller;->M2:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_1

    iget v2, p0, Lcom/htc/widget/AbsFastScroller;->mThumbX:I

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_1

    iget v2, p0, Lcom/htc/widget/AbsFastScroller;->mThumbX:I

    iget v3, p0, Lcom/htc/widget/AbsFastScroller;->mThumbW:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/htc/widget/AbsFastScroller;->mList:Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;

    invoke-interface {v2}, Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0x32

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_3

    iget v2, p0, Lcom/htc/widget/AbsFastScroller;->mThumbY:I

    iget v3, p0, Lcom/htc/widget/AbsFastScroller;->mThumbH:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x19

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_3

    iget v2, p0, Lcom/htc/widget/AbsFastScroller;->mThumbY:I

    iget v3, p0, Lcom/htc/widget/AbsFastScroller;->mThumbH:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x19

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-lez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method isVisible()Z
    .locals 1

    iget v0, p0, Lcom/htc/widget/AbsFastScroller;->mState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget v0, p0, Lcom/htc/widget/AbsFastScroller;->mState:I

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/AbsFastScroller;->isPointInside(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/widget/AbsFastScroller;->setState(I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScroll(Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;III)V
    .locals 4

    const/4 v2, 0x3

    sub-int v0, p4, p3

    if-lez v0, :cond_0

    iget v0, p0, Lcom/htc/widget/AbsFastScroller;->mState:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/htc/widget/AbsFastScroller;->ORIENTATION:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/AbsFastScroller;->mList:Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;

    invoke-interface {v0}, Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/htc/widget/AbsFastScroller;->mThumbW:I

    sub-int/2addr v0, v1

    mul-int/2addr v0, p2

    sub-int v1, p4, p3

    div-int/2addr v0, v1

    iput v0, p0, Lcom/htc/widget/AbsFastScroller;->mThumbX:I

    :goto_0
    iget-boolean v0, p0, Lcom/htc/widget/AbsFastScroller;->mChangedBounds:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/AbsFastScroller;->resetThumbPos()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/AbsFastScroller;->mChangedBounds:Z

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/AbsFastScroller;->mScrollCompleted:Z

    iget v0, p0, Lcom/htc/widget/AbsFastScroller;->mVisibleItem:I

    if-ne p2, v0, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/htc/widget/AbsFastScroller;->mList:Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;

    invoke-interface {v0}, Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/htc/widget/AbsFastScroller;->mThumbH:I

    sub-int/2addr v0, v1

    mul-int/2addr v0, p2

    sub-int v1, p4, p3

    div-int/2addr v0, v1

    iput v0, p0, Lcom/htc/widget/AbsFastScroller;->mThumbY:I

    goto :goto_0

    :cond_3
    iput p2, p0, Lcom/htc/widget/AbsFastScroller;->mVisibleItem:I

    iget v0, p0, Lcom/htc/widget/AbsFastScroller;->mState:I

    if-eq v0, v2, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/widget/AbsFastScroller;->setState(I)V

    iget-object v0, p0, Lcom/htc/widget/AbsFastScroller;->mList:Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;

    iget-object v1, p0, Lcom/htc/widget/AbsFastScroller;->mScrollFade:Lcom/htc/widget/AbsFastScroller$ScrollFade;

    const-wide/16 v2, 0x5dc

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method public onSectionsChanged()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/AbsFastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/htc/widget/AbsFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/AbsFastScroller;->ORIENTATION:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/AbsFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/htc/widget/AbsFastScroller;->mThumbH:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/htc/widget/AbsFastScroller;->M2:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/htc/widget/AbsFastScroller;->mThumbW:I

    iget v3, p0, Lcom/htc/widget/AbsFastScroller;->M2:I

    sub-int v3, p2, v3

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/widget/AbsFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/htc/widget/AbsFastScroller;->ORIENTATION:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/htc/widget/AbsFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/htc/widget/AbsFastScroller;->mOverlayW:I

    sub-int v1, p1, v1

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v2, p2, 0x3

    iget v3, p0, Lcom/htc/widget/AbsFastScroller;->mOverlayH:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/htc/widget/AbsFastScroller;->mOverlayW:I

    add-int/2addr v3, p1

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v4, p2, 0x3

    iget v5, p0, Lcom/htc/widget/AbsFastScroller;->mOverlayH:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/htc/widget/AbsFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/htc/widget/AbsFastScroller;->mThumbW:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/htc/widget/AbsFastScroller;->mThumbH:I

    invoke-virtual {v0, v1, v4, p1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/htc/widget/AbsFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/htc/widget/AbsFastScroller;->mOverlayW:I

    sub-int v1, p1, v1

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v2, p2, 0x3

    iget v3, p0, Lcom/htc/widget/AbsFastScroller;->mOverlayH:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/htc/widget/AbsFastScroller;->mOverlayW:I

    add-int/2addr v3, p1

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v4, p2, 0x3

    iget v5, p0, Lcom/htc/widget/AbsFastScroller;->mOverlayH:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    const/4 v3, 0x1

    :goto_0
    iget v8, p0, Lcom/htc/widget/AbsFastScroller;->mState:I

    if-nez v8, :cond_1

    if-nez v3, :cond_1

    const/4 v8, 0x0

    :goto_1
    return v8

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_3

    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    add-float/2addr v8, v9

    const/high16 v9, 0x4000

    div-float v0, v8, v9

    :goto_2
    if-eqz v3, :cond_4

    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    add-float/2addr v8, v9

    const/high16 v9, 0x4000

    div-float v1, v8, v9

    :goto_3
    if-eqz v2, :cond_2

    const/16 v8, 0x105

    if-ne v2, v8, :cond_b

    :cond_2
    iget-object v8, p0, Lcom/htc/widget/AbsFastScroller;->mList:Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;

    invoke-interface {v8}, Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;->getCount()I

    move-result v8

    iget-object v9, p0, Lcom/htc/widget/AbsFastScroller;->mList:Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;

    invoke-interface {v9}, Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;->getChildCount()I

    move-result v9

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/htc/widget/AbsFastScroller;->mList:Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;

    invoke-interface {v9}, Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;->getColumnCount()I

    move-result v9

    if-gt v8, v9, :cond_5

    const/4 v8, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    goto :goto_3

    :cond_5
    if-nez v3, :cond_6

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/AbsFastScroller;->isPointInside(FF)Z

    move-result v8

    if-eqz v8, :cond_1a

    :cond_6
    iget v8, p0, Lcom/htc/widget/AbsFastScroller;->mState:I

    if-nez v8, :cond_7

    const/4 v8, 0x2

    invoke-virtual {p0, v8}, Lcom/htc/widget/AbsFastScroller;->setState(I)V

    :cond_7
    const/4 v8, 0x3

    invoke-virtual {p0, v8}, Lcom/htc/widget/AbsFastScroller;->setState(I)V

    iget-object v8, p0, Lcom/htc/widget/AbsFastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    if-nez v8, :cond_8

    iget-object v8, p0, Lcom/htc/widget/AbsFastScroller;->mList:Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;

    if-nez v8, :cond_9

    :cond_8
    iget-boolean v8, p0, Lcom/htc/widget/AbsFastScroller;->mSectionsDirty:Z

    if-eqz v8, :cond_a

    :cond_9
    invoke-direct {p0}, Lcom/htc/widget/AbsFastScroller;->getSectionsFromIndexer()V

    :cond_a
    invoke-direct {p0}, Lcom/htc/widget/AbsFastScroller;->cancelFling()V

    const/4 v8, 0x1

    goto :goto_1

    :cond_b
    const/4 v8, 0x1

    if-eq v2, v8, :cond_c

    const/4 v8, 0x3

    if-ne v2, v8, :cond_d

    iget-boolean v8, p0, Lcom/htc/widget/AbsFastScroller;->mDownCancel:Z

    if-nez v8, :cond_d

    :cond_c
    iget v8, p0, Lcom/htc/widget/AbsFastScroller;->mState:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_1a

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/htc/widget/AbsFastScroller;->mOverlayFading:Z

    const/4 v8, 0x2

    invoke-virtual {p0, v8}, Lcom/htc/widget/AbsFastScroller;->setState(I)V

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/htc/widget/AbsFastScroller;->isActionUp:Z

    iget-object v8, p0, Lcom/htc/widget/AbsFastScroller;->mList:Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;

    iget-object v9, p0, Lcom/htc/widget/AbsFastScroller;->mScrollFade:Lcom/htc/widget/AbsFastScroller$ScrollFade;

    invoke-interface {v8, v9}, Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v8, p0, Lcom/htc/widget/AbsFastScroller;->mList:Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;

    iget-object v9, p0, Lcom/htc/widget/AbsFastScroller;->mScrollFade:Lcom/htc/widget/AbsFastScroller$ScrollFade;

    const-wide/16 v10, 0x3e8

    invoke-interface {v8, v9, v10, v11}, Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v8, 0x1

    goto/16 :goto_1

    :cond_d
    const/4 v8, 0x2

    if-ne v2, v8, :cond_1a

    iget v8, p0, Lcom/htc/widget/AbsFastScroller;->mState:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_1a

    iget-object v8, p0, Lcom/htc/widget/AbsFastScroller;->mList:Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;

    invoke-interface {v8}, Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/htc/widget/AbsFastScroller;->mList:Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;

    invoke-interface {v8}, Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;->getHeight()I

    move-result v6

    iget v8, p0, Lcom/htc/widget/AbsFastScroller;->ORIENTATION:I

    if-nez v8, :cond_14

    float-to-int v8, v0

    iget v9, p0, Lcom/htc/widget/AbsFastScroller;->mThumbW:I

    sub-int/2addr v8, v9

    add-int/lit8 v4, v8, 0xa

    if-gez v4, :cond_10

    const/4 v4, 0x0

    :cond_e
    :goto_4
    if-nez v4, :cond_12

    iget-boolean v8, p0, Lcom/htc/widget/AbsFastScroller;->isAlreadyAtTop:Z

    if-nez v8, :cond_11

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/htc/widget/AbsFastScroller;->mScrollCompleted:Z

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/htc/widget/AbsFastScroller;->isAlreadyAtTop:Z

    :goto_5
    iput v4, p0, Lcom/htc/widget/AbsFastScroller;->mThumbX:I

    iget-boolean v8, p0, Lcom/htc/widget/AbsFastScroller;->mScrollCompleted:Z

    if-eqz v8, :cond_f

    iget v8, p0, Lcom/htc/widget/AbsFastScroller;->mThumbX:I

    int-to-float v8, v8

    iget v9, p0, Lcom/htc/widget/AbsFastScroller;->mThumbW:I

    sub-int v9, v7, v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-direct {p0, v8}, Lcom/htc/widget/AbsFastScroller;->scrollTo(F)V

    :cond_f
    :goto_6
    const/4 v8, 0x1

    goto/16 :goto_1

    :cond_10
    iget v8, p0, Lcom/htc/widget/AbsFastScroller;->mThumbW:I

    add-int/2addr v8, v4

    if-le v8, v7, :cond_e

    iget v8, p0, Lcom/htc/widget/AbsFastScroller;->mThumbW:I

    sub-int v4, v7, v8

    goto :goto_4

    :cond_11
    const/4 v8, 0x1

    goto/16 :goto_1

    :cond_12
    iget v8, p0, Lcom/htc/widget/AbsFastScroller;->mThumbX:I

    sub-int/2addr v8, v4

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    const/4 v9, 0x2

    if-ge v8, v9, :cond_13

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/htc/widget/AbsFastScroller;->isAlreadyAtTop:Z

    const/4 v8, 0x1

    goto/16 :goto_1

    :cond_13
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/htc/widget/AbsFastScroller;->isAlreadyAtTop:Z

    goto :goto_5

    :cond_14
    float-to-int v8, v1

    iget v9, p0, Lcom/htc/widget/AbsFastScroller;->mThumbH:I

    sub-int/2addr v8, v9

    add-int/lit8 v5, v8, 0xa

    if-gez v5, :cond_16

    const/4 v5, 0x0

    :cond_15
    :goto_7
    if-nez v5, :cond_18

    iget-boolean v8, p0, Lcom/htc/widget/AbsFastScroller;->isAlreadyAtTop:Z

    if-nez v8, :cond_17

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/htc/widget/AbsFastScroller;->mScrollCompleted:Z

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/htc/widget/AbsFastScroller;->isAlreadyAtTop:Z

    :goto_8
    iput v5, p0, Lcom/htc/widget/AbsFastScroller;->mThumbY:I

    iget-boolean v8, p0, Lcom/htc/widget/AbsFastScroller;->mScrollCompleted:Z

    if-eqz v8, :cond_f

    iget v8, p0, Lcom/htc/widget/AbsFastScroller;->mThumbY:I

    int-to-float v8, v8

    iget v9, p0, Lcom/htc/widget/AbsFastScroller;->mThumbH:I

    sub-int v9, v6, v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-direct {p0, v8}, Lcom/htc/widget/AbsFastScroller;->scrollTo(F)V

    goto :goto_6

    :cond_16
    iget v8, p0, Lcom/htc/widget/AbsFastScroller;->mThumbH:I

    add-int/2addr v8, v5

    if-le v8, v6, :cond_15

    iget v8, p0, Lcom/htc/widget/AbsFastScroller;->mThumbH:I

    sub-int v5, v6, v8

    goto :goto_7

    :cond_17
    const/4 v8, 0x1

    goto/16 :goto_1

    :cond_18
    iget v8, p0, Lcom/htc/widget/AbsFastScroller;->mThumbY:I

    sub-int/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    const/4 v9, 0x2

    if-ge v8, v9, :cond_19

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/htc/widget/AbsFastScroller;->isAlreadyAtTop:Z

    const/4 v8, 0x1

    goto/16 :goto_1

    :cond_19
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/htc/widget/AbsFastScroller;->isAlreadyAtTop:Z

    goto :goto_8

    :cond_1a
    const/4 v8, 0x0

    goto/16 :goto_1
.end method

.method public setSectionsDirty()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/AbsFastScroller;->mSectionsDirty:Z

    return-void
.end method

.method public setState(I)V
    .locals 7

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    iput p1, p0, Lcom/htc/widget/AbsFastScroller;->mState:I

    return-void

    :pswitch_1
    iget-object v2, p0, Lcom/htc/widget/AbsFastScroller;->mList:Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;

    iget-object v3, p0, Lcom/htc/widget/AbsFastScroller;->mScrollFade:Lcom/htc/widget/AbsFastScroller$ScrollFade;

    invoke-interface {v2, v3}, Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v2, p0, Lcom/htc/widget/AbsFastScroller;->mList:Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;

    invoke-interface {v2}, Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;->invalidate()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/widget/AbsFastScroller;->mOverlayFading:Z

    goto :goto_0

    :pswitch_2
    iget v2, p0, Lcom/htc/widget/AbsFastScroller;->mState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/AbsFastScroller;->resetThumbPos()V

    :cond_0
    :pswitch_3
    iget v2, p0, Lcom/htc/widget/AbsFastScroller;->mState:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    invoke-direct {p0}, Lcom/htc/widget/AbsFastScroller;->resetOverlayPos()V

    :cond_1
    iget-object v2, p0, Lcom/htc/widget/AbsFastScroller;->mList:Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;

    iget-object v3, p0, Lcom/htc/widget/AbsFastScroller;->mScrollFade:Lcom/htc/widget/AbsFastScroller$ScrollFade;

    invoke-interface {v2, v3}, Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    :pswitch_4
    iget v2, p0, Lcom/htc/widget/AbsFastScroller;->ORIENTATION:I

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/htc/widget/AbsFastScroller;->mList:Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;

    invoke-interface {v2}, Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;->getHeight()I

    move-result v0

    iget-object v2, p0, Lcom/htc/widget/AbsFastScroller;->mList:Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;

    iget v3, p0, Lcom/htc/widget/AbsFastScroller;->mThumbX:I

    iget v4, p0, Lcom/htc/widget/AbsFastScroller;->mThumbH:I

    sub-int v4, v0, v4

    iget v5, p0, Lcom/htc/widget/AbsFastScroller;->M2:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/htc/widget/AbsFastScroller;->mThumbX:I

    iget v6, p0, Lcom/htc/widget/AbsFastScroller;->mThumbW:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/htc/widget/AbsFastScroller;->M2:I

    sub-int v6, v0, v6

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;->invalidate(IIII)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/htc/widget/AbsFastScroller;->mList:Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;

    invoke-interface {v2}, Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/htc/widget/AbsFastScroller;->mList:Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;

    iget v3, p0, Lcom/htc/widget/AbsFastScroller;->mThumbW:I

    sub-int v3, v1, v3

    iget v4, p0, Lcom/htc/widget/AbsFastScroller;->mThumbY:I

    iget v5, p0, Lcom/htc/widget/AbsFastScroller;->mThumbY:I

    iget v6, p0, Lcom/htc/widget/AbsFastScroller;->mThumbH:I

    add-int/2addr v5, v6

    invoke-interface {v2, v3, v4, v1, v5}, Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;->invalidate(IIII)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method stop()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/AbsFastScroller;->setState(I)V

    return-void
.end method
