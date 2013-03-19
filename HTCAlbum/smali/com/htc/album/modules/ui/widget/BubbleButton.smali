.class public Lcom/htc/album/modules/ui/widget/BubbleButton;
.super Lcom/htc/album/modules/ui/widget/ControlButton;
.source "BubbleButton.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/album/modules/ui/widget/ControlButton",
        "<",
        "Lcom/htc/widget/HtcListItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mImage:Lcom/htc/widget/HtcListItemColorIcon;

.field private mImageBitmap:Landroid/graphics/Bitmap;

.field private mImageDrawable:Landroid/graphics/drawable/Drawable;

.field private mImageResource:I

.field private mText:Lcom/htc/widget/HtcListItem2LineText;

.field private mTextResource:I

.field private mTextString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/album/modules/ui/widget/BubbleButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/modules/ui/widget/BubbleButton;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/htc/widget/HtcListItem;III)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/album/modules/ui/widget/ControlButton;-><init>(Landroid/view/View;III)V

    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mImage:Lcom/htc/widget/HtcListItemColorIcon;

    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mText:Lcom/htc/widget/HtcListItem2LineText;

    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mTextString:Ljava/lang/String;

    iput v1, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mTextResource:I

    iput v1, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mImageResource:I

    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mImageBitmap:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public getContentView()Lcom/htc/widget/HtcListItem;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButton:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/HtcListItem;

    return-object v0
.end method

.method public loadDataToView(Lcom/htc/album/modules/ui/widget/BubbleButton;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mTextString:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mTextString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/htc/album/modules/ui/widget/BubbleButton;->setTextString(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/htc/album/modules/ui/widget/BubbleButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mTextResource:I

    invoke-virtual {p1, v0}, Lcom/htc/album/modules/ui/widget/BubbleButton;->setTextResource(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mImageBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mImageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Lcom/htc/album/modules/ui/widget/BubbleButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mImageResource:I

    invoke-virtual {p1, v0}, Lcom/htc/album/modules/ui/widget/BubbleButton;->setImageResource(I)V

    goto :goto_0
.end method

.method public loadDataToView(Lcom/htc/widget/HtcListItem;)V
    .locals 2

    const v0, 0x7f09000b

    invoke-virtual {p1, v0}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItemColorIcon;

    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mImage:Lcom/htc/widget/HtcListItemColorIcon;

    const v0, 0x7f09000c

    invoke-virtual {p1, v0}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mText:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mText:Lcom/htc/widget/HtcListItem2LineText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mText:Lcom/htc/widget/HtcListItem2LineText;

    const v1, 0x2030016

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextStyle(I)V

    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mTextString:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mText:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mTextString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/htc/album/modules/ui/widget/BubbleButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    invoke-virtual {p1, p0}, Lcom/htc/widget/HtcListItem;->setTag(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mText:Lcom/htc/widget/HtcListItem2LineText;

    iget v1, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mTextResource:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mImageBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mImageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/htc/album/modules/ui/widget/BubbleButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mImageResource:I

    invoke-virtual {p0, v0}, Lcom/htc/album/modules/ui/widget/BubbleButton;->setImageResource(I)V

    goto :goto_1
.end method

.method public setContentView(Lcom/htc/widget/HtcListItem;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButton:Landroid/view/View;

    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButton:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/HtcListItem;

    const v1, 0x7f09000b

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItemColorIcon;

    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mImage:Lcom/htc/widget/HtcListItemColorIcon;

    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButton:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/HtcListItem;

    const v1, 0x7f09000c

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mText:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mText:Lcom/htc/widget/HtcListItem2LineText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mText:Lcom/htc/widget/HtcListItem2LineText;

    const v1, 0x2030016

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextStyle(I)V

    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButton:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcListItem;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0, p0}, Lcom/htc/album/modules/ui/widget/BubbleButton;->loadDataToView(Lcom/htc/album/modules/ui/widget/BubbleButton;)V

    goto :goto_0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    iput-object p1, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mImageBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mImage:Lcom/htc/widget/HtcListItemColorIcon;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mImage:Lcom/htc/widget/HtcListItemColorIcon;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mImage:Lcom/htc/widget/HtcListItemColorIcon;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemColorIcon;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mImage:Lcom/htc/widget/HtcListItemColorIcon;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemColorIcon;->setVisibility(I)V

    goto :goto_0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iput-object p1, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mImage:Lcom/htc/widget/HtcListItemColorIcon;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mImage:Lcom/htc/widget/HtcListItemColorIcon;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mImage:Lcom/htc/widget/HtcListItemColorIcon;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemColorIcon;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mImage:Lcom/htc/widget/HtcListItemColorIcon;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemColorIcon;->setVisibility(I)V

    goto :goto_0
.end method

.method public setImageResource(I)V
    .locals 2

    iput p1, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mImageResource:I

    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mImage:Lcom/htc/widget/HtcListItemColorIcon;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mImage:Lcom/htc/widget/HtcListItemColorIcon;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageResource(I)V

    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mImage:Lcom/htc/widget/HtcListItemColorIcon;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemColorIcon;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mImage:Lcom/htc/widget/HtcListItemColorIcon;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemColorIcon;->setVisibility(I)V

    goto :goto_0
.end method

.method public setTextResource(I)V
    .locals 1

    if-gtz p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mText:Lcom/htc/widget/HtcListItem2LineText;

    if-nez v0, :cond_1

    iput p1, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mTextResource:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    goto :goto_0
.end method

.method public setTextString(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mText:Lcom/htc/widget/HtcListItem2LineText;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mTextString:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BubbleButton;->mText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_0
.end method
