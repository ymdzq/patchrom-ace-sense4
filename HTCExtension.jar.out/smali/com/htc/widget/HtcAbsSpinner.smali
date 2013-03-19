.class public abstract Lcom/htc/widget/HtcAbsSpinner;
.super Lcom/htc/widget/HtcAdapterView;
.source "HtcAbsSpinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HtcAbsSpinner$1;,
        Lcom/htc/widget/HtcAbsSpinner$RecycleBin;,
        Lcom/htc/widget/HtcAbsSpinner$SavedState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/widget/HtcAdapterView",
        "<",
        "Landroid/widget/SpinnerAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field mAdapter:Landroid/widget/SpinnerAdapter;

.field mBlockLayoutRequests:Z

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field mHeightMeasureSpec:I

.field mInterpolator:Landroid/view/animation/Interpolator;

.field final mRecycler:Lcom/htc/widget/HtcAbsSpinner$RecycleBin;

.field mSelectedView:Landroid/view/View;

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field final mSpinnerPadding:Landroid/graphics/Rect;

.field private mTouchFrame:Landroid/graphics/Rect;

.field mWidthMeasureSpec:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAdapterView;-><init>(Landroid/content/Context;)V

    .line 49
    iput v0, p0, Lcom/htc/widget/HtcAbsSpinner;->mSelectionLeftPadding:I

    .line 50
    iput v0, p0, Lcom/htc/widget/HtcAbsSpinner;->mSelectionTopPadding:I

    .line 51
    iput v0, p0, Lcom/htc/widget/HtcAbsSpinner;->mSelectionRightPadding:I

    .line 52
    iput v0, p0, Lcom/htc/widget/HtcAbsSpinner;->mSelectionBottomPadding:I

    .line 53
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcAbsSpinner;->mSelectedView:Landroid/view/View;

    .line 57
    new-instance v0, Lcom/htc/widget/HtcAbsSpinner$RecycleBin;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAbsSpinner$RecycleBin;-><init>(Lcom/htc/widget/HtcAbsSpinner;)V

    iput-object v0, p0, Lcom/htc/widget/HtcAbsSpinner;->mRecycler:Lcom/htc/widget/HtcAbsSpinner$RecycleBin;

    .line 66
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsSpinner;->initAbsSpinner()V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/HtcAbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x0

    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcAdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    iput v4, p0, Lcom/htc/widget/HtcAbsSpinner;->mSelectionLeftPadding:I

    .line 50
    iput v4, p0, Lcom/htc/widget/HtcAbsSpinner;->mSelectionTopPadding:I

    .line 51
    iput v4, p0, Lcom/htc/widget/HtcAbsSpinner;->mSelectionRightPadding:I

    .line 52
    iput v4, p0, Lcom/htc/widget/HtcAbsSpinner;->mSelectionBottomPadding:I

    .line 53
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/htc/widget/HtcAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    .line 54
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/widget/HtcAbsSpinner;->mSelectedView:Landroid/view/View;

    .line 57
    new-instance v3, Lcom/htc/widget/HtcAbsSpinner$RecycleBin;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcAbsSpinner$RecycleBin;-><init>(Lcom/htc/widget/HtcAbsSpinner;)V

    iput-object v3, p0, Lcom/htc/widget/HtcAbsSpinner;->mRecycler:Lcom/htc/widget/HtcAbsSpinner$RecycleBin;

    .line 75
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsSpinner;->initAbsSpinner()V

    .line 77
    sget-object v3, Lcom/android/internal/R$styleable;->AbsSpinner:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 80
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 81
    .local v2, entries:[Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    .line 82
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v3, 0x1090008

    invoke-direct {v1, p1, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 85
    .local v1, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v3, 0x1090009

    invoke-virtual {v1, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 86
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 89
    .end local v1           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 90
    return-void
.end method

.method static synthetic access$100(Lcom/htc/widget/HtcAbsSpinner;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/HtcAbsSpinner;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method private initAbsSpinner()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsSpinner;->setFocusable(Z)V

    .line 97
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsSpinner;->setWillNotDraw(Z)V

    .line 98
    return-void
.end method


# virtual methods
.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    .line 261
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/SpinnerAdapter;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/htc/widget/HtcAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    return-object v0
.end method

.method getChildHeight(Landroid/view/View;)I
    .locals 1
    .parameter "child"

    .prologue
    .line 248
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method getChildWidth(Landroid/view/View;)I
    .locals 1
    .parameter "child"

    .prologue
    .line 252
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 358
    iget v0, p0, Lcom/htc/widget/HtcAbsSpinner;->mItemCount:I

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2

    .prologue
    .line 329
    iget v0, p0, Lcom/htc/widget/HtcAbsSpinner;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcAbsSpinner;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 330
    iget v0, p0, Lcom/htc/widget/HtcAbsSpinner;->mSelectedPosition:I

    iget v1, p0, Lcom/htc/widget/HtcAbsSpinner;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 332
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method handleDataChanged()V
    .locals 0

    .prologue
    .line 284
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView;->handleDataChanged()V

    .line 285
    return-void
.end method

.method abstract layout(IZ)V
.end method

.method protected onMeasure(II)V
    .locals 11
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 177
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 181
    .local v6, widthMode:I
    iget-object v9, p0, Lcom/htc/widget/HtcAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, p0, Lcom/htc/widget/HtcAbsSpinner;->mPaddingLeft:I

    iget v10, p0, Lcom/htc/widget/HtcAbsSpinner;->mSelectionLeftPadding:I

    if-le v8, v10, :cond_6

    iget v8, p0, Lcom/htc/widget/HtcAbsSpinner;->mPaddingLeft:I

    :goto_0
    iput v8, v9, Landroid/graphics/Rect;->left:I

    .line 183
    iget-object v9, p0, Lcom/htc/widget/HtcAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, p0, Lcom/htc/widget/HtcAbsSpinner;->mPaddingTop:I

    iget v10, p0, Lcom/htc/widget/HtcAbsSpinner;->mSelectionTopPadding:I

    if-le v8, v10, :cond_7

    iget v8, p0, Lcom/htc/widget/HtcAbsSpinner;->mPaddingTop:I

    :goto_1
    iput v8, v9, Landroid/graphics/Rect;->top:I

    .line 185
    iget-object v9, p0, Lcom/htc/widget/HtcAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, p0, Lcom/htc/widget/HtcAbsSpinner;->mPaddingRight:I

    iget v10, p0, Lcom/htc/widget/HtcAbsSpinner;->mSelectionRightPadding:I

    if-le v8, v10, :cond_8

    iget v8, p0, Lcom/htc/widget/HtcAbsSpinner;->mPaddingRight:I

    :goto_2
    iput v8, v9, Landroid/graphics/Rect;->right:I

    .line 187
    iget-object v9, p0, Lcom/htc/widget/HtcAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, p0, Lcom/htc/widget/HtcAbsSpinner;->mPaddingBottom:I

    iget v10, p0, Lcom/htc/widget/HtcAbsSpinner;->mSelectionBottomPadding:I

    if-le v8, v10, :cond_9

    iget v8, p0, Lcom/htc/widget/HtcAbsSpinner;->mPaddingBottom:I

    :goto_3
    iput v8, v9, Landroid/graphics/Rect;->bottom:I

    .line 190
    iget-boolean v8, p0, Lcom/htc/widget/HtcAbsSpinner;->mDataChanged:Z

    if-eqz v8, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsSpinner;->handleDataChanged()V

    .line 194
    :cond_0
    const/4 v2, 0x0

    .line 195
    .local v2, preferredHeight:I
    const/4 v3, 0x0

    .line 196
    .local v3, preferredWidth:I
    const/4 v1, 0x1

    .line 198
    .local v1, needsMeasuring:Z
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsSpinner;->getSelectedItemPosition()I

    move-result v4

    .line 199
    .local v4, selectedPosition:I
    if-ltz v4, :cond_4

    iget-object v8, p0, Lcom/htc/widget/HtcAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/htc/widget/HtcAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v8}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v8

    if-ge v4, v8, :cond_4

    .line 201
    iget-object v8, p0, Lcom/htc/widget/HtcAbsSpinner;->mRecycler:Lcom/htc/widget/HtcAbsSpinner$RecycleBin;

    invoke-virtual {v8, v4}, Lcom/htc/widget/HtcAbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v5

    .line 202
    .local v5, view:Landroid/view/View;
    if-nez v5, :cond_1

    .line 204
    iget-object v8, p0, Lcom/htc/widget/HtcAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v9, 0x0

    invoke-interface {v8, v4, v9, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 207
    :cond_1
    if-eqz v5, :cond_2

    .line 209
    iget-object v8, p0, Lcom/htc/widget/HtcAbsSpinner;->mRecycler:Lcom/htc/widget/HtcAbsSpinner$RecycleBin;

    invoke-virtual {v8, v4, v5}, Lcom/htc/widget/HtcAbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 212
    :cond_2
    if-eqz v5, :cond_4

    .line 213
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    if-nez v8, :cond_3

    .line 214
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/htc/widget/HtcAbsSpinner;->mBlockLayoutRequests:Z

    .line 215
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsSpinner;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/htc/widget/HtcAbsSpinner;->mBlockLayoutRequests:Z

    .line 218
    :cond_3
    invoke-virtual {p0, v5, p1, p2}, Lcom/htc/widget/HtcAbsSpinner;->measureChild(Landroid/view/View;II)V

    .line 220
    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcAbsSpinner;->getChildHeight(Landroid/view/View;)I

    move-result v8

    iget-object v9, p0, Lcom/htc/widget/HtcAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/htc/widget/HtcAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int v2, v8, v9

    .line 221
    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcAbsSpinner;->getChildWidth(Landroid/view/View;)I

    move-result v8

    iget-object v9, p0, Lcom/htc/widget/HtcAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/htc/widget/HtcAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int v3, v8, v9

    .line 223
    const/4 v1, 0x0

    .line 227
    .end local v5           #view:Landroid/view/View;
    :cond_4
    if-eqz v1, :cond_5

    .line 229
    iget-object v8, p0, Lcom/htc/widget/HtcAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/htc/widget/HtcAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int v2, v8, v9

    .line 230
    if-nez v6, :cond_5

    .line 231
    iget-object v8, p0, Lcom/htc/widget/HtcAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/htc/widget/HtcAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int v3, v8, v9

    .line 235
    :cond_5
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsSpinner;->getSuggestedMinimumHeight()I

    move-result v8

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 236
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsSpinner;->getSuggestedMinimumWidth()I

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 238
    invoke-static {v2, p2}, Lcom/htc/widget/HtcAbsSpinner;->resolveSize(II)I

    move-result v0

    .line 239
    .local v0, heightSize:I
    invoke-static {v3, p1}, Lcom/htc/widget/HtcAbsSpinner;->resolveSize(II)I

    move-result v7

    .line 241
    .local v7, widthSize:I
    invoke-virtual {p0, v7, v0}, Lcom/htc/widget/HtcAbsSpinner;->setMeasuredDimension(II)V

    .line 242
    iput p2, p0, Lcom/htc/widget/HtcAbsSpinner;->mHeightMeasureSpec:I

    .line 243
    iput p1, p0, Lcom/htc/widget/HtcAbsSpinner;->mWidthMeasureSpec:I

    .line 244
    return-void

    .line 181
    .end local v0           #heightSize:I
    .end local v1           #needsMeasuring:Z
    .end local v2           #preferredHeight:I
    .end local v3           #preferredWidth:I
    .end local v4           #selectedPosition:I
    .end local v7           #widthSize:I
    :cond_6
    iget v8, p0, Lcom/htc/widget/HtcAbsSpinner;->mSelectionLeftPadding:I

    goto/16 :goto_0

    .line 183
    :cond_7
    iget v8, p0, Lcom/htc/widget/HtcAbsSpinner;->mSelectionTopPadding:I

    goto/16 :goto_1

    .line 185
    :cond_8
    iget v8, p0, Lcom/htc/widget/HtcAbsSpinner;->mSelectionRightPadding:I

    goto/16 :goto_2

    .line 187
    :cond_9
    iget v8, p0, Lcom/htc/widget/HtcAbsSpinner;->mSelectionBottomPadding:I

    goto/16 :goto_3
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 6
    .parameter "state"

    .prologue
    const/4 v5, 0x1

    .line 475
    move-object v0, p1

    check-cast v0, Lcom/htc/widget/HtcAbsSpinner$SavedState;

    .line 477
    .local v0, ss:Lcom/htc/widget/HtcAbsSpinner$SavedState;
    invoke-virtual {v0}, Lcom/htc/widget/HtcAbsSpinner$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/htc/widget/HtcAdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 479
    iget-wide v1, v0, Lcom/htc/widget/HtcAbsSpinner$SavedState;->selectedId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 480
    iput-boolean v5, p0, Lcom/htc/widget/HtcAbsSpinner;->mDataChanged:Z

    .line 481
    iput-boolean v5, p0, Lcom/htc/widget/HtcAbsSpinner;->mNeedSync:Z

    .line 482
    iget-wide v1, v0, Lcom/htc/widget/HtcAbsSpinner$SavedState;->selectedId:J

    iput-wide v1, p0, Lcom/htc/widget/HtcAbsSpinner;->mSyncRowId:J

    .line 483
    iget v1, v0, Lcom/htc/widget/HtcAbsSpinner$SavedState;->position:I

    iput v1, p0, Lcom/htc/widget/HtcAbsSpinner;->mSyncPosition:I

    .line 484
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/widget/HtcAbsSpinner;->mSyncMode:I

    .line 485
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsSpinner;->requestLayout()V

    .line 487
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 458
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 459
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/htc/widget/HtcAbsSpinner$SavedState;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAbsSpinner$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 460
    .local v0, ss:Lcom/htc/widget/HtcAbsSpinner$SavedState;
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsSpinner;->getSelectedItemId()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/htc/widget/HtcAbsSpinner$SavedState;->selectedId:J

    .line 461
    iget-wide v2, v0, Lcom/htc/widget/HtcAbsSpinner$SavedState;->selectedId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 462
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsSpinner;->getSelectedItemPosition()I

    move-result v2

    iput v2, v0, Lcom/htc/widget/HtcAbsSpinner$SavedState;->position:I

    .line 466
    :goto_0
    return-object v0

    .line 464
    :cond_0
    const/4 v2, -0x1

    iput v2, v0, Lcom/htc/widget/HtcAbsSpinner$SavedState;->position:I

    goto :goto_0
.end method

.method public pointToPosition(II)I
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 374
    iget-object v2, p0, Lcom/htc/widget/HtcAbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    .line 375
    .local v2, frame:Landroid/graphics/Rect;
    if-nez v2, :cond_0

    .line 376
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/htc/widget/HtcAbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    .line 377
    iget-object v2, p0, Lcom/htc/widget/HtcAbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    .line 380
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsSpinner;->getChildCount()I

    move-result v1

    .line 381
    .local v1, count:I
    add-int/lit8 v3, v1, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_2

    .line 382
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 383
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 384
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 385
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 386
    iget v4, p0, Lcom/htc/widget/HtcAbsSpinner;->mFirstPosition:I

    add-int/2addr v4, v3

    .line 390
    .end local v0           #child:Landroid/view/View;
    :goto_1
    return v4

    .line 381
    .restart local v0       #child:Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 390
    .end local v0           #child:Landroid/view/View;
    :cond_2
    const/4 v4, -0x1

    goto :goto_1
.end method

.method recycleAllViews()V
    .locals 6

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsSpinner;->getChildCount()I

    move-result v0

    .line 268
    .local v0, childCount:I
    iget-object v4, p0, Lcom/htc/widget/HtcAbsSpinner;->mRecycler:Lcom/htc/widget/HtcAbsSpinner$RecycleBin;

    .line 269
    .local v4, recycleBin:Lcom/htc/widget/HtcAbsSpinner$RecycleBin;
    iget v3, p0, Lcom/htc/widget/HtcAbsSpinner;->mFirstPosition:I

    .line 272
    .local v3, position:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 273
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 274
    .local v5, v:Landroid/view/View;
    add-int v2, v3, v1

    .line 275
    .local v2, index:I
    invoke-virtual {v4, v2, v5}, Lcom/htc/widget/HtcAbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 272
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 277
    .end local v2           #index:I
    .end local v5           #v:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsSpinner;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    .line 345
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView;->requestLayout()V

    .line 347
    :cond_0
    return-void
.end method

.method resetList()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 155
    iput-boolean v0, p0, Lcom/htc/widget/HtcAbsSpinner;->mDataChanged:Z

    .line 156
    iput-boolean v0, p0, Lcom/htc/widget/HtcAbsSpinner;->mNeedSync:Z

    .line 158
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsSpinner;->removeAllViewsInLayout()V

    .line 159
    iput v2, p0, Lcom/htc/widget/HtcAbsSpinner;->mOldSelectedPosition:I

    .line 160
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/htc/widget/HtcAbsSpinner;->mOldSelectedRowId:J

    .line 162
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsSpinner;->setSelectedPositionInt(I)V

    .line 163
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsSpinner;->setNextSelectedPositionInt(I)V

    .line 164
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsSpinner;->invalidate()V

    .line 165
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    check-cast p1, Landroid/widget/SpinnerAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 3
    .parameter "adapter"

    .prologue
    const/4 v0, -0x1

    .line 113
    iget-object v1, p0, Lcom/htc/widget/HtcAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/htc/widget/HtcAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget-object v2, p0, Lcom/htc/widget/HtcAbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/SpinnerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 115
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsSpinner;->resetList()V

    .line 118
    :cond_0
    iput-object p1, p0, Lcom/htc/widget/HtcAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    .line 120
    iput v0, p0, Lcom/htc/widget/HtcAbsSpinner;->mOldSelectedPosition:I

    .line 121
    const-wide/high16 v1, -0x8000

    iput-wide v1, p0, Lcom/htc/widget/HtcAbsSpinner;->mOldSelectedRowId:J

    .line 123
    iget-object v1, p0, Lcom/htc/widget/HtcAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v1, :cond_3

    .line 124
    iget v1, p0, Lcom/htc/widget/HtcAbsSpinner;->mItemCount:I

    iput v1, p0, Lcom/htc/widget/HtcAbsSpinner;->mOldItemCount:I

    .line 125
    iget-object v1, p0, Lcom/htc/widget/HtcAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcAbsSpinner;->mItemCount:I

    .line 126
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsSpinner;->checkFocus()V

    .line 128
    new-instance v1, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;-><init>(Lcom/htc/widget/HtcAdapterView;)V

    iput-object v1, p0, Lcom/htc/widget/HtcAbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 129
    iget-object v1, p0, Lcom/htc/widget/HtcAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget-object v2, p0, Lcom/htc/widget/HtcAbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/SpinnerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 131
    iget v1, p0, Lcom/htc/widget/HtcAbsSpinner;->mItemCount:I

    if-lez v1, :cond_1

    const/4 v0, 0x0

    .line 133
    .local v0, position:I
    :cond_1
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsSpinner;->setSelectedPositionInt(I)V

    .line 134
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsSpinner;->setNextSelectedPositionInt(I)V

    .line 136
    iget v1, p0, Lcom/htc/widget/HtcAbsSpinner;->mItemCount:I

    if-nez v1, :cond_2

    .line 138
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsSpinner;->checkSelectionChanged()V

    .line 148
    .end local v0           #position:I
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsSpinner;->requestLayout()V

    .line 149
    return-void

    .line 142
    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsSpinner;->checkFocus()V

    .line 143
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsSpinner;->resetList()V

    .line 145
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsSpinner;->checkSelectionChanged()V

    goto :goto_0
.end method

.method public setSelection(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 302
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAbsSpinner;->setNextSelectedPositionInt(I)V

    .line 303
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsSpinner;->requestLayout()V

    .line 304
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsSpinner;->invalidate()V

    .line 305
    return-void
.end method

.method public setSelection(IZ)V
    .locals 3
    .parameter "position"
    .parameter "animate"

    .prologue
    .line 294
    if-eqz p2, :cond_0

    iget v1, p0, Lcom/htc/widget/HtcAbsSpinner;->mFirstPosition:I

    if-gt v1, p1, :cond_0

    iget v1, p0, Lcom/htc/widget/HtcAbsSpinner;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsSpinner;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    if-gt p1, v1, :cond_0

    const/4 v0, 0x1

    .line 296
    .local v0, shouldAnimate:Z
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/htc/widget/HtcAbsSpinner;->setSelectionInt(IZ)V

    .line 297
    return-void

    .line 294
    .end local v0           #shouldAnimate:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setSelectionInt(IZ)V
    .locals 2
    .parameter "position"
    .parameter "animate"

    .prologue
    .line 316
    iget v1, p0, Lcom/htc/widget/HtcAbsSpinner;->mOldSelectedPosition:I

    if-eq p1, v1, :cond_0

    .line 317
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/widget/HtcAbsSpinner;->mBlockLayoutRequests:Z

    .line 318
    iget v1, p0, Lcom/htc/widget/HtcAbsSpinner;->mSelectedPosition:I

    sub-int v0, p1, v1

    .line 319
    .local v0, delta:I
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAbsSpinner;->setNextSelectedPositionInt(I)V

    .line 320
    invoke-virtual {p0, v0, p2}, Lcom/htc/widget/HtcAbsSpinner;->layout(IZ)V

    .line 321
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/widget/HtcAbsSpinner;->mBlockLayoutRequests:Z

    .line 323
    .end local v0           #delta:I
    :cond_0
    return-void
.end method
