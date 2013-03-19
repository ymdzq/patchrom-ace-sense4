.class public Lcom/htc/widget/QuickTips$TipAnchor;
.super Ljava/lang/Object;
.source "QuickTips.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/QuickTips;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TipAnchor"
.end annotation


# static fields
.field public static final ANCHOR_MODE_BOTTOM:I = 0x20

.field public static final ANCHOR_MODE_CENTER:I = 0x2

.field public static final ANCHOR_MODE_LEFT:I = 0x1

.field public static final ANCHOR_MODE_MIDDLE:I = 0x10

.field public static final ANCHOR_MODE_RIGHT:I = 0x4

.field public static final ANCHOR_MODE_TOP:I = 0x8


# instance fields
.field private anchorMode:I

.field private content:Lcom/htc/widget/QuickTips$TipItem;

.field private location:Landroid/graphics/Point;

.field private quickTips:Lcom/htc/widget/QuickTips;

.field private relativeLocation:Landroid/graphics/Point;

.field private targetItem:Lcom/htc/widget/QuickTips$TipItem;

.field private targetRect:Landroid/graphics/Rect;

.field private targetView:Landroid/view/View;

.field private targetViewId:I


# direct methods
.method public constructor <init>(Lcom/htc/widget/QuickTips;I)V
    .locals 2
    .parameter "quickTips"
    .parameter "targetViewId"

    .prologue
    .line 1378
    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/htc/widget/QuickTips$TipAnchor;-><init>(Lcom/htc/widget/QuickTips;IILandroid/graphics/Point;)V

    .line 1379
    return-void
.end method

.method public constructor <init>(Lcom/htc/widget/QuickTips;II)V
    .locals 1
    .parameter "quickTips"
    .parameter "targetViewId"
    .parameter "anchorMode"

    .prologue
    .line 1389
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/htc/widget/QuickTips$TipAnchor;-><init>(Lcom/htc/widget/QuickTips;IILandroid/graphics/Point;)V

    .line 1390
    return-void
.end method

.method public constructor <init>(Lcom/htc/widget/QuickTips;IILandroid/graphics/Point;)V
    .locals 1
    .parameter "quickTips"
    .parameter "targetViewId"
    .parameter "anchorMode"
    .parameter "relativeLocation"

    .prologue
    .line 1412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1413
    iput-object p1, p0, Lcom/htc/widget/QuickTips$TipAnchor;->quickTips:Lcom/htc/widget/QuickTips;

    .line 1414
    iput p2, p0, Lcom/htc/widget/QuickTips$TipAnchor;->targetViewId:I

    .line 1415
    iput p3, p0, Lcom/htc/widget/QuickTips$TipAnchor;->anchorMode:I

    .line 1416
    if-nez p4, :cond_0

    new-instance p4, Landroid/graphics/Point;

    .end local p4
    invoke-direct {p4}, Landroid/graphics/Point;-><init>()V

    :cond_0
    iput-object p4, p0, Lcom/htc/widget/QuickTips$TipAnchor;->relativeLocation:Landroid/graphics/Point;

    .line 1417
    #calls: Lcom/htc/widget/QuickTips;->getView(I)Landroid/view/View;
    invoke-static {p1, p2}, Lcom/htc/widget/QuickTips;->access$2200(Lcom/htc/widget/QuickTips;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/QuickTips$TipAnchor;->targetView:Landroid/view/View;

    .line 1418
    return-void
.end method

.method public constructor <init>(Lcom/htc/widget/QuickTips;ILandroid/graphics/Point;)V
    .locals 1
    .parameter "quickTips"
    .parameter "targetViewId"
    .parameter "relativeLocation"

    .prologue
    .line 1400
    const/16 v0, 0x9

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/htc/widget/QuickTips$TipAnchor;-><init>(Lcom/htc/widget/QuickTips;IILandroid/graphics/Point;)V

    .line 1401
    return-void
.end method

.method public constructor <init>(Lcom/htc/widget/QuickTips;Landroid/graphics/Point;)V
    .locals 3
    .parameter "quickTips"
    .parameter "absoluteLocation"

    .prologue
    .line 1369
    const/16 v0, -0x2710

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/htc/widget/QuickTips$TipAnchor;-><init>(Lcom/htc/widget/QuickTips;IILandroid/graphics/Point;)V

    .line 1370
    return-void
.end method

.method public constructor <init>(Lcom/htc/widget/QuickTips;Landroid/graphics/Rect;)V
    .locals 2
    .parameter "quickTips"
    .parameter "targetRect"

    .prologue
    .line 1475
    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/htc/widget/QuickTips$TipAnchor;-><init>(Lcom/htc/widget/QuickTips;Landroid/graphics/Rect;ILandroid/graphics/Point;)V

    .line 1476
    return-void
.end method

.method public constructor <init>(Lcom/htc/widget/QuickTips;Landroid/graphics/Rect;I)V
    .locals 1
    .parameter "quickTips"
    .parameter "targetRect"
    .parameter "anchorMode"

    .prologue
    .line 1486
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/htc/widget/QuickTips$TipAnchor;-><init>(Lcom/htc/widget/QuickTips;Landroid/graphics/Rect;ILandroid/graphics/Point;)V

    .line 1487
    return-void
.end method

.method public constructor <init>(Lcom/htc/widget/QuickTips;Landroid/graphics/Rect;ILandroid/graphics/Point;)V
    .locals 0
    .parameter "quickTips"
    .parameter "targetRect"
    .parameter "anchorMode"
    .parameter "relativeLocation"

    .prologue
    .line 1509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1510
    iput-object p1, p0, Lcom/htc/widget/QuickTips$TipAnchor;->quickTips:Lcom/htc/widget/QuickTips;

    .line 1511
    iput-object p2, p0, Lcom/htc/widget/QuickTips$TipAnchor;->targetRect:Landroid/graphics/Rect;

    .line 1512
    iput p3, p0, Lcom/htc/widget/QuickTips$TipAnchor;->anchorMode:I

    .line 1513
    if-nez p4, :cond_0

    new-instance p4, Landroid/graphics/Point;

    .end local p4
    invoke-direct {p4}, Landroid/graphics/Point;-><init>()V

    :cond_0
    iput-object p4, p0, Lcom/htc/widget/QuickTips$TipAnchor;->relativeLocation:Landroid/graphics/Point;

    .line 1514
    return-void
.end method

.method public constructor <init>(Lcom/htc/widget/QuickTips;Landroid/graphics/Rect;Landroid/graphics/Point;)V
    .locals 1
    .parameter "quickTips"
    .parameter "targetRect"
    .parameter "relativeLocation"

    .prologue
    .line 1498
    const/16 v0, 0x9

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/htc/widget/QuickTips$TipAnchor;-><init>(Lcom/htc/widget/QuickTips;Landroid/graphics/Rect;ILandroid/graphics/Point;)V

    .line 1499
    return-void
.end method

.method public constructor <init>(Lcom/htc/widget/QuickTips;Lcom/htc/widget/QuickTips$TipItem;)V
    .locals 2
    .parameter "quickTips"
    .parameter "targetItem"

    .prologue
    .line 1427
    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/htc/widget/QuickTips$TipAnchor;-><init>(Lcom/htc/widget/QuickTips;Lcom/htc/widget/QuickTips$TipItem;ILandroid/graphics/Point;)V

    .line 1428
    return-void
.end method

.method public constructor <init>(Lcom/htc/widget/QuickTips;Lcom/htc/widget/QuickTips$TipItem;I)V
    .locals 1
    .parameter "quickTips"
    .parameter "targetItem"
    .parameter "anchorMode"

    .prologue
    .line 1438
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/htc/widget/QuickTips$TipAnchor;-><init>(Lcom/htc/widget/QuickTips;Lcom/htc/widget/QuickTips$TipItem;ILandroid/graphics/Point;)V

    .line 1439
    return-void
.end method

.method public constructor <init>(Lcom/htc/widget/QuickTips;Lcom/htc/widget/QuickTips$TipItem;ILandroid/graphics/Point;)V
    .locals 0
    .parameter "quickTips"
    .parameter "targetItem"
    .parameter "anchorMode"
    .parameter "relativeLocation"

    .prologue
    .line 1461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1462
    iput-object p1, p0, Lcom/htc/widget/QuickTips$TipAnchor;->quickTips:Lcom/htc/widget/QuickTips;

    .line 1463
    iput-object p2, p0, Lcom/htc/widget/QuickTips$TipAnchor;->targetItem:Lcom/htc/widget/QuickTips$TipItem;

    .line 1464
    iput p3, p0, Lcom/htc/widget/QuickTips$TipAnchor;->anchorMode:I

    .line 1465
    if-nez p4, :cond_0

    new-instance p4, Landroid/graphics/Point;

    .end local p4
    invoke-direct {p4}, Landroid/graphics/Point;-><init>()V

    :cond_0
    iput-object p4, p0, Lcom/htc/widget/QuickTips$TipAnchor;->relativeLocation:Landroid/graphics/Point;

    .line 1466
    return-void
.end method

.method public constructor <init>(Lcom/htc/widget/QuickTips;Lcom/htc/widget/QuickTips$TipItem;Landroid/graphics/Point;)V
    .locals 1
    .parameter "quickTips"
    .parameter "targetItem"
    .parameter "relativeLocation"

    .prologue
    .line 1450
    const/16 v0, 0x9

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/htc/widget/QuickTips$TipAnchor;-><init>(Lcom/htc/widget/QuickTips;Lcom/htc/widget/QuickTips$TipItem;ILandroid/graphics/Point;)V

    .line 1451
    return-void
.end method

.method static synthetic access$1600(Lcom/htc/widget/QuickTips$TipAnchor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1322
    iget v0, p0, Lcom/htc/widget/QuickTips$TipAnchor;->targetViewId:I

    return v0
.end method

.method static synthetic access$1700(Lcom/htc/widget/QuickTips$TipAnchor;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1322
    iget-object v0, p0, Lcom/htc/widget/QuickTips$TipAnchor;->targetView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/htc/widget/QuickTips$TipAnchor;)Lcom/htc/widget/QuickTips;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1322
    iget-object v0, p0, Lcom/htc/widget/QuickTips$TipAnchor;->quickTips:Lcom/htc/widget/QuickTips;

    return-object v0
.end method

.method private setLocation(Landroid/graphics/Point;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 1517
    iput-object p1, p0, Lcom/htc/widget/QuickTips$TipAnchor;->location:Landroid/graphics/Point;

    .line 1518
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 1623
    iget v0, p0, Lcom/htc/widget/QuickTips$TipAnchor;->targetViewId:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/QuickTips$TipAnchor;->targetView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1624
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/QuickTips$TipAnchor;->targetView:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/widget/QuickTips$TipAnchor;->quickTips:Lcom/htc/widget/QuickTips;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1626
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/QuickTips$TipAnchor;->content:Lcom/htc/widget/QuickTips$TipItem;

    invoke-interface {v0}, Lcom/htc/widget/QuickTips$TipItem;->destroy()V

    .line 1627
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 1594
    const-string v1, "QuickTips"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1595
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/htc/widget/QuickTips$TipAnchor;->quickTips:Lcom/htc/widget/QuickTips;

    #calls: Lcom/htc/widget/QuickTips;->getPaint()Landroid/graphics/Paint;
    invoke-static {v1}, Lcom/htc/widget/QuickTips;->access$2300(Lcom/htc/widget/QuickTips;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 1596
    .local v0, p:Landroid/graphics/Paint;
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1597
    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1598
    iget-object v1, p0, Lcom/htc/widget/QuickTips$TipAnchor;->targetItem:Lcom/htc/widget/QuickTips$TipItem;

    if-eqz v1, :cond_2

    .line 1614
    .end local v0           #p:Landroid/graphics/Paint;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/widget/QuickTips$TipAnchor;->content:Lcom/htc/widget/QuickTips$TipItem;

    if-eqz v1, :cond_1

    .line 1615
    iget-object v1, p0, Lcom/htc/widget/QuickTips$TipAnchor;->content:Lcom/htc/widget/QuickTips$TipItem;

    invoke-interface {v1, p1}, Lcom/htc/widget/QuickTips$TipItem;->draw(Landroid/graphics/Canvas;)V

    .line 1617
    :cond_1
    return-void

    .line 1600
    .restart local v0       #p:Landroid/graphics/Paint;
    :cond_2
    iget-object v1, p0, Lcom/htc/widget/QuickTips$TipAnchor;->location:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/htc/widget/QuickTips$TipAnchor;->location:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    const/high16 v3, 0x4080

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1601
    iget-object v1, p0, Lcom/htc/widget/QuickTips$TipAnchor;->targetRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_3

    .line 1602
    const-string v1, "QuickTips"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "highlight rect="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/widget/QuickTips$TipAnchor;->targetRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    iget-object v1, p0, Lcom/htc/widget/QuickTips$TipAnchor;->targetRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1609
    :goto_1
    const v1, -0xff0001

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1610
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1611
    iget-object v1, p0, Lcom/htc/widget/QuickTips$TipAnchor;->location:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/htc/widget/QuickTips$TipAnchor;->location:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    const/high16 v3, 0x40a0

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 1605
    :cond_3
    const-string v1, "QuickTips"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "highlight rect ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/widget/QuickTips$TipAnchor;->quickTips:Lcom/htc/widget/QuickTips;

    iget v4, p0, Lcom/htc/widget/QuickTips$TipAnchor;->targetViewId:I

    iget-object v5, p0, Lcom/htc/widget/QuickTips$TipAnchor;->targetView:Landroid/view/View;

    #calls: Lcom/htc/widget/QuickTips;->getViewRect(ILandroid/view/View;)Landroid/graphics/Rect;
    invoke-static {v3, v4, v5}, Lcom/htc/widget/QuickTips;->access$1800(Lcom/htc/widget/QuickTips;ILandroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    iget-object v1, p0, Lcom/htc/widget/QuickTips$TipAnchor;->quickTips:Lcom/htc/widget/QuickTips;

    iget v2, p0, Lcom/htc/widget/QuickTips$TipAnchor;->targetViewId:I

    iget-object v3, p0, Lcom/htc/widget/QuickTips$TipAnchor;->targetView:Landroid/view/View;

    #calls: Lcom/htc/widget/QuickTips;->getViewRect(ILandroid/view/View;)Landroid/graphics/Rect;
    invoke-static {v1, v2, v3}, Lcom/htc/widget/QuickTips;->access$1800(Lcom/htc/widget/QuickTips;ILandroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public getLocation()Landroid/graphics/Point;
    .locals 10

    .prologue
    .line 1523
    iget-object v7, p0, Lcom/htc/widget/QuickTips$TipAnchor;->location:Landroid/graphics/Point;

    if-eqz v7, :cond_0

    .line 1524
    iget-object v7, p0, Lcom/htc/widget/QuickTips$TipAnchor;->location:Landroid/graphics/Point;

    .line 1578
    :goto_0
    return-object v7

    .line 1526
    :cond_0
    const/4 v5, 0x0

    .line 1527
    .local v5, x:I
    const/4 v6, 0x0

    .line 1528
    .local v6, y:I
    const/4 v4, 0x0

    .line 1529
    .local v4, w:I
    const/4 v0, 0x0

    .line 1530
    .local v0, h:I
    iget-object v2, p0, Lcom/htc/widget/QuickTips$TipAnchor;->relativeLocation:Landroid/graphics/Point;

    .line 1531
    .local v2, rloc:Landroid/graphics/Point;
    iget-object v7, p0, Lcom/htc/widget/QuickTips$TipAnchor;->targetItem:Lcom/htc/widget/QuickTips$TipItem;

    if-eqz v7, :cond_1

    .line 1532
    iget-object v7, p0, Lcom/htc/widget/QuickTips$TipAnchor;->targetItem:Lcom/htc/widget/QuickTips$TipItem;

    invoke-interface {v7}, Lcom/htc/widget/QuickTips$TipItem;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 1533
    .local v1, itemBounds:Landroid/graphics/Rect;
    iget v5, v1, Landroid/graphics/Rect;->left:I

    .line 1534
    iget v6, v1, Landroid/graphics/Rect;->top:I

    .line 1535
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 1536
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 1550
    .end local v1           #itemBounds:Landroid/graphics/Rect;
    :goto_1
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    iput-object v7, p0, Lcom/htc/widget/QuickTips$TipAnchor;->location:Landroid/graphics/Point;

    .line 1551
    iget v7, p0, Lcom/htc/widget/QuickTips$TipAnchor;->anchorMode:I

    and-int/lit8 v7, v7, 0x7

    packed-switch v7, :pswitch_data_0

    .line 1562
    :pswitch_0
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown anchor mode: 0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/widget/QuickTips$TipAnchor;->anchorMode:I

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1537
    :cond_1
    iget-object v7, p0, Lcom/htc/widget/QuickTips$TipAnchor;->targetRect:Landroid/graphics/Rect;

    if-eqz v7, :cond_2

    .line 1538
    iget-object v7, p0, Lcom/htc/widget/QuickTips$TipAnchor;->targetRect:Landroid/graphics/Rect;

    iget v5, v7, Landroid/graphics/Rect;->left:I

    .line 1539
    iget-object v7, p0, Lcom/htc/widget/QuickTips$TipAnchor;->targetRect:Landroid/graphics/Rect;

    iget v6, v7, Landroid/graphics/Rect;->top:I

    .line 1540
    iget-object v7, p0, Lcom/htc/widget/QuickTips$TipAnchor;->targetRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 1541
    iget-object v7, p0, Lcom/htc/widget/QuickTips$TipAnchor;->targetRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v0

    goto :goto_1

    .line 1543
    :cond_2
    iget-object v7, p0, Lcom/htc/widget/QuickTips$TipAnchor;->quickTips:Lcom/htc/widget/QuickTips;

    iget v8, p0, Lcom/htc/widget/QuickTips$TipAnchor;->targetViewId:I

    iget-object v9, p0, Lcom/htc/widget/QuickTips$TipAnchor;->targetView:Landroid/view/View;

    #calls: Lcom/htc/widget/QuickTips;->getViewRect(ILandroid/view/View;)Landroid/graphics/Rect;
    invoke-static {v7, v8, v9}, Lcom/htc/widget/QuickTips;->access$1800(Lcom/htc/widget/QuickTips;ILandroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    .line 1544
    .local v3, viewBounds:Landroid/graphics/Rect;
    iget v5, v3, Landroid/graphics/Rect;->left:I

    .line 1545
    iget v6, v3, Landroid/graphics/Rect;->top:I

    .line 1546
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 1547
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v0

    goto :goto_1

    .line 1553
    .end local v3           #viewBounds:Landroid/graphics/Rect;
    :pswitch_1
    iget-object v7, p0, Lcom/htc/widget/QuickTips$TipAnchor;->location:Landroid/graphics/Point;

    iget v8, v2, Landroid/graphics/Point;->x:I

    add-int/2addr v8, v5

    iput v8, v7, Landroid/graphics/Point;->x:I

    .line 1564
    :goto_2
    iget v7, p0, Lcom/htc/widget/QuickTips$TipAnchor;->anchorMode:I

    and-int/lit8 v7, v7, 0x38

    sparse-switch v7, :sswitch_data_0

    .line 1575
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown anchor mode: 0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/widget/QuickTips$TipAnchor;->anchorMode:I

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1556
    :pswitch_2
    iget-object v7, p0, Lcom/htc/widget/QuickTips$TipAnchor;->location:Landroid/graphics/Point;

    div-int/lit8 v8, v4, 0x2

    add-int/2addr v8, v5

    iget v9, v2, Landroid/graphics/Point;->x:I

    add-int/2addr v8, v9

    iput v8, v7, Landroid/graphics/Point;->x:I

    goto :goto_2

    .line 1559
    :pswitch_3
    iget-object v7, p0, Lcom/htc/widget/QuickTips$TipAnchor;->location:Landroid/graphics/Point;

    add-int v8, v5, v4

    iget v9, v2, Landroid/graphics/Point;->x:I

    add-int/2addr v8, v9

    iput v8, v7, Landroid/graphics/Point;->x:I

    goto :goto_2

    .line 1566
    :sswitch_0
    iget-object v7, p0, Lcom/htc/widget/QuickTips$TipAnchor;->location:Landroid/graphics/Point;

    iget v8, v2, Landroid/graphics/Point;->y:I

    add-int/2addr v8, v6

    iput v8, v7, Landroid/graphics/Point;->y:I

    .line 1577
    :goto_3
    iget-object v7, p0, Lcom/htc/widget/QuickTips$TipAnchor;->location:Landroid/graphics/Point;

    invoke-direct {p0, v7}, Lcom/htc/widget/QuickTips$TipAnchor;->setLocation(Landroid/graphics/Point;)V

    .line 1578
    iget-object v7, p0, Lcom/htc/widget/QuickTips$TipAnchor;->location:Landroid/graphics/Point;

    goto/16 :goto_0

    .line 1569
    :sswitch_1
    iget-object v7, p0, Lcom/htc/widget/QuickTips$TipAnchor;->location:Landroid/graphics/Point;

    div-int/lit8 v8, v0, 0x2

    add-int/2addr v8, v6

    iget v9, v2, Landroid/graphics/Point;->y:I

    add-int/2addr v8, v9

    iput v8, v7, Landroid/graphics/Point;->y:I

    goto :goto_3

    .line 1572
    :sswitch_2
    iget-object v7, p0, Lcom/htc/widget/QuickTips$TipAnchor;->location:Landroid/graphics/Point;

    add-int v8, v6, v0

    iget v9, v2, Landroid/graphics/Point;->y:I

    add-int/2addr v8, v9

    iput v8, v7, Landroid/graphics/Point;->y:I

    goto :goto_3

    .line 1551
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 1564
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x10 -> :sswitch_1
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method public setContent(Lcom/htc/widget/QuickTips$TipItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 1586
    iget-object v0, p0, Lcom/htc/widget/QuickTips$TipAnchor;->quickTips:Lcom/htc/widget/QuickTips;

    #calls: Lcom/htc/widget/QuickTips;->getPaint()Landroid/graphics/Paint;
    invoke-static {v0}, Lcom/htc/widget/QuickTips;->access$2300(Lcom/htc/widget/QuickTips;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/htc/widget/QuickTips$TipItem;->setPaint(Landroid/graphics/Paint;)V

    .line 1587
    invoke-interface {p1, p0}, Lcom/htc/widget/QuickTips$TipItem;->setAnchor(Lcom/htc/widget/QuickTips$TipAnchor;)V

    .line 1588
    iput-object p1, p0, Lcom/htc/widget/QuickTips$TipAnchor;->content:Lcom/htc/widget/QuickTips$TipItem;

    .line 1589
    return-void
.end method
