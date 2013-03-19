.class public Lcom/htc/album/TagUtils/TagViewManager$TagView;
.super Landroid/widget/RelativeLayout;
.source "TagViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TagUtils/TagViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TagView"
.end annotation


# instance fields
.field private mContactID:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mImageHeight:I

.field private mImageWidth:I

.field private mTagH:F

.field private mTagID:Ljava/lang/String;

.field private mTagName:Ljava/lang/String;

.field private mTagView:Lcom/htc/widget/HtcRimButton;

.field private mTagW:F

.field private mTagX:F

.field private mTagY:F

.field private mTextWidth:I

.field final synthetic this$0:Lcom/htc/album/TagUtils/TagViewManager;


# direct methods
.method public constructor <init>(Lcom/htc/album/TagUtils/TagViewManager;Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->this$0:Lcom/htc/album/TagUtils/TagViewManager;

    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagView:Lcom/htc/widget/HtcRimButton;

    iput v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagX:F

    iput v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagY:F

    iput v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagW:F

    iput v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagH:F

    iput-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagName:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagID:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mContactID:Ljava/lang/String;

    iput v2, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTextWidth:I

    iput v2, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mImageWidth:I

    iput v2, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mImageHeight:I

    iput-object p2, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mContext:Landroid/content/Context;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagID:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTagContactID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mContactID:Ljava/lang/String;

    return-object v0
.end method

.method public getTagH()F
    .locals 1

    iget v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagH:F

    return v0
.end method

.method public getTagID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagID:Ljava/lang/String;

    return-object v0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagName:Ljava/lang/String;

    return-object v0
.end method

.method public getTagPressView()Landroid/view/View;
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagView:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setLongClickable(Z)V

    iget-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagView:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setClickable(Z)V

    iget-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagView:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setPressed(Z)V

    iget-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagView:Lcom/htc/widget/HtcRimButton;

    return-object v0
.end method

.method public getTagRestView()Landroid/view/View;
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagView:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setLongClickable(Z)V

    iget-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagView:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setClickable(Z)V

    iget-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagView:Lcom/htc/widget/HtcRimButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setPressed(Z)V

    iget-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagView:Lcom/htc/widget/HtcRimButton;

    return-object v0
.end method

.method public getTagW()F
    .locals 1

    iget v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagW:F

    return v0
.end method

.method public getTagX()F
    .locals 1

    iget v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagX:F

    return v0
.end method

.method public getTagY()F
    .locals 1

    iget v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagY:F

    return v0
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;FF)Z
    .locals 10

    const/4 v3, 0x1

    const/4 v9, -0x2

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v3, v4

    :goto_0
    return v3

    :cond_1
    iput-object p1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagName:Ljava/lang/String;

    iput-object p2, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagID:Ljava/lang/String;

    iput p3, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagX:F

    iput p4, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagY:F

    iget-object v5, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagName:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/htc/album/TagUtils/TagViewManager;->measureStringWidth(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTextWidth:I

    iget v5, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTextWidth:I

    iget-object v6, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->this$0:Lcom/htc/album/TagUtils/TagViewManager;

    #getter for: Lcom/htc/album/TagUtils/TagViewManager;->TAG_TEXT_OFFSET_WIDTH:I
    invoke-static {v6}, Lcom/htc/album/TagUtils/TagViewManager;->access$000(Lcom/htc/album/TagUtils/TagViewManager;)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mImageWidth:I

    iget-object v5, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mContext:Landroid/content/Context;

    const-string v6, "TagViewManager"

    invoke-static {v5, v6}, Lcom/htc/album/TagUtils/TagViewManager;->measureRimBtnHeight(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mImageHeight:I

    new-instance v5, Lcom/htc/widget/HtcRimButton;

    iget-object v6, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v3, v3}, Lcom/htc/widget/HtcRimButton;-><init>(Landroid/content/Context;IZ)V

    iput-object v5, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagView:Lcom/htc/widget/HtcRimButton;

    iget-object v5, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagView:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v5}, Lcom/htc/widget/HtcRimButton;->setSingleLine()V

    iget-object v5, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagView:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v5, p1}, Lcom/htc/widget/HtcRimButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagView:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v5, v4}, Lcom/htc/widget/HtcRimButton;->setClickable(Z)V

    iget-object v5, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagView:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v5, v4}, Lcom/htc/widget/HtcRimButton;->setLongClickable(Z)V

    iget-object v5, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagView:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v5, v4}, Lcom/htc/widget/HtcRimButton;->setPressed(Z)V

    iget-object v5, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagView:Lcom/htc/widget/HtcRimButton;

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcRimButton;->setGravity(I)V

    new-instance v2, Lcom/htc/album/TagUtils/TagInfo;

    iget-object v5, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagName:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagID:Ljava/lang/String;

    iget v7, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagX:F

    iget v8, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagY:F

    invoke-direct {v2, v5, v6, v7, v8}, Lcom/htc/album/TagUtils/TagInfo;-><init>(Ljava/lang/String;Ljava/lang/String;FF)V

    invoke-virtual {v2, p0}, Lcom/htc/album/TagUtils/TagInfo;->setHost(Landroid/view/View;)V

    iget-object v5, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagView:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v5, v2}, Lcom/htc/widget/HtcRimButton;->setTag(Ljava/lang/Object;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v5, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mImageWidth:I

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v5, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mImageHeight:I

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v5, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagView:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v5, v0}, Lcom/htc/widget/HtcRimButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagView:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {p0, v5}, Lcom/htc/album/TagUtils/TagViewManager$TagView;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v4, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mImageWidth:I

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v4, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mImageHeight:I

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v1}, Lcom/htc/album/TagUtils/TagViewManager$TagView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v4, "TagViewManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][TagViewManager][init]: ImageView W:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", H: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "TagViewManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][TagViewManager][init]: RelativeLayout W:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", H: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public isSameContact(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mContactID:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mContactID:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    iget-object v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mContactID:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    :cond_2
    return v0
.end method

.method public setIdentifier(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagName:Ljava/lang/String;

    iput-object p2, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mContactID:Ljava/lang/String;

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagView:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcRimButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setPos(FF)V
    .locals 2

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    float-to-int v1, p1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    float-to-int v1, p2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mImageWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mImageHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Lcom/htc/album/TagUtils/TagViewManager$TagView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setTagBackgroundPress()V
    .locals 2

    iget-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagView:Lcom/htc/widget/HtcRimButton;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagView:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {p0}, Lcom/htc/album/TagUtils/TagViewManager$TagView;->getTagPressView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setTagBackgroundRest()V
    .locals 2

    iget-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagView:Lcom/htc/widget/HtcRimButton;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagView:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {p0}, Lcom/htc/album/TagUtils/TagViewManager$TagView;->getTagRestView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setWH(FF)V
    .locals 0

    iput p1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagW:F

    iput p2, p0, Lcom/htc/album/TagUtils/TagViewManager$TagView;->mTagH:F

    return-void
.end method
