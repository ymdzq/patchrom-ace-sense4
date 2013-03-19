.class public Lcom/htc/album/TabPluginDevice/HighlightView;
.super Ljava/lang/Object;
.source "HighlightView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;
    }
.end annotation


# static fields
.field public static final GROW_BOTTOM_EDGE:I = 0x10

.field public static final GROW_LEFT_EDGE:I = 0x2

.field public static final GROW_NONE:I = 0x1

.field public static final GROW_RIGHT_EDGE:I = 0x4

.field public static final GROW_TOP_EDGE:I = 0x8

.field public static final MOVE:I = 0x20

.field private static final TAG:Ljava/lang/String; = "CropImage"


# instance fields
.field mCircle:Z

.field mContext:Landroid/view/View;

.field mCropRect:Landroid/graphics/RectF;

.field mDrawRect:Landroid/graphics/Rect;

.field mFocusPaint:Landroid/graphics/Paint;

.field mHidden:Z

.field mImageRect:Landroid/graphics/RectF;

.field mInitialAspectRatio:F

.field mIsFocused:Z

.field mMaintainAspectRatio:Z

.field mMatrix:Landroid/graphics/Matrix;

.field mMode:Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;

.field mMotionMode:I

.field mNoFocusPaint:Landroid/graphics/Paint;

.field mOutlinePaint:Landroid/graphics/Paint;

.field mPath:Landroid/graphics/Path;

.field mResizeRimButtonLeftRight:Lcom/htc/widget/HtcRimButton;

.field mResizeRimButtonTopBottom:Lcom/htc/widget/HtcRimButton;

.field private mSpotlightRatioX:F

.field private mSpotlightRatioY:F

.field mViewDrawingRect:Landroid/graphics/Rect;

.field mbOversize:Z

.field mfAspectImage:F

.field mfAspectScreen:F

.field mfHeightBoundary:F

.field mfWidthBoundary:F


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/high16 v1, -0x4080

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mViewDrawingRect:Landroid/graphics/Rect;

    iput v3, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mSpotlightRatioX:F

    iput v3, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mSpotlightRatioY:F

    iput v1, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mfAspectScreen:F

    iput v1, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mfAspectImage:F

    iput v1, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mfWidthBoundary:F

    iput v1, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mfHeightBoundary:F

    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mbOversize:Z

    sget-object v0, Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;->None:Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mMode:Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;

    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mMaintainAspectRatio:Z

    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mCircle:Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mFocusPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mNoFocusPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mContext:Landroid/view/View;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mPath:Landroid/graphics/Path;

    return-void
.end method

.method private computeLayout()Landroid/graphics/Rect;
    .locals 6

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method private initHighlightView()V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mContext:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v2, Lcom/htc/widget/HtcRimButton;

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mContext:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/widget/HtcRimButton;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mResizeRimButtonLeftRight:Lcom/htc/widget/HtcRimButton;

    new-instance v2, Lcom/htc/widget/HtcRimButton;

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mContext:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/widget/HtcRimButton;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mResizeRimButtonTopBottom:Lcom/htc/widget/HtcRimButton;

    const v2, 0x7f020006

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mResizeRimButtonLeftRight:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v2, v1, v1, v1}, Lcom/htc/widget/HtcRimButton;->setButtonBackgroundDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mResizeRimButtonTopBottom:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v2, v1, v1, v1}, Lcom/htc/widget/HtcRimButton;->setButtonBackgroundDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mResizeRimButtonLeftRight:Lcom/htc/widget/HtcRimButton;

    const v3, 0x7f020029

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcRimButton;->setIconResource(I)V

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mResizeRimButtonTopBottom:Lcom/htc/widget/HtcRimButton;

    const v3, 0x7f02002a

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcRimButton;->setIconResource(I)V

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mResizeRimButtonLeftRight:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v2, v5, v5, v3, v4}, Lcom/htc/widget/HtcRimButton;->layout(IIII)V

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mResizeRimButtonTopBottom:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v2, v5, v5, v3, v4}, Lcom/htc/widget/HtcRimButton;->layout(IIII)V

    return-void
.end method

.method private shift(Landroid/graphics/RectF;FF)V
    .locals 1

    iget v0, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p2

    iput v0, p1, Landroid/graphics/RectF;->left:F

    iget v0, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, p2

    iput v0, p1, Landroid/graphics/RectF;->right:F

    iget v0, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, p3

    iput v0, p1, Landroid/graphics/RectF;->top:F

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, p3

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method


# virtual methods
.method protected draw(Landroid/graphics/Canvas;)V
    .locals 26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mHidden:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mPath:Landroid/graphics/Path;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Path;->reset()V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/HighlightView;->hasFocus()Z

    move-result v20

    if-nez v20, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mContext:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/htc/album/Customizable/CustSkinnable;->getColor_CropFrame(Landroid/content/Context;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mContext:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mViewDrawingRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mCircle:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->width()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/HighlightView;->getPaddingLeft()F

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/HighlightView;->getPaddingRight()F

    move-result v22

    add-float v21, v21, v22

    sub-float v15, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->height()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/HighlightView;->getPaddingTop()F

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/HighlightView;->getPaddingBottom()F

    move-result v22

    add-float v21, v21, v22

    sub-float v7, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mPath:Landroid/graphics/Path;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/HighlightView;->getPaddingLeft()F

    move-result v22

    add-float v21, v21, v22

    const/high16 v22, 0x4000

    div-float v22, v15, v22

    add-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/HighlightView;->getPaddingTop()F

    move-result v23

    add-float v22, v22, v23

    const/high16 v23, 0x4000

    div-float v23, v7, v23

    add-float v22, v22, v23

    const/high16 v23, 0x4000

    div-float v23, v15, v23

    sget-object v24, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v20 .. v24}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mContext:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/htc/album/Customizable/CustSkinnable;->getColor_CropFrame(Landroid/content/Context;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setColor(I)V

    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mPath:Landroid/graphics/Path;

    move-object/from16 v20, v0

    sget-object v21, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mPath:Landroid/graphics/Path;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mPath:Landroid/graphics/Path;

    move-object/from16 v20, v0

    new-instance v21, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v22, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v20 .. v22}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mViewDrawingRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/HighlightView;->hasFocus()Z

    move-result v20

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mFocusPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    :goto_3
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mPath:Landroid/graphics/Path;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mMode:Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;

    move-object/from16 v20, v0

    sget-object v21, Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;->Grow:Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mCircle:Z

    move/from16 v20, v0

    if-eqz v20, :cond_7

    const-string v20, "CropImage"

    const-string v21, "Shouldn\'t happen"

    invoke-static/range {v20 .. v21}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mSpotlightRatioX:F

    move/from16 v20, v0

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-eqz v20, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mSpotlightRatioY:F

    move/from16 v20, v0

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-nez v20, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mPath:Landroid/graphics/Path;

    move-object/from16 v20, v0

    new-instance v21, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v22, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v20 .. v22}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mContext:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/htc/album/Customizable/CustSkinnable;->getColor_CropFrame(Landroid/content/Context;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->width()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mSpotlightRatioX:F

    move/from16 v21, v0

    mul-float v12, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->height()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mSpotlightRatioY:F

    move/from16 v21, v0

    mul-float v13, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Rect;->width()I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    add-int v20, v20, v21

    move/from16 v0, v20

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Rect;->height()I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    add-int v20, v20, v21

    move/from16 v0, v20

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mContext:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/htc/album/Customizable/CustSkinnable;->getColor_CropFrame(Landroid/content/Context;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mPath:Landroid/graphics/Path;

    move-object/from16 v20, v0

    new-instance v21, Landroid/graphics/RectF;

    const/high16 v22, 0x4000

    div-float v22, v12, v22

    sub-float v22, v4, v22

    const/high16 v23, 0x4000

    div-float v23, v13, v23

    sub-float v23, v5, v23

    const/high16 v24, 0x4000

    div-float v24, v12, v24

    add-float v24, v24, v4

    const/high16 v25, 0x4000

    div-float v25, v13, v25

    add-float v25, v25, v5

    invoke-direct/range {v21 .. v25}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v22, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v20 .. v22}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mPath:Landroid/graphics/Path;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mPath:Landroid/graphics/Path;

    move-object/from16 v20, v0

    sget-object v21, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mPath:Landroid/graphics/Path;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mPath:Landroid/graphics/Path;

    move-object/from16 v20, v0

    new-instance v21, Landroid/graphics/RectF;

    const/high16 v22, 0x4000

    div-float v22, v13, v22

    sub-float v22, v4, v22

    const/high16 v23, 0x4000

    div-float v23, v12, v23

    sub-float v23, v5, v23

    const/high16 v24, 0x4000

    div-float v24, v13, v24

    add-float v24, v24, v4

    const/high16 v25, 0x4000

    div-float v25, v12, v25

    add-float v25, v25, v5

    invoke-direct/range {v21 .. v25}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v22, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v20 .. v22}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mPath:Landroid/graphics/Path;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_1

    :catch_0
    move-exception v6

    const-string v20, "CropImage"

    const-string v21, "CropView don\'t support GPU rendering"

    invoke-static/range {v20 .. v21}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catch_1
    move-exception v6

    const-string v20, "CropImage"

    const-string v21, "CropView don\'t support GPU rendering"

    invoke-static/range {v20 .. v21}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mNoFocusPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    goto/16 :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    add-int/lit8 v10, v20, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    add-int/lit8 v11, v20, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    add-int/lit8 v14, v20, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    add-int/lit8 v3, v20, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mResizeRimButtonLeftRight:Lcom/htc/widget/HtcRimButton;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/widget/HtcRimButton;->getWidth()I

    move-result v20

    div-int/lit8 v17, v20, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mResizeRimButtonLeftRight:Lcom/htc/widget/HtcRimButton;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/widget/HtcRimButton;->getHeight()I

    move-result v20

    div-int/lit8 v16, v20, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mResizeRimButtonTopBottom:Lcom/htc/widget/HtcRimButton;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/widget/HtcRimButton;->getHeight()I

    move-result v20

    div-int/lit8 v8, v20, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mResizeRimButtonTopBottom:Lcom/htc/widget/HtcRimButton;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/widget/HtcRimButton;->getWidth()I

    move-result v20

    div-int/lit8 v9, v20, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    div-int/lit8 v21, v21, 0x2

    add-int v18, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    div-int/lit8 v21, v21, 0x2

    add-int v19, v20, v21

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    sub-int v20, v10, v17

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-int v21, v19, v16

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mResizeRimButtonLeftRight:Lcom/htc/widget/HtcRimButton;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    sub-int v20, v11, v17

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-int v21, v19, v16

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mResizeRimButtonLeftRight:Lcom/htc/widget/HtcRimButton;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    sub-int v20, v18, v9

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-int v21, v3, v8

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mResizeRimButtonTopBottom:Lcom/htc/widget/HtcRimButton;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    sub-int v20, v18, v9

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-int v21, v14, v8

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mResizeRimButtonTopBottom:Lcom/htc/widget/HtcRimButton;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0
.end method

.method public getCropRect()Landroid/graphics/Rect;
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getHit(FF)I
    .locals 12

    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v6

    const/high16 v5, 0x41a0

    const/4 v8, 0x1

    iget-boolean v10, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mCircle:Z

    if-eqz v10, :cond_6

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    int-to-float v10, v10

    sub-float v1, p1, v10

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    int-to-float v10, v10

    sub-float v2, p2, v10

    mul-float v10, v1, v1

    mul-float v11, v2, v2

    add-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-int v3, v10

    iget-object v10, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/HighlightView;->getPaddingLeft()F

    move-result v11

    sub-float/2addr v10, v11

    float-to-int v10, v10

    div-int/lit8 v7, v10, 0x2

    sub-int v0, v3, v7

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x41a0

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v10

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_2

    const/4 v10, 0x0

    cmpg-float v10, v2, v10

    if-gez v10, :cond_1

    const/16 v8, 0x8

    :cond_0
    :goto_0
    return v8

    :cond_1
    const/16 v8, 0x10

    goto :goto_0

    :cond_2
    const/4 v10, 0x0

    cmpg-float v10, v1, v10

    if-gez v10, :cond_3

    const/4 v8, 0x2

    goto :goto_0

    :cond_3
    const/4 v8, 0x4

    goto :goto_0

    :cond_4
    if-ge v3, v7, :cond_5

    const/16 v8, 0x20

    goto :goto_0

    :cond_5
    const/4 v8, 0x1

    goto :goto_0

    :cond_6
    iget v10, v6, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    const/high16 v11, 0x41a0

    sub-float/2addr v10, v11

    cmpl-float v10, p2, v10

    if-ltz v10, :cond_b

    iget v10, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    const/high16 v11, 0x41a0

    add-float/2addr v10, v11

    cmpg-float v10, p2, v10

    if-gez v10, :cond_b

    const/4 v9, 0x1

    :goto_1
    iget v10, v6, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    const/high16 v11, 0x41a0

    sub-float/2addr v10, v11

    cmpl-float v10, p1, v10

    if-ltz v10, :cond_c

    iget v10, v6, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    const/high16 v11, 0x41a0

    add-float/2addr v10, v11

    cmpg-float v10, p1, v10

    if-gez v10, :cond_c

    const/4 v4, 0x1

    :goto_2
    iget v10, v6, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    sub-float/2addr v10, p1

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x41a0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_7

    if-eqz v9, :cond_7

    or-int/lit8 v8, v8, 0x2

    :cond_7
    iget v10, v6, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    sub-float/2addr v10, p1

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x41a0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_8

    if-eqz v9, :cond_8

    or-int/lit8 v8, v8, 0x4

    :cond_8
    iget v10, v6, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    sub-float/2addr v10, p2

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x41a0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_9

    if-eqz v4, :cond_9

    or-int/lit8 v8, v8, 0x8

    :cond_9
    iget v10, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    sub-float/2addr v10, p2

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x41a0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_a

    if-eqz v4, :cond_a

    or-int/lit8 v8, v8, 0x10

    :cond_a
    const/4 v10, 0x1

    if-ne v8, v10, :cond_0

    float-to-int v10, p1

    float-to-int v11, p2

    invoke-virtual {v6, v10, v11}, Landroid/graphics/Rect;->contains(II)Z

    move-result v10

    if-eqz v10, :cond_0

    const/16 v8, 0x20

    goto/16 :goto_0

    :cond_b
    const/4 v9, 0x0

    goto :goto_1

    :cond_c
    const/4 v4, 0x0

    goto :goto_2
.end method

.method getInsetWhenOverHeight(F)F
    .locals 5

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mContext:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mContext:Landroid/view/View;

    instance-of v3, v3, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mContext:Landroid/view/View;

    check-cast v0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->getScale()F

    move-result v2

    mul-float v1, p1, v2

    iget v3, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mfHeightBoundary:F

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_0

    iget v3, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mfHeightBoundary:F

    sub-float v3, v1, v3

    const/high16 v4, 0x4000

    mul-float/2addr v4, v2

    div-float/2addr v3, v4

    :goto_0
    return v3

    :cond_0
    const/high16 v3, -0x4080

    goto :goto_0
.end method

.method getInsetWhenOverWidth(F)F
    .locals 5

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mContext:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mContext:Landroid/view/View;

    instance-of v3, v3, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mContext:Landroid/view/View;

    check-cast v0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->getScale()F

    move-result v2

    mul-float v1, p1, v2

    iget v3, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mfWidthBoundary:F

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_0

    iget v3, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mfWidthBoundary:F

    sub-float v3, v1, v3

    const/high16 v4, 0x4000

    mul-float/2addr v4, v2

    div-float/2addr v3, v4

    :goto_0
    return v3

    :cond_0
    const/high16 v3, -0x4080

    goto :goto_0
.end method

.method public getMode()Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mMode:Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;

    return-object v0
.end method

.method getPaddingBottom()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method getPaddingLeft()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method getPaddingRight()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method getPaddingTop()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method growBy(FF)V
    .locals 11

    const/high16 v10, 0x4000

    const/4 v9, 0x0

    iget-boolean v7, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mMaintainAspectRatio:Z

    if-eqz v7, :cond_0

    cmpl-float v7, p1, v9

    if-eqz v7, :cond_e

    iget v7, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mInitialAspectRatio:F

    div-float p2, p1, v7

    :cond_0
    :goto_0
    new-instance v5, Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-direct {v5, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    cmpl-float v7, p1, v9

    if-lez v7, :cond_1

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v7

    mul-float v8, v10, p1

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1

    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v8

    sub-float/2addr v7, v8

    div-float v1, v7, v10

    move p1, v1

    iget-boolean v7, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mMaintainAspectRatio:Z

    if-eqz v7, :cond_1

    iget v7, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mInitialAspectRatio:F

    div-float p2, p1, v7

    :cond_1
    cmpl-float v7, p2, v9

    if-lez v7, :cond_2

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v7

    mul-float v8, v10, p2

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v8

    sub-float/2addr v7, v8

    div-float v1, v7, v10

    move p2, v1

    iget-boolean v7, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mMaintainAspectRatio:Z

    if-eqz v7, :cond_2

    iget v7, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mInitialAspectRatio:F

    mul-float p1, p2, v7

    :cond_2
    neg-float v7, p1

    neg-float v8, p2

    invoke-virtual {v5, v7, v8}, Landroid/graphics/RectF;->inset(FF)V

    const/high16 v0, 0x41c8

    const/high16 v6, 0x41c8

    const/high16 v4, 0x41c8

    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    cmpl-float v7, v6, v7

    if-lez v7, :cond_3

    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v6

    :cond_3
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    cmpl-float v7, v4, v7

    if-lez v7, :cond_4

    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v4

    :cond_4
    iget-boolean v7, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mMaintainAspectRatio:Z

    if-eqz v7, :cond_5

    iget v7, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mInitialAspectRatio:F

    const/high16 v8, 0x3f80

    cmpl-float v7, v7, v8

    if-lez v7, :cond_f

    iget v7, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mInitialAspectRatio:F

    div-float v4, v6, v7

    :cond_5
    :goto_1
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v7

    cmpg-float v7, v7, v6

    if-gez v7, :cond_6

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v7

    sub-float v7, v6, v7

    neg-float v7, v7

    div-float/2addr v7, v10

    invoke-virtual {v5, v7, v9}, Landroid/graphics/RectF;->inset(FF)V

    :cond_6
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v7

    cmpg-float v7, v7, v4

    if-gez v7, :cond_7

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v7

    sub-float v7, v4, v7

    neg-float v7, v7

    div-float/2addr v7, v10

    invoke-virtual {v5, v9, v7}, Landroid/graphics/RectF;->inset(FF)V

    :cond_7
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v7

    invoke-virtual {p0, v7}, Lcom/htc/album/TabPluginDevice/HighlightView;->getInsetWhenOverWidth(F)F

    move-result v2

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v7

    invoke-virtual {p0, v7}, Lcom/htc/album/TabPluginDevice/HighlightView;->getInsetWhenOverHeight(F)F

    move-result v3

    iget-boolean v7, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mMaintainAspectRatio:Z

    if-eqz v7, :cond_8

    iget v7, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mInitialAspectRatio:F

    cmpl-float v7, v7, v9

    if-eqz v7, :cond_8

    cmpl-float v7, v2, v9

    if-lez v7, :cond_10

    cmpl-float v7, v2, v3

    if-ltz v7, :cond_10

    iget v7, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mInitialAspectRatio:F

    div-float v3, v2, v7

    :cond_8
    :goto_2
    cmpl-float v7, v2, v9

    if-gtz v7, :cond_9

    cmpl-float v7, v3, v9

    if-lez v7, :cond_a

    :cond_9
    invoke-virtual {v5, v2, v3}, Landroid/graphics/RectF;->inset(FF)V

    :cond_a
    cmpl-float v7, v2, v9

    if-gez v7, :cond_b

    cmpl-float v7, v3, v9

    if-ltz v7, :cond_11

    :cond_b
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mbOversize:Z

    :goto_3
    iget v7, v5, Landroid/graphics/RectF;->left:F

    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    cmpg-float v7, v7, v8

    if-gez v7, :cond_12

    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    iget v8, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v7, v8

    invoke-direct {p0, v5, v7, v9}, Lcom/htc/album/TabPluginDevice/HighlightView;->shift(Landroid/graphics/RectF;FF)V

    :cond_c
    :goto_4
    iget v7, v5, Landroid/graphics/RectF;->top:F

    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    cmpg-float v7, v7, v8

    if-gez v7, :cond_13

    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    iget v8, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v7, v8

    invoke-direct {p0, v5, v9, v7}, Lcom/htc/album/TabPluginDevice/HighlightView;->shift(Landroid/graphics/RectF;FF)V

    :cond_d
    :goto_5
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v7, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mContext:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->invalidate()V

    return-void

    :cond_e
    cmpl-float v7, p2, v9

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mInitialAspectRatio:F

    mul-float p1, p2, v7

    goto/16 :goto_0

    :cond_f
    iget v7, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mInitialAspectRatio:F

    mul-float v6, v4, v7

    goto/16 :goto_1

    :cond_10
    cmpl-float v7, v3, v9

    if-lez v7, :cond_8

    cmpl-float v7, v3, v2

    if-lez v7, :cond_8

    iget v7, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mInitialAspectRatio:F

    mul-float v2, v3, v7

    goto :goto_2

    :cond_11
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mbOversize:Z

    goto :goto_3

    :cond_12
    iget v7, v5, Landroid/graphics/RectF;->right:F

    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_c

    iget v7, v5, Landroid/graphics/RectF;->right:F

    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    sub-float/2addr v7, v8

    neg-float v7, v7

    invoke-direct {p0, v5, v7, v9}, Lcom/htc/album/TabPluginDevice/HighlightView;->shift(Landroid/graphics/RectF;FF)V

    goto :goto_4

    :cond_13
    iget v7, v5, Landroid/graphics/RectF;->bottom:F

    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_d

    iget v7, v5, Landroid/graphics/RectF;->bottom:F

    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v7, v8

    neg-float v7, v7

    invoke-direct {p0, v5, v9, v7}, Lcom/htc/album/TabPluginDevice/HighlightView;->shift(Landroid/graphics/RectF;FF)V

    goto :goto_5
.end method

.method handleMotion(IFF)V
    .locals 7

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v0

    if-ne p1, v4, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v5, 0x20

    if-ne p1, v5, :cond_1

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float/2addr v3, p2

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float/2addr v4, p3

    invoke-virtual {p0, v3, v4}, Lcom/htc/album/TabPluginDevice/HighlightView;->moveBy(FF)V

    goto :goto_0

    :cond_1
    and-int/lit8 v5, p1, 0x6

    if-nez v5, :cond_2

    const/4 p2, 0x0

    :cond_2
    and-int/lit8 v5, p1, 0x18

    if-nez v5, :cond_3

    const/4 p3, 0x0

    :cond_3
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float v1, p2, v5

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float v2, p3, v5

    and-int/lit8 v5, p1, 0x2

    if-eqz v5, :cond_4

    move v5, v3

    :goto_1
    int-to-float v5, v5

    mul-float/2addr v5, v1

    and-int/lit8 v6, p1, 0x8

    if-eqz v6, :cond_5

    :goto_2
    int-to-float v3, v3

    mul-float/2addr v3, v2

    invoke-virtual {p0, v5, v3}, Lcom/htc/album/TabPluginDevice/HighlightView;->growBy(FF)V

    goto :goto_0

    :cond_4
    move v5, v4

    goto :goto_1

    :cond_5
    move v3, v4

    goto :goto_2
.end method

.method public hasFocus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mIsFocused:Z

    return v0
.end method

.method public invalidate()V
    .locals 1

    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    return-void
.end method

.method public modify(IJ)V
    .locals 7

    const v6, 0x3c23d70a

    const/4 v5, 0x0

    const v3, 0x3dcccccd

    long-to-float v4, p2

    mul-float/2addr v4, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mContext:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v2, v0, v3

    move v1, v2

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mMode:Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;

    sget-object v4, Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;->Move:Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;

    if-ne v3, v4, :cond_1

    neg-float v3, v2

    invoke-virtual {p0, v3, v5}, Lcom/htc/album/TabPluginDevice/HighlightView;->moveBy(FF)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mMode:Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;

    sget-object v4, Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;->Grow:Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;

    if-ne v3, v4, :cond_0

    neg-float v3, v2

    invoke-virtual {p0, v3, v5}, Lcom/htc/album/TabPluginDevice/HighlightView;->growBy(FF)V

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mMode:Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;

    sget-object v4, Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;->Move:Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;

    if-ne v3, v4, :cond_2

    invoke-virtual {p0, v2, v5}, Lcom/htc/album/TabPluginDevice/HighlightView;->moveBy(FF)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mMode:Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;

    sget-object v4, Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;->Grow:Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;

    if-ne v3, v4, :cond_0

    invoke-virtual {p0, v2, v5}, Lcom/htc/album/TabPluginDevice/HighlightView;->growBy(FF)V

    goto :goto_0

    :pswitch_2
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mMode:Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;

    sget-object v4, Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;->Move:Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;

    if-ne v3, v4, :cond_3

    neg-float v3, v1

    invoke-virtual {p0, v5, v3}, Lcom/htc/album/TabPluginDevice/HighlightView;->moveBy(FF)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mMode:Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;

    sget-object v4, Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;->Grow:Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;

    if-ne v3, v4, :cond_0

    neg-float v3, v1

    invoke-virtual {p0, v5, v3}, Lcom/htc/album/TabPluginDevice/HighlightView;->growBy(FF)V

    goto :goto_0

    :pswitch_3
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mMode:Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;

    sget-object v4, Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;->Move:Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;

    if-ne v3, v4, :cond_4

    invoke-virtual {p0, v5, v1}, Lcom/htc/album/TabPluginDevice/HighlightView;->moveBy(FF)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mMode:Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;

    sget-object v4, Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;->Grow:Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;

    if-ne v3, v4, :cond_0

    invoke-virtual {p0, v5, v1}, Lcom/htc/album/TabPluginDevice/HighlightView;->growBy(FF)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method moveBy(FF)V
    .locals 7

    const/16 v6, -0xa

    const/4 v5, 0x0

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v4

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v6, v6}, Landroid/graphics/Rect;->inset(II)V

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mContext:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setFocus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mIsFocused:Z

    return-void
.end method

.method public setHidden(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mHidden:Z

    return-void
.end method

.method public setMode(Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mMode:Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mMode:Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mContext:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setSpotlightRatio(FF)V
    .locals 0

    iput p1, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mSpotlightRatioX:F

    iput p2, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mSpotlightRatioY:F

    return-void
.end method

.method public setup(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;ZZ)V
    .locals 5

    const/16 v4, 0x7d

    const/16 v3, 0x32

    if-eqz p4, :cond_0

    const/4 p5, 0x1

    :cond_0
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    iput-object p3, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mCropRect:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iput-boolean p5, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mMaintainAspectRatio:Z

    iput-boolean p4, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mCircle:Z

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mInitialAspectRatio:F

    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    const/high16 v0, 0x4040

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mFocusPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v3, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mNoFocusPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v3, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v1, Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;->None:Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mMode:Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;

    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/HighlightView;->initHighlightView()V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mResizeRimButtonLeftRight:Lcom/htc/widget/HtcRimButton;

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mResizeRimButtonTopBottom:Lcom/htc/widget/HtcRimButton;

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mFocusPaint:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mNoFocusPaint:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    return-void
.end method

.method updateBoundary()V
    .locals 9

    const/high16 v8, 0x4000

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    :cond_0
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mContext:Landroid/view/View;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mContext:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float v6, v8, v2

    sub-float v4, v5, v6

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mContext:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float v6, v8, v2

    sub-float v3, v5, v6

    :cond_1
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mImageRect:Landroid/graphics/RectF;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v0

    :cond_2
    cmpg-float v5, v3, v7

    if-lez v5, :cond_3

    cmpg-float v5, v4, v7

    if-lez v5, :cond_3

    cmpg-float v5, v0, v7

    if-lez v5, :cond_3

    cmpg-float v5, v1, v7

    if-gtz v5, :cond_4

    :cond_3
    :goto_0
    return-void

    :cond_4
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mbOversize:Z

    div-float v5, v4, v3

    iput v5, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mfAspectScreen:F

    div-float v5, v1, v0

    iput v5, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mfAspectImage:F

    iget v5, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mfAspectImage:F

    iget v6, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mfAspectScreen:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_6

    cmpl-float v5, v0, v3

    if-lez v5, :cond_5

    iput v0, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mfHeightBoundary:F

    :goto_1
    iget v5, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mfHeightBoundary:F

    iget v6, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mfAspectScreen:F

    mul-float/2addr v5, v6

    iput v5, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mfWidthBoundary:F

    goto :goto_0

    :cond_5
    iput v3, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mfHeightBoundary:F

    goto :goto_1

    :cond_6
    iget v5, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mfAspectImage:F

    iget v6, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mfAspectScreen:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_8

    cmpl-float v5, v1, v4

    if-lez v5, :cond_7

    iput v1, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mfWidthBoundary:F

    :goto_2
    iget v5, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mfWidthBoundary:F

    iget v6, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mfAspectScreen:F

    div-float/2addr v5, v6

    iput v5, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mfHeightBoundary:F

    goto :goto_0

    :cond_7
    iput v4, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mfWidthBoundary:F

    goto :goto_2

    :cond_8
    cmpl-float v5, v1, v4

    if-lez v5, :cond_9

    iput v1, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mfWidthBoundary:F

    :cond_9
    cmpl-float v5, v0, v3

    if-lez v5, :cond_3

    iput v0, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mfWidthBoundary:F

    goto :goto_0
.end method
