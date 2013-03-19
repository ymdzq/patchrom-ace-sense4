.class Landroid/widget/HTCExtractEditText$ScaleDimDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "HtcEditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/HTCExtractEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleDimDrawable"
.end annotation


# instance fields
.field private mColor:I

.field private mFrontDrawable:Landroid/graphics/drawable/Drawable;

.field private mMutiplyDrawable:Landroid/graphics/drawable/Drawable;

.field private mOuterDrawable:Landroid/graphics/drawable/Drawable;

.field private mPorterDuffColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field final synthetic this$0:Landroid/widget/HTCExtractEditText;


# direct methods
.method public constructor <init>(Landroid/widget/HTCExtractEditText;Landroid/content/Context;)V
    .locals 4

    const v3, 0x2080175

    iput-object p1, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->this$0:Landroid/widget/HTCExtractEditText;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    #getter for: Landroid/widget/HTCExtractEditText;->mMode:I
    invoke-static {p1}, Landroid/widget/HTCExtractEditText;->access$200(Landroid/widget/HTCExtractEditText;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const v1, 0x208000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    const v1, 0x208000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mMutiplyDrawable:Landroid/graphics/drawable/Drawable;

    const v1, 0x208000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mFrontDrawable:Landroid/graphics/drawable/Drawable;

    #getter for: Landroid/widget/HTCExtractEditText;->DARK_PADDING_TOP:I
    invoke-static {p1}, Landroid/widget/HTCExtractEditText;->access$400(Landroid/widget/HTCExtractEditText;)I

    move-result v1

    #setter for: Landroid/widget/HTCExtractEditText;->mDefaultPaddingTop:I
    invoke-static {p1, v1}, Landroid/widget/HTCExtractEditText;->access$302(Landroid/widget/HTCExtractEditText;I)I

    #getter for: Landroid/widget/HTCExtractEditText;->DARK_PADDING_BOTTOM:I
    invoke-static {p1}, Landroid/widget/HTCExtractEditText;->access$600(Landroid/widget/HTCExtractEditText;)I

    move-result v1

    #setter for: Landroid/widget/HTCExtractEditText;->mDefaultPaddingBottom:I
    invoke-static {p1, v1}, Landroid/widget/HTCExtractEditText;->access$502(Landroid/widget/HTCExtractEditText;I)I

    :goto_0
    const-string v1, "multiply_color"

    const/high16 v2, 0x206

    invoke-static {p2, v1, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mColor:I

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget v2, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v1, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mPorterDuffColorFilter:Landroid/graphics/PorterDuffColorFilter;

    return-void

    :cond_0
    #getter for: Landroid/widget/HTCExtractEditText;->mMode:I
    invoke-static {p1}, Landroid/widget/HTCExtractEditText;->access$200(Landroid/widget/HTCExtractEditText;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const v1, 0x2080171

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    const v1, 0x2080172

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mMutiplyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mFrontDrawable:Landroid/graphics/drawable/Drawable;

    #getter for: Landroid/widget/HTCExtractEditText;->DARK_PADDING_TOP:I
    invoke-static {p1}, Landroid/widget/HTCExtractEditText;->access$400(Landroid/widget/HTCExtractEditText;)I

    move-result v1

    #setter for: Landroid/widget/HTCExtractEditText;->mDefaultPaddingTop:I
    invoke-static {p1, v1}, Landroid/widget/HTCExtractEditText;->access$302(Landroid/widget/HTCExtractEditText;I)I

    #getter for: Landroid/widget/HTCExtractEditText;->DARK_PADDING_BOTTOM:I
    invoke-static {p1}, Landroid/widget/HTCExtractEditText;->access$600(Landroid/widget/HTCExtractEditText;)I

    move-result v1

    #setter for: Landroid/widget/HTCExtractEditText;->mDefaultPaddingBottom:I
    invoke-static {p1, v1}, Landroid/widget/HTCExtractEditText;->access$502(Landroid/widget/HTCExtractEditText;I)I

    goto :goto_0

    :cond_1
    const v1, 0x2080173

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    const v1, 0x2080174

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mMutiplyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mFrontDrawable:Landroid/graphics/drawable/Drawable;

    #getter for: Landroid/widget/HTCExtractEditText;->BRIGHT_PADDING_TOP:I
    invoke-static {p1}, Landroid/widget/HTCExtractEditText;->access$700(Landroid/widget/HTCExtractEditText;)I

    move-result v1

    #setter for: Landroid/widget/HTCExtractEditText;->mDefaultPaddingTop:I
    invoke-static {p1, v1}, Landroid/widget/HTCExtractEditText;->access$302(Landroid/widget/HTCExtractEditText;I)I

    #getter for: Landroid/widget/HTCExtractEditText;->BRIGHT_PADDING_BOTTOM:I
    invoke-static {p1}, Landroid/widget/HTCExtractEditText;->access$800(Landroid/widget/HTCExtractEditText;)I

    move-result v1

    #setter for: Landroid/widget/HTCExtractEditText;->mDefaultPaddingBottom:I
    invoke-static {p1, v1}, Landroid/widget/HTCExtractEditText;->access$502(Landroid/widget/HTCExtractEditText;I)I

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->this$0:Landroid/widget/HTCExtractEditText;

    #getter for: Landroid/widget/HTCExtractEditText;->mIsDown:Z
    invoke-static {v0}, Landroid/widget/HTCExtractEditText;->access$900(Landroid/widget/HTCExtractEditText;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->this$0:Landroid/widget/HTCExtractEditText;

    invoke-virtual {v0}, Landroid/widget/HTCExtractEditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mMutiplyDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mPorterDuffColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mMutiplyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    iget-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mFrontDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_1
    iget-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mMutiplyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method getMutiplyDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mMutiplyDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    iget-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mFrontDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->this$0:Landroid/widget/HTCExtractEditText;

    #getter for: Landroid/widget/HTCExtractEditText;->mDefaultPaddingLeft:I
    invoke-static {v0}, Landroid/widget/HTCExtractEditText;->access$1200(Landroid/widget/HTCExtractEditText;)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->this$0:Landroid/widget/HTCExtractEditText;

    #getter for: Landroid/widget/HTCExtractEditText;->mDefaultPaddingTop:I
    invoke-static {v0}, Landroid/widget/HTCExtractEditText;->access$300(Landroid/widget/HTCExtractEditText;)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->this$0:Landroid/widget/HTCExtractEditText;

    #getter for: Landroid/widget/HTCExtractEditText;->mDefaultPaddingRight:I
    invoke-static {v0}, Landroid/widget/HTCExtractEditText;->access$1300(Landroid/widget/HTCExtractEditText;)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->this$0:Landroid/widget/HTCExtractEditText;

    #getter for: Landroid/widget/HTCExtractEditText;->mDefaultPaddingBottom:I
    invoke-static {v0}, Landroid/widget/HTCExtractEditText;->access$500(Landroid/widget/HTCExtractEditText;)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mMutiplyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mFrontDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected onStateChange([I)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v0

    return v0
.end method

.method public setAlpha(I)V
    .locals 2

    iget-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->this$0:Landroid/widget/HTCExtractEditText;

    const/4 v1, 0x1

    #setter for: Landroid/widget/HTCExtractEditText;->mIsUserSetAlpha:Z
    invoke-static {v0, v1}, Landroid/widget/HTCExtractEditText;->access$1002(Landroid/widget/HTCExtractEditText;Z)Z

    iget-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->this$0:Landroid/widget/HTCExtractEditText;

    #setter for: Landroid/widget/HTCExtractEditText;->mDrawableAlpha:I
    invoke-static {v0, p1}, Landroid/widget/HTCExtractEditText;->access$1102(Landroid/widget/HTCExtractEditText;I)I

    iget-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mMutiplyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mFrontDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method setDisableAlpha()V
    .locals 2

    iget-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->this$0:Landroid/widget/HTCExtractEditText;

    #getter for: Landroid/widget/HTCExtractEditText;->mDrawableDisableAlpha:I
    invoke-static {v0}, Landroid/widget/HTCExtractEditText;->access$1400(Landroid/widget/HTCExtractEditText;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->this$0:Landroid/widget/HTCExtractEditText;

    #getter for: Landroid/widget/HTCExtractEditText;->mDrawableAlpha:I
    invoke-static {v1}, Landroid/widget/HTCExtractEditText;->access$1100(Landroid/widget/HTCExtractEditText;)I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->this$0:Landroid/widget/HTCExtractEditText;

    #getter for: Landroid/widget/HTCExtractEditText;->mDrawableDisableAlpha:I
    invoke-static {v1}, Landroid/widget/HTCExtractEditText;->access$1400(Landroid/widget/HTCExtractEditText;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mMutiplyDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->this$0:Landroid/widget/HTCExtractEditText;

    #getter for: Landroid/widget/HTCExtractEditText;->mDrawableDisableAlpha:I
    invoke-static {v1}, Landroid/widget/HTCExtractEditText;->access$1400(Landroid/widget/HTCExtractEditText;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mFrontDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->this$0:Landroid/widget/HTCExtractEditText;

    #getter for: Landroid/widget/HTCExtractEditText;->mDrawableDisableAlpha:I
    invoke-static {v1}, Landroid/widget/HTCExtractEditText;->access$1400(Landroid/widget/HTCExtractEditText;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method setEnableAlpha()V
    .locals 2

    iget-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mOuterDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->this$0:Landroid/widget/HTCExtractEditText;

    #getter for: Landroid/widget/HTCExtractEditText;->mDrawableAlpha:I
    invoke-static {v1}, Landroid/widget/HTCExtractEditText;->access$1100(Landroid/widget/HTCExtractEditText;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mMutiplyDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->this$0:Landroid/widget/HTCExtractEditText;

    #getter for: Landroid/widget/HTCExtractEditText;->mDrawableAlpha:I
    invoke-static {v1}, Landroid/widget/HTCExtractEditText;->access$1100(Landroid/widget/HTCExtractEditText;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->mFrontDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/HTCExtractEditText$ScaleDimDrawable;->this$0:Landroid/widget/HTCExtractEditText;

    #getter for: Landroid/widget/HTCExtractEditText;->mDrawableAlpha:I
    invoke-static {v1}, Landroid/widget/HTCExtractEditText;->access$1100(Landroid/widget/HTCExtractEditText;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method
