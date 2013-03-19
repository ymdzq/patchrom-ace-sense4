.class Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "HtcToggleButtonLight.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcToggleButtonLight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestTextDrawable"
.end annotation


# instance fields
.field private mButtonRest:Landroid/graphics/drawable/Drawable;

.field private mCenterXP:I

.field private mCenterYP:I

.field private mScale:F

.field private mTextColor:I

.field private mTextColorBottom:I

.field private mTextColorTop:I

.field private mTextOff:Ljava/lang/CharSequence;

.field private mTextOffYOffset:I

.field private mTextOn:Ljava/lang/CharSequence;

.field private mTextOnYOffset:I

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTextYCenter:I

.field private mTextbounds:Landroid/graphics/Rect;

.field private mWidth:I

.field final synthetic this$0:Lcom/htc/widget/HtcToggleButtonLight;


# direct methods
.method public constructor <init>(Lcom/htc/widget/HtcToggleButtonLight;Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->this$0:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object v2, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mTextOff:Ljava/lang/CharSequence;

    iput-object v2, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mTextOn:Ljava/lang/CharSequence;

    iput-object v2, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mTextPaint:Landroid/text/TextPaint;

    iput v1, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mTextColor:I

    iput v1, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mTextColorTop:I

    iput v1, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mTextColorBottom:I

    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mScale:F

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2040399

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mTextOn:Ljava/lang/CharSequence;

    const v1, 0x204039a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mTextOff:Ljava/lang/CharSequence;

    new-instance v1, Landroid/text/TextPaint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v1, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Lcom/htc/widget/HtcToggleButtonLight;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, v1, Landroid/text/TextPaint;->density:F

    iget-object v1, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Lcom/htc/widget/HtcToggleButtonLight;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    iget-object v1, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mTextPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mTextbounds:Landroid/graphics/Rect;

    return-void
.end method

.method private drawText(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->this$0:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v2}, Lcom/htc/widget/HtcToggleButtonLight;->isChecked()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mTextOff:Ljava/lang/CharSequence;

    check-cast v0, Ljava/lang/String;

    iget v2, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mTextOffYOffset:I

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mTextbounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v5, v3, v4}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mTextbounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    div-int/lit8 v2, v2, 0x2

    neg-int v2, v2

    iput v2, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mTextOffYOffset:I

    :cond_0
    iget v1, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mTextOffYOffset:I

    :goto_0
    iget v2, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mCenterYP:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mTextYCenter:I

    iget v2, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mTextColorTop:I

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mTextPaint:Landroid/text/TextPaint;

    iget v3, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mTextColorTop:I

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    iget v2, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mCenterXP:I

    int-to-float v2, v2

    iget v3, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mTextYCenter:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    iget-object v4, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    iget v2, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mTextColorBottom:I

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mTextPaint:Landroid/text/TextPaint;

    iget v3, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mTextColorBottom:I

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    iget v2, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mCenterXP:I

    int-to-float v2, v2

    iget v3, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mTextYCenter:I

    add-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    iget-object v4, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_2
    iget-object v2, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mTextPaint:Landroid/text/TextPaint;

    iget v3, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mTextColor:I

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    iget v2, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mCenterXP:I

    int-to-float v2, v2

    iget v3, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mTextYCenter:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mTextOn:Ljava/lang/CharSequence;

    check-cast v0, Ljava/lang/String;

    iget v2, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mTextOnYOffset:I

    if-gez v2, :cond_4

    iget-object v2, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mTextbounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v5, v3, v4}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mTextbounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    div-int/lit8 v2, v2, 0x2

    neg-int v2, v2

    iput v2, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mTextOnYOffset:I

    :cond_4
    iget v1, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mTextOnYOffset:I

    goto :goto_0
.end method

.method private initTextPaint(I)V
    .locals 13

    const/4 v12, 0x2

    const/4 v6, 0x1

    const/4 v11, -0x1

    const/4 v10, 0x3

    const/4 v5, 0x0

    if-ne p1, v6, :cond_2

    iget-object v7, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->this$0:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v7}, Lcom/htc/widget/HtcToggleButtonLight;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x203009f

    sget-object v9, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v7

    iput v7, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mTextColor:I

    iget-object v7, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mTextPaint:Landroid/text/TextPaint;

    iget v8, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mTextColor:I

    invoke-virtual {v7, v8}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v7, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/text/TextPaint;->setTextSize(F)V

    invoke-virtual {v0, v12, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-static {v2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v3

    iget-object v7, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Typeface;->getStyle()I

    move-result v4

    :goto_0
    xor-int/lit8 v7, v4, -0x1

    and-int v1, v2, v7

    iget-object v7, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v8, v1, 0x1

    if-eqz v8, :cond_0

    move v5, v6

    :cond_0
    invoke-virtual {v7, v5}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v5, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->this$0:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v5}, Lcom/htc/widget/HtcToggleButtonLight;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x20300a0

    sget-object v7, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    iput v5, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mTextColorTop:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v5, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->this$0:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v5}, Lcom/htc/widget/HtcToggleButtonLight;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x20300a1

    sget-object v7, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    iput v5, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mTextColorBottom:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :goto_1
    iput v11, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mTextOnYOffset:I

    iput v11, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mTextOffYOffset:I

    return-void

    :cond_1
    move v4, v5

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->this$0:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v7}, Lcom/htc/widget/HtcToggleButtonLight;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x203009c

    sget-object v9, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v7

    iput v7, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mTextColor:I

    iget-object v7, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mTextPaint:Landroid/text/TextPaint;

    iget v8, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mTextColor:I

    invoke-virtual {v7, v8}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v7, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/text/TextPaint;->setTextSize(F)V

    invoke-virtual {v0, v12, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-static {v2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v3

    iget-object v7, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/graphics/Typeface;->getStyle()I

    move-result v4

    :goto_2
    xor-int/lit8 v7, v4, -0x1

    and-int v1, v2, v7

    iget-object v7, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v8, v1, 0x1

    if-eqz v8, :cond_4

    :goto_3
    invoke-virtual {v7, v6}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v5, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->this$0:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v5}, Lcom/htc/widget/HtcToggleButtonLight;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x203009d

    sget-object v7, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    iput v5, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mTextColorTop:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v5, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->this$0:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v5}, Lcom/htc/widget/HtcToggleButtonLight;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x203009e

    sget-object v7, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    iput v5, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mTextColorBottom:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_1

    :cond_3
    move v4, v5

    goto :goto_2

    :cond_4
    move v6, v5

    goto :goto_3
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mScale:F

    iget v1, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mScale:F

    iget v2, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mCenterXP:I

    int-to-float v2, v2

    iget v3, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mCenterYP:I

    int-to-float v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mButtonRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->drawText(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mButtonRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mButtonRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mButtonRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public getTextOff()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mTextOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextOn()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mTextOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mButtonRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mCenterXP:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mCenterYP:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mWidth:I

    return-void
.end method

.method protected onStateChange([I)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setCenterX(I)V
    .locals 5

    invoke-virtual {p0}, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int v1, p1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, p1

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->setBounds(IIII)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setMode(I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->this$0:Lcom/htc/widget/HtcToggleButtonLight;

    #getter for: Lcom/htc/widget/HtcToggleButtonLight;->mAllBackgroundAssets:[Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/htc/widget/HtcToggleButtonLight;->access$1300(Lcom/htc/widget/HtcToggleButtonLight;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mButtonRest:Landroid/graphics/drawable/Drawable;

    :goto_0
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mButtonRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->initTextPaint(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->this$0:Lcom/htc/widget/HtcToggleButtonLight;

    #getter for: Lcom/htc/widget/HtcToggleButtonLight;->mAllBackgroundAssets:[Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/htc/widget/HtcToggleButtonLight;->access$1300(Lcom/htc/widget/HtcToggleButtonLight;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x5

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mButtonRest:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setScaleXY(F)V
    .locals 0

    iput p1, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mScale:F

    return-void
.end method

.method public setTextOff(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mTextOff:Ljava/lang/CharSequence;

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mTextOffYOffset:I

    return-void
.end method

.method public setTextOn(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mTextOn:Ljava/lang/CharSequence;

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcToggleButtonLight$RestTextDrawable;->mTextOnYOffset:I

    return-void
.end method
