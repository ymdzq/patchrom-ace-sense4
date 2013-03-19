.class public Lcom/htc/widget/QuickTips$TipText;
.super Lcom/htc/widget/QuickTips$AbstractTipItem;
.source "QuickTips.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/QuickTips;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TipText"
.end annotation


# static fields
.field public static final ALIGN_CENTER:I = 0x1

.field public static final ALIGN_LEFT:I = 0x0

.field public static final ALIGN_RIGHT:I = 0x2


# instance fields
.field private align:I

.field private renderedCache:Landroid/graphics/Bitmap;

.field private text:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "text"
    .parameter "width"

    .prologue
    .line 1808
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/htc/widget/QuickTips$TipText;-><init>(Ljava/lang/String;II)V

    .line 1809
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter "text"
    .parameter "align"
    .parameter "width"

    .prologue
    .line 1815
    invoke-direct {p0}, Lcom/htc/widget/QuickTips$AbstractTipItem;-><init>()V

    .line 1816
    iput-object p1, p0, Lcom/htc/widget/QuickTips$TipText;->text:Ljava/lang/String;

    .line 1817
    iput p2, p0, Lcom/htc/widget/QuickTips$TipText;->align:I

    .line 1818
    iput p3, p0, Lcom/htc/widget/QuickTips$TipText;->width:I

    .line 1819
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 1894
    iget-object v0, p0, Lcom/htc/widget/QuickTips$TipText;->renderedCache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1895
    iget-object v0, p0, Lcom/htc/widget/QuickTips$TipText;->renderedCache:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1897
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    .line 1864
    invoke-virtual {p0}, Lcom/htc/widget/QuickTips$TipText;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1865
    .local v0, bounds:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/htc/widget/QuickTips$TipText;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    .line 1866
    .local v3, paint:Landroid/graphics/Paint;
    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    .line 1867
    .local v1, fm:Landroid/graphics/Paint$FontMetrics;
    iget v4, v0, Landroid/graphics/Rect;->left:I

    .line 1868
    .local v4, x:I
    iget v5, v0, Landroid/graphics/Rect;->top:I

    .line 1870
    .local v5, y:I
    iget-object v6, p0, Lcom/htc/widget/QuickTips$TipText;->renderedCache:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_0

    .line 1871
    iget-object v6, p0, Lcom/htc/widget/QuickTips$TipText;->renderedCache:Landroid/graphics/Bitmap;

    iget v7, v0, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    iget v8, v0, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    invoke-virtual {p1, v6, v7, v8, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1874
    :cond_0
    const-string v6, "QuickTips"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1875
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 1876
    .local v2, p:Landroid/graphics/Paint;
    const/16 v6, -0x100

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1877
    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1878
    iget v5, v0, Landroid/graphics/Rect;->top:I

    .line 1879
    const-string v6, "QuickTips"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "tips rect="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1880
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1882
    new-instance v2, Landroid/graphics/Paint;

    .end local v2           #p:Landroid/graphics/Paint;
    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 1883
    .restart local v2       #p:Landroid/graphics/Paint;
    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1884
    const v6, -0xff01

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1885
    iget v6, v0, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget v7, v0, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    const/high16 v8, 0x4000

    invoke-virtual {p1, v6, v7, v8, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1886
    const-string v6, "QuickTips"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "tips descript="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/widget/QuickTips$TipText;->text:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    .end local v2           #p:Landroid/graphics/Paint;
    :cond_1
    return-void
.end method

.method public setAnchor(Lcom/htc/widget/QuickTips$TipAnchor;)V
    .locals 9
    .parameter "anchor"

    .prologue
    const/4 v5, -0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1824
    invoke-virtual {p1}, Lcom/htc/widget/QuickTips$TipAnchor;->getLocation()Landroid/graphics/Point;

    move-result-object v1

    .line 1825
    .local v1, location:Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/htc/widget/QuickTips$TipText;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    .line 1826
    .local v2, paint:Landroid/graphics/Paint;
    const/4 v0, 0x0

    .line 1828
    .local v0, height:I
    new-instance v3, Landroid/widget/TextView;

    #getter for: Lcom/htc/widget/QuickTips$TipAnchor;->quickTips:Lcom/htc/widget/QuickTips;
    invoke-static {p1}, Lcom/htc/widget/QuickTips$TipAnchor;->access$2500(Lcom/htc/widget/QuickTips$TipAnchor;)Lcom/htc/widget/QuickTips;

    move-result-object v4

    #getter for: Lcom/htc/widget/QuickTips;->host:Landroid/app/Activity;
    invoke-static {v4}, Lcom/htc/widget/QuickTips;->access$300(Lcom/htc/widget/QuickTips;)Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1829
    .local v3, renderer:Landroid/widget/TextView;
    invoke-virtual {v3, v6, v6, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1830
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 1831
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 1832
    iget-object v4, p0, Lcom/htc/widget/QuickTips$TipText;->text:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1833
    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1834
    invoke-virtual {v2}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1835
    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    invoke-virtual {v3, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1837
    iget v4, p0, Lcom/htc/widget/QuickTips$TipText;->width:I

    if-lez v4, :cond_0

    .line 1838
    iget v4, p0, Lcom/htc/widget/QuickTips$TipText;->width:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1839
    iget v4, p0, Lcom/htc/widget/QuickTips$TipText;->width:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 1842
    :cond_0
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setDrawingCacheEnabled(Z)V

    .line 1843
    iget v4, p0, Lcom/htc/widget/QuickTips$TipText;->width:I

    if-lez v4, :cond_2

    iget v4, p0, Lcom/htc/widget/QuickTips$TipText;->width:I

    :goto_0
    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->measure(II)V

    .line 1844
    iget v4, p0, Lcom/htc/widget/QuickTips$TipText;->width:I

    if-lez v4, :cond_3

    iget v4, p0, Lcom/htc/widget/QuickTips$TipText;->width:I

    :goto_1
    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {v3, v6, v6, v4, v0}, Landroid/widget/TextView;->layout(IIII)V

    .line 1847
    iget v4, p0, Lcom/htc/widget/QuickTips$TipText;->align:I

    packed-switch v4, :pswitch_data_0

    .line 1856
    :cond_1
    :goto_2
    invoke-virtual {v3}, Landroid/widget/TextView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/widget/QuickTips$TipText;->renderedCache:Landroid/graphics/Bitmap;

    .line 1858
    new-instance v4, Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Point;->x:I

    iget v6, v1, Landroid/graphics/Point;->y:I

    iget v7, v1, Landroid/graphics/Point;->x:I

    iget v8, p0, Lcom/htc/widget/QuickTips$TipText;->width:I

    add-int/2addr v7, v8

    iget v8, v1, Landroid/graphics/Point;->y:I

    add-int/2addr v8, v0

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v4}, Lcom/htc/widget/QuickTips$TipText;->setBounds(Landroid/graphics/Rect;)V

    .line 1859
    return-void

    :cond_2
    move v4, v5

    .line 1843
    goto :goto_0

    .line 1844
    :cond_3
    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    iput v4, p0, Lcom/htc/widget/QuickTips$TipText;->width:I

    goto :goto_1

    .line 1849
    :pswitch_0
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_2

    .line 1852
    :pswitch_1
    invoke-virtual {v3}, Landroid/widget/TextView;->getLineCount()I

    move-result v4

    if-ne v4, v7, :cond_1

    .line 1853
    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_2

    .line 1847
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
