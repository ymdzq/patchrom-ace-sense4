.class public Lcom/htc/widget/CheckableHtcListItem;
.super Lcom/htc/widget/HtcListItem;
.source "CheckableHtcListItem.java"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field private mCheckBox:Lcom/htc/widget/HtcCheckBox;

.field private mMode:I

.field private mRadioButton:Lcom/htc/widget/HtcRadioButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/widget/CheckableHtcListItem;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/CheckableHtcListItem;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/CheckableHtcListItem;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v3, 0x0

    sget-object v1, Lcom/htc/R$styleable;->HtcListItem:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/CheckableHtcListItem;->mMode:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget v1, p0, Lcom/htc/widget/CheckableHtcListItem;->mMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iput v3, p0, Lcom/htc/widget/CheckableHtcListItem;->mMode:I

    :cond_0
    return-void
.end method

.method private setupAutomotiveMode()V
    .locals 8

    invoke-virtual {p0}, Lcom/htc/widget/CheckableHtcListItem;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    sget-object v5, Lcom/htc/R$styleable;->HtcListItem:[I

    const v6, 0x201003e

    const v7, 0x203008f

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v3, 0x0

    const v4, 0x208003b

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v1}, Lcom/htc/widget/CheckableHtcListItem;->setBackgroundResource(I)V

    const v3, 0x1020014

    invoke-virtual {p0, v3}, Lcom/htc/widget/CheckableHtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/htc/widget/HtcListItemSingleText;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/htc/widget/HtcListItemSingleText;

    const v3, 0x2030087

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItemSingleText;->setTextStyle(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/CheckableHtcListItem;->mCheckBox:Lcom/htc/widget/HtcCheckBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/CheckableHtcListItem;->mCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v0}, Lcom/htc/widget/HtcCheckBox;->isChecked()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/CheckableHtcListItem;->mRadioButton:Lcom/htc/widget/HtcRadioButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/CheckableHtcListItem;->mRadioButton:Lcom/htc/widget/HtcRadioButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcRadioButton;->isChecked()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    const/4 v2, 0x0

    const v1, 0x1020001

    invoke-virtual {p0, v1}, Lcom/htc/widget/CheckableHtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/htc/widget/HtcCheckBox;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/htc/widget/HtcCheckBox;

    iput-object v0, p0, Lcom/htc/widget/CheckableHtcListItem;->mCheckBox:Lcom/htc/widget/HtcCheckBox;

    iget-object v1, p0, Lcom/htc/widget/CheckableHtcListItem;->mCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcCheckBox;->setClickable(Z)V

    iget-object v1, p0, Lcom/htc/widget/CheckableHtcListItem;->mCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcCheckBox;->setFocusable(Z)V

    :cond_0
    :goto_0
    const/4 v1, 0x3

    iget v2, p0, Lcom/htc/widget/CheckableHtcListItem;->mMode:I

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lcom/htc/widget/CheckableHtcListItem;->setupAutomotiveMode()V

    :cond_1
    return-void

    :cond_2
    instance-of v1, v0, Lcom/htc/widget/HtcRadioButton;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/htc/widget/HtcRadioButton;

    iput-object v0, p0, Lcom/htc/widget/CheckableHtcListItem;->mRadioButton:Lcom/htc/widget/HtcRadioButton;

    iget-object v1, p0, Lcom/htc/widget/CheckableHtcListItem;->mRadioButton:Lcom/htc/widget/HtcRadioButton;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcRadioButton;->setClickable(Z)V

    iget-object v1, p0, Lcom/htc/widget/CheckableHtcListItem;->mRadioButton:Lcom/htc/widget/HtcRadioButton;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcRadioButton;->setFocusable(Z)V

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/CheckableHtcListItem;->mCheckBox:Lcom/htc/widget/HtcCheckBox;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/CheckableHtcListItem;->mCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/CheckableHtcListItem;->mRadioButton:Lcom/htc/widget/HtcRadioButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/CheckableHtcListItem;->mRadioButton:Lcom/htc/widget/HtcRadioButton;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcRadioButton;->setChecked(Z)V

    goto :goto_0
.end method

.method public toggle()V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/widget/CheckableHtcListItem;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/widget/CheckableHtcListItem;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
