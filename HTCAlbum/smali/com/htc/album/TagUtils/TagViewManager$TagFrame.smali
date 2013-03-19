.class public Lcom/htc/album/TagUtils/TagViewManager$TagFrame;
.super Landroid/view/View;
.source "TagViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TagUtils/TagViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TagFrame"
.end annotation


# instance fields
.field private mColor:I

.field private mContactID:Ljava/lang/String;

.field private mFaceID:Ljava/lang/String;

.field private mH:F

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mTagH:F

.field private mTagW:F

.field private mTagX:F

.field private mTagY:F

.field private mW:F

.field private mX:F

.field private mY:F

.field final synthetic this$0:Lcom/htc/album/TagUtils/TagViewManager;


# direct methods
.method public constructor <init>(Lcom/htc/album/TagUtils/TagViewManager;Landroid/content/Context;FFFFI)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->this$0:Lcom/htc/album/TagUtils/TagViewManager;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mTagX:F

    iput v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mTagY:F

    iput v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mTagW:F

    iput v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mTagH:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mColor:I

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mPath:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mPaint:Landroid/graphics/Paint;

    iput-object v4, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mFaceID:Ljava/lang/String;

    iput-object v4, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mContactID:Ljava/lang/String;

    iput p3, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mX:F

    iput p4, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mY:F

    iput p5, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mW:F

    iput p6, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mH:F

    iput p7, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mColor:I

    invoke-virtual {p0}, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    :cond_0
    iget v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mX:F

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mY:F

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mW:F

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mH:F

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x4040

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public getTagContactID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mContactID:Ljava/lang/String;

    return-object v0
.end method

.method public getTagH()F
    .locals 1

    iget v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mTagH:F

    return v0
.end method

.method public getTagID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mFaceID:Ljava/lang/String;

    return-object v0
.end method

.method public getTagW()F
    .locals 1

    iget v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mTagW:F

    return v0
.end method

.method public getTagX()F
    .locals 1

    iget v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mTagX:F

    return v0
.end method

.method public getTagY()F
    .locals 1

    iget v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mTagY:F

    return v0
.end method

.method public isConnectedToContact()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mContactID:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mContactID:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method public isSameContact(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mContactID:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mContactID:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    iget-object v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mContactID:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x0

    :cond_2
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mW:F

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mH:F

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mPath:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    iget-object v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public print()V
    .locals 3

    const-string v0, "TagViewManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][TagFrame][print]: percentCX: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mTagX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "TagViewManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][TagFrame][print]: percentCY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mTagY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "TagViewManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][TagFrame][print]: percentWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mTagW:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "TagViewManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][TagFrame][print]: percentHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mTagH:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "TagViewManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][TagFrame][print]: faceid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mFaceID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "TagViewManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][TagFrame][print]: contactid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mContactID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setConnectToContact(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mContactID:Ljava/lang/String;

    return-void
.end method

.method public setIdentifier(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mFaceID:Ljava/lang/String;

    iput-object p2, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mContactID:Ljava/lang/String;

    return-void
.end method

.method public setWH(FF)V
    .locals 0

    iput p1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mTagW:F

    iput p2, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mTagH:F

    return-void
.end method

.method public setXY(FF)V
    .locals 0

    iput p1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mTagX:F

    iput p2, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mTagY:F

    return-void
.end method

.method public updateColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public updateRect(FFFF)V
    .locals 2

    iput p1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mX:F

    iput p2, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mY:F

    iput p3, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mW:F

    iput p4, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mH:F

    invoke-virtual {p0}, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mX:F

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mY:F

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mW:F

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v1, p0, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->mH:F

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Lcom/htc/album/TagUtils/TagViewManager$TagFrame;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
