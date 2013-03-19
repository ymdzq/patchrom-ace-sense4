.class public Lcom/m0narx/tweaks/widgets/SeekBarPreference;
.super Lcom/htc/preference/HtcPreference;
.source "SeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/m0narx/tweaks/widgets/SeekBarPreference$SavedState;
    }
.end annotation


# instance fields
.field private mMax:I

.field private mProgress:I

.field private mTrackingTouch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/m0narx/tweaks/widgets/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/m0narx/tweaks/widgets/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v1, Landroid/R$styleable;->ProgressBar:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x2

    iget v2, p0, Lcom/m0narx/tweaks/widgets/SeekBarPreference;->mMax:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/widgets/SeekBarPreference;->setMax(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const v1, 0x7f03000b

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/widgets/SeekBarPreference;->setLayoutResource(I)V

    return-void
.end method

.method private getProgressDrawable(Landroid/widget/SeekBar;)Landroid/graphics/drawable/Drawable;
    .locals 7

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/SeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/SeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "common_progress_empty"

    const v6, 0x2080189

    invoke-static {v4, v5, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ClipDrawable;

    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/SeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/SeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "common_progress_full"

    const v6, 0x208018a

    invoke-static {v4, v5, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, 0x1

    invoke-direct {v1, v3, v4, v5}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    const/high16 v3, 0x102

    invoke-virtual {v2, v3, v0}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    const v3, 0x102000d

    invoke-virtual {v2, v3, v1}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    return-object v2
.end method

.method private getProgressThumb()Landroid/graphics/drawable/Drawable;
    .locals 4

    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/SeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/SeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "common_progress_button"

    const v3, 0x2080188

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private setProgress(IZ)V
    .locals 1

    iget v0, p0, Lcom/m0narx/tweaks/widgets/SeekBarPreference;->mMax:I

    if-le p1, v0, :cond_0

    iget p1, p0, Lcom/m0narx/tweaks/widgets/SeekBarPreference;->mMax:I

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    :cond_1
    iget v0, p0, Lcom/m0narx/tweaks/widgets/SeekBarPreference;->mProgress:I

    if-eq p1, v0, :cond_2

    iput p1, p0, Lcom/m0narx/tweaks/widgets/SeekBarPreference;->mProgress:I

    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/widgets/SeekBarPreference;->persistInt(I)Z

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/SeekBarPreference;->notifyChanged()V

    :cond_2
    return-void
.end method


# virtual methods
.method public getProgress()I
    .locals 1

    iget v0, p0, Lcom/m0narx/tweaks/widgets/SeekBarPreference;->mProgress:I

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreference;->onBindView(Landroid/view/View;)V

    const v2, 0x7f08001e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/SeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x2050001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v1, v0, v4, v0, v4}, Landroid/widget/SeekBar;->setPadding(IIII)V

    invoke-direct {p0, v1}, Lcom/m0narx/tweaks/widgets/SeekBarPreference;->getProgressDrawable(Landroid/widget/SeekBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/m0narx/tweaks/widgets/SeekBarPreference;->getProgressThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget v2, p0, Lcom/m0narx/tweaks/widgets/SeekBarPreference;->mMax:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    iget v2, p0, Lcom/m0narx/tweaks/widgets/SeekBarPreference;->mProgress:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/SeekBarPreference;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_1

    const/16 v0, 0x51

    if-eq p2, v0, :cond_0

    const/16 v0, 0x46

    if-ne p2, v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/SeekBarPreference;->getProgress()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/widgets/SeekBarPreference;->setProgress(I)V

    :cond_1
    :goto_0
    return v1

    :cond_2
    const/16 v0, 0x45

    if-ne p2, v0, :cond_1

    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/SeekBarPreference;->getProgress()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/widgets/SeekBarPreference;->setProgress(I)V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    if-eqz p3, :cond_0

    iget-boolean v0, p0, Lcom/m0narx/tweaks/widgets/SeekBarPreference;->mTrackingTouch:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/widgets/SeekBarPreference;->syncProgress(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/m0narx/tweaks/widgets/SeekBarPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/m0narx/tweaks/widgets/SeekBarPreference$SavedState;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/widgets/SeekBarPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/htc/preference/HtcPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v1, v0, Lcom/m0narx/tweaks/widgets/SeekBarPreference$SavedState;->progress:I

    iput v1, p0, Lcom/m0narx/tweaks/widgets/SeekBarPreference;->mProgress:I

    iget v1, v0, Lcom/m0narx/tweaks/widgets/SeekBarPreference$SavedState;->max:I

    iput v1, p0, Lcom/m0narx/tweaks/widgets/SeekBarPreference;->mMax:I

    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/SeekBarPreference;->notifyChanged()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Lcom/htc/preference/HtcPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/SeekBarPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/m0narx/tweaks/widgets/SeekBarPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/m0narx/tweaks/widgets/SeekBarPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v2, p0, Lcom/m0narx/tweaks/widgets/SeekBarPreference;->mProgress:I

    iput v2, v0, Lcom/m0narx/tweaks/widgets/SeekBarPreference$SavedState;->progress:I

    iget v2, p0, Lcom/m0narx/tweaks/widgets/SeekBarPreference;->mMax:I

    iput v2, v0, Lcom/m0narx/tweaks/widgets/SeekBarPreference$SavedState;->max:I

    move-object v1, v0

    :cond_0
    return-object v1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/m0narx/tweaks/widgets/SeekBarPreference;->mProgress:I

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/widgets/SeekBarPreference;->getPersistedInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/widgets/SeekBarPreference;->setProgress(I)V

    :goto_0
    return-void

    :cond_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/widgets/SeekBarPreference;->setProgress(I)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/m0narx/tweaks/widgets/SeekBarPreference;->mTrackingTouch:Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/m0narx/tweaks/widgets/SeekBarPreference;->mTrackingTouch:Z

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/m0narx/tweaks/widgets/SeekBarPreference;->mProgress:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/widgets/SeekBarPreference;->syncProgress(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method

.method public setMax(I)V
    .locals 1

    iget v0, p0, Lcom/m0narx/tweaks/widgets/SeekBarPreference;->mMax:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/m0narx/tweaks/widgets/SeekBarPreference;->mMax:I

    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/SeekBarPreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setProgress(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/m0narx/tweaks/widgets/SeekBarPreference;->setProgress(IZ)V

    return-void
.end method

.method syncProgress(Landroid/widget/SeekBar;)V
    .locals 2

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/m0narx/tweaks/widgets/SeekBarPreference;->mProgress:I

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/widgets/SeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/m0narx/tweaks/widgets/SeekBarPreference;->mProgress:I

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/m0narx/tweaks/widgets/SeekBarPreference;->setProgress(IZ)V

    goto :goto_0
.end method
