.class public Lcom/htc/widget/QuickTips$Tips;
.super Ljava/lang/Object;
.source "QuickTips.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/QuickTips;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tips"
.end annotation


# instance fields
.field private anchors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/widget/QuickTips$TipAnchor;",
            ">;"
        }
    .end annotation
.end field

.field private bounds:Landroid/graphics/Rect;

.field private marginRatio:F

.field private quickTips:Lcom/htc/widget/QuickTips;


# direct methods
.method public constructor <init>(Lcom/htc/widget/QuickTips;)V
    .locals 1
    .parameter "quickTips"

    .prologue
    .line 648
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 644
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/widget/QuickTips$Tips;->marginRatio:F

    .line 649
    iput-object p1, p0, Lcom/htc/widget/QuickTips$Tips;->quickTips:Lcom/htc/widget/QuickTips;

    .line 650
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/QuickTips$Tips;->anchors:Ljava/util/List;

    .line 651
    return-void
.end method

.method static synthetic access$1000(Lcom/htc/widget/QuickTips$Tips;)Lcom/htc/widget/QuickTips$Tips;
    .locals 1
    .parameter "x0"

    .prologue
    .line 640
    invoke-direct {p0}, Lcom/htc/widget/QuickTips$Tips;->clear()Lcom/htc/widget/QuickTips$Tips;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/widget/QuickTips$Tips;Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 640
    invoke-direct {p0, p1}, Lcom/htc/widget/QuickTips$Tips;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/htc/widget/QuickTips$Tips;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 640
    iget-object v0, p0, Lcom/htc/widget/QuickTips$Tips;->bounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/widget/QuickTips$Tips;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 640
    iget-object v0, p0, Lcom/htc/widget/QuickTips$Tips;->anchors:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/widget/QuickTips$Tips;IIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 640
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/widget/QuickTips$Tips;->setBounds(IIII)V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/widget/QuickTips$Tips;F)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 640
    invoke-direct {p0, p1}, Lcom/htc/widget/QuickTips$Tips;->setMarginRatio(F)V

    return-void
.end method

.method private addAnchor(Lcom/htc/widget/QuickTips$TipAnchor;)Lcom/htc/widget/QuickTips$TipAnchor;
    .locals 1
    .parameter "anchor"

    .prologue
    .line 654
    iget-object v0, p0, Lcom/htc/widget/QuickTips$Tips;->anchors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 657
    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private addArrow(Landroid/graphics/Rect;Landroid/graphics/Rect;II)Lcom/htc/widget/QuickTips$TipArrow;
    .locals 13
    .parameter "screen"
    .parameter "targetRect"
    .parameter "targetViewId"
    .parameter "arrowGap"

    .prologue
    .line 1067
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    .line 1068
    .local v8, targetCenterX:I
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    .line 1069
    .local v9, targetCenterY:I
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    .line 1070
    .local v6, screenCenterX:I
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    .line 1071
    .local v7, screenCenterY:I
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v10

    if-le v10, v6, :cond_0

    const/4 v5, 0x1

    .line 1072
    .local v5, largeTarget:Z
    :goto_0
    const/4 v2, 0x0

    .line 1073
    .local v2, arrow:Lcom/htc/widget/QuickTips$TipArrow;
    if-ge v8, v6, :cond_a

    .line 1074
    if-ge v9, v7, :cond_5

    .line 1076
    if-eqz v5, :cond_1

    const/4 v10, 0x2

    :goto_1
    or-int/lit8 v3, v10, 0x20

    .line 1077
    .local v3, arrowAnchorMode:I
    if-eqz v5, :cond_2

    const/16 v4, 0x5a

    .line 1079
    .local v4, arrowDegree:I
    :goto_2
    const/4 v1, 0x0

    .line 1080
    .local v1, anchor:Lcom/htc/widget/QuickTips$TipAnchor;
    if-lez p3, :cond_3

    .line 1081
    new-instance v10, Landroid/graphics/Point;

    const/4 v11, 0x0

    move/from16 v0, p4

    invoke-direct {v10, v11, v0}, Landroid/graphics/Point;-><init>(II)V

    move/from16 v0, p3

    invoke-virtual {p0, v0, v3, v10}, Lcom/htc/widget/QuickTips$Tips;->addAnchor(IILandroid/graphics/Point;)Lcom/htc/widget/QuickTips$TipAnchor;

    move-result-object v1

    .line 1087
    :goto_3
    new-instance v2, Lcom/htc/widget/QuickTips$TipArrow;

    .end local v2           #arrow:Lcom/htc/widget/QuickTips$TipArrow;
    invoke-direct {v2, v4}, Lcom/htc/widget/QuickTips$TipArrow;-><init>(I)V

    .restart local v2       #arrow:Lcom/htc/widget/QuickTips$TipArrow;
    invoke-virtual {v1, v2}, Lcom/htc/widget/QuickTips$TipAnchor;->setContent(Lcom/htc/widget/QuickTips$TipItem;)V

    .line 1134
    :goto_4
    return-object v2

    .line 1071
    .end local v1           #anchor:Lcom/htc/widget/QuickTips$TipAnchor;
    .end local v2           #arrow:Lcom/htc/widget/QuickTips$TipArrow;
    .end local v3           #arrowAnchorMode:I
    .end local v4           #arrowDegree:I
    .end local v5           #largeTarget:Z
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 1076
    .restart local v2       #arrow:Lcom/htc/widget/QuickTips$TipArrow;
    .restart local v5       #largeTarget:Z
    :cond_1
    const/4 v10, 0x4

    goto :goto_1

    .line 1077
    .restart local v3       #arrowAnchorMode:I
    :cond_2
    const/16 v4, 0x87

    goto :goto_2

    .line 1082
    .restart local v1       #anchor:Lcom/htc/widget/QuickTips$TipAnchor;
    .restart local v4       #arrowDegree:I
    :cond_3
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v10

    if-lez v10, :cond_4

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v10

    if-lez v10, :cond_4

    .line 1083
    new-instance v10, Landroid/graphics/Point;

    const/4 v11, 0x0

    move/from16 v0, p4

    invoke-direct {v10, v11, v0}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, p2, v3, v10}, Lcom/htc/widget/QuickTips$Tips;->addAnchor(Landroid/graphics/Rect;ILandroid/graphics/Point;)Lcom/htc/widget/QuickTips$TipAnchor;

    move-result-object v1

    goto :goto_3

    .line 1085
    :cond_4
    new-instance v10, Landroid/graphics/Point;

    iget v11, p2, Landroid/graphics/Rect;->left:I

    iget v12, p2, Landroid/graphics/Rect;->top:I

    invoke-direct {v10, v11, v12}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v10}, Lcom/htc/widget/QuickTips$Tips;->addAnchor(Landroid/graphics/Point;)Lcom/htc/widget/QuickTips$TipAnchor;

    move-result-object v1

    goto :goto_3

    .line 1090
    .end local v1           #anchor:Lcom/htc/widget/QuickTips$TipAnchor;
    .end local v3           #arrowAnchorMode:I
    .end local v4           #arrowDegree:I
    :cond_5
    if-eqz v5, :cond_6

    const/4 v10, 0x2

    :goto_5
    or-int/lit8 v3, v10, 0x8

    .line 1091
    .restart local v3       #arrowAnchorMode:I
    if-eqz v5, :cond_7

    const/16 v4, 0x10e

    .line 1093
    .restart local v4       #arrowDegree:I
    :goto_6
    const/4 v1, 0x0

    .line 1094
    .restart local v1       #anchor:Lcom/htc/widget/QuickTips$TipAnchor;
    if-lez p3, :cond_8

    .line 1095
    new-instance v10, Landroid/graphics/Point;

    const/4 v11, 0x0

    move/from16 v0, p4

    neg-int v12, v0

    invoke-direct {v10, v11, v12}, Landroid/graphics/Point;-><init>(II)V

    move/from16 v0, p3

    invoke-virtual {p0, v0, v3, v10}, Lcom/htc/widget/QuickTips$Tips;->addAnchor(IILandroid/graphics/Point;)Lcom/htc/widget/QuickTips$TipAnchor;

    move-result-object v1

    .line 1101
    :goto_7
    new-instance v2, Lcom/htc/widget/QuickTips$TipArrow;

    .end local v2           #arrow:Lcom/htc/widget/QuickTips$TipArrow;
    invoke-direct {v2, v4}, Lcom/htc/widget/QuickTips$TipArrow;-><init>(I)V

    .restart local v2       #arrow:Lcom/htc/widget/QuickTips$TipArrow;
    invoke-virtual {v1, v2}, Lcom/htc/widget/QuickTips$TipAnchor;->setContent(Lcom/htc/widget/QuickTips$TipItem;)V

    goto :goto_4

    .line 1090
    .end local v1           #anchor:Lcom/htc/widget/QuickTips$TipAnchor;
    .end local v3           #arrowAnchorMode:I
    .end local v4           #arrowDegree:I
    :cond_6
    const/4 v10, 0x4

    goto :goto_5

    .line 1091
    .restart local v3       #arrowAnchorMode:I
    :cond_7
    const/16 v4, 0xe1

    goto :goto_6

    .line 1096
    .restart local v1       #anchor:Lcom/htc/widget/QuickTips$TipAnchor;
    .restart local v4       #arrowDegree:I
    :cond_8
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v10

    if-lez v10, :cond_9

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v10

    if-lez v10, :cond_9

    .line 1097
    new-instance v10, Landroid/graphics/Point;

    const/4 v11, 0x0

    move/from16 v0, p4

    neg-int v12, v0

    invoke-direct {v10, v11, v12}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, p2, v3, v10}, Lcom/htc/widget/QuickTips$Tips;->addAnchor(Landroid/graphics/Rect;ILandroid/graphics/Point;)Lcom/htc/widget/QuickTips$TipAnchor;

    move-result-object v1

    goto :goto_7

    .line 1099
    :cond_9
    new-instance v10, Landroid/graphics/Point;

    iget v11, p2, Landroid/graphics/Rect;->left:I

    iget v12, p2, Landroid/graphics/Rect;->top:I

    invoke-direct {v10, v11, v12}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v10}, Lcom/htc/widget/QuickTips$Tips;->addAnchor(Landroid/graphics/Point;)Lcom/htc/widget/QuickTips$TipAnchor;

    move-result-object v1

    goto :goto_7

    .line 1104
    .end local v1           #anchor:Lcom/htc/widget/QuickTips$TipAnchor;
    .end local v3           #arrowAnchorMode:I
    .end local v4           #arrowDegree:I
    :cond_a
    if-ge v9, v7, :cond_f

    .line 1106
    if-eqz v5, :cond_b

    const/4 v10, 0x2

    :goto_8
    or-int/lit8 v3, v10, 0x20

    .line 1107
    .restart local v3       #arrowAnchorMode:I
    if-eqz v5, :cond_c

    const/16 v4, 0x5a

    .line 1109
    .restart local v4       #arrowDegree:I
    :goto_9
    const/4 v1, 0x0

    .line 1110
    .restart local v1       #anchor:Lcom/htc/widget/QuickTips$TipAnchor;
    if-lez p3, :cond_d

    .line 1111
    new-instance v10, Landroid/graphics/Point;

    const/4 v11, 0x0

    move/from16 v0, p4

    invoke-direct {v10, v11, v0}, Landroid/graphics/Point;-><init>(II)V

    move/from16 v0, p3

    invoke-virtual {p0, v0, v3, v10}, Lcom/htc/widget/QuickTips$Tips;->addAnchor(IILandroid/graphics/Point;)Lcom/htc/widget/QuickTips$TipAnchor;

    move-result-object v1

    .line 1117
    :goto_a
    new-instance v2, Lcom/htc/widget/QuickTips$TipArrow;

    .end local v2           #arrow:Lcom/htc/widget/QuickTips$TipArrow;
    invoke-direct {v2, v4}, Lcom/htc/widget/QuickTips$TipArrow;-><init>(I)V

    .restart local v2       #arrow:Lcom/htc/widget/QuickTips$TipArrow;
    invoke-virtual {v1, v2}, Lcom/htc/widget/QuickTips$TipAnchor;->setContent(Lcom/htc/widget/QuickTips$TipItem;)V

    goto/16 :goto_4

    .line 1106
    .end local v1           #anchor:Lcom/htc/widget/QuickTips$TipAnchor;
    .end local v3           #arrowAnchorMode:I
    .end local v4           #arrowDegree:I
    :cond_b
    const/4 v10, 0x1

    goto :goto_8

    .line 1107
    .restart local v3       #arrowAnchorMode:I
    :cond_c
    const/16 v4, 0x2d

    goto :goto_9

    .line 1112
    .restart local v1       #anchor:Lcom/htc/widget/QuickTips$TipAnchor;
    .restart local v4       #arrowDegree:I
    :cond_d
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v10

    if-lez v10, :cond_e

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v10

    if-lez v10, :cond_e

    .line 1113
    new-instance v10, Landroid/graphics/Point;

    const/4 v11, 0x0

    move/from16 v0, p4

    invoke-direct {v10, v11, v0}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, p2, v3, v10}, Lcom/htc/widget/QuickTips$Tips;->addAnchor(Landroid/graphics/Rect;ILandroid/graphics/Point;)Lcom/htc/widget/QuickTips$TipAnchor;

    move-result-object v1

    goto :goto_a

    .line 1115
    :cond_e
    new-instance v10, Landroid/graphics/Point;

    iget v11, p2, Landroid/graphics/Rect;->left:I

    iget v12, p2, Landroid/graphics/Rect;->top:I

    invoke-direct {v10, v11, v12}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v10}, Lcom/htc/widget/QuickTips$Tips;->addAnchor(Landroid/graphics/Point;)Lcom/htc/widget/QuickTips$TipAnchor;

    move-result-object v1

    goto :goto_a

    .line 1120
    .end local v1           #anchor:Lcom/htc/widget/QuickTips$TipAnchor;
    .end local v3           #arrowAnchorMode:I
    .end local v4           #arrowDegree:I
    :cond_f
    if-eqz v5, :cond_10

    const/4 v10, 0x2

    :goto_b
    or-int/lit8 v3, v10, 0x8

    .line 1121
    .restart local v3       #arrowAnchorMode:I
    if-eqz v5, :cond_11

    const/16 v4, 0x10e

    .line 1123
    .restart local v4       #arrowDegree:I
    :goto_c
    const/4 v1, 0x0

    .line 1124
    .restart local v1       #anchor:Lcom/htc/widget/QuickTips$TipAnchor;
    if-lez p3, :cond_12

    .line 1125
    new-instance v10, Landroid/graphics/Point;

    const/4 v11, 0x0

    move/from16 v0, p4

    neg-int v12, v0

    invoke-direct {v10, v11, v12}, Landroid/graphics/Point;-><init>(II)V

    move/from16 v0, p3

    invoke-virtual {p0, v0, v3, v10}, Lcom/htc/widget/QuickTips$Tips;->addAnchor(IILandroid/graphics/Point;)Lcom/htc/widget/QuickTips$TipAnchor;

    move-result-object v1

    .line 1131
    :goto_d
    new-instance v2, Lcom/htc/widget/QuickTips$TipArrow;

    .end local v2           #arrow:Lcom/htc/widget/QuickTips$TipArrow;
    invoke-direct {v2, v4}, Lcom/htc/widget/QuickTips$TipArrow;-><init>(I)V

    .restart local v2       #arrow:Lcom/htc/widget/QuickTips$TipArrow;
    invoke-virtual {v1, v2}, Lcom/htc/widget/QuickTips$TipAnchor;->setContent(Lcom/htc/widget/QuickTips$TipItem;)V

    goto/16 :goto_4

    .line 1120
    .end local v1           #anchor:Lcom/htc/widget/QuickTips$TipAnchor;
    .end local v3           #arrowAnchorMode:I
    .end local v4           #arrowDegree:I
    :cond_10
    const/4 v10, 0x1

    goto :goto_b

    .line 1121
    .restart local v3       #arrowAnchorMode:I
    :cond_11
    const/16 v4, 0x13b

    goto :goto_c

    .line 1126
    .restart local v1       #anchor:Lcom/htc/widget/QuickTips$TipAnchor;
    .restart local v4       #arrowDegree:I
    :cond_12
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v10

    if-lez v10, :cond_13

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v10

    if-lez v10, :cond_13

    .line 1127
    new-instance v10, Landroid/graphics/Point;

    const/4 v11, 0x0

    move/from16 v0, p4

    neg-int v12, v0

    invoke-direct {v10, v11, v12}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, p2, v3, v10}, Lcom/htc/widget/QuickTips$Tips;->addAnchor(Landroid/graphics/Rect;ILandroid/graphics/Point;)Lcom/htc/widget/QuickTips$TipAnchor;

    move-result-object v1

    goto :goto_d

    .line 1129
    :cond_13
    new-instance v10, Landroid/graphics/Point;

    iget v11, p2, Landroid/graphics/Rect;->left:I

    iget v12, p2, Landroid/graphics/Rect;->top:I

    invoke-direct {v10, v11, v12}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v10}, Lcom/htc/widget/QuickTips$Tips;->addAnchor(Landroid/graphics/Point;)Lcom/htc/widget/QuickTips$TipAnchor;

    move-result-object v1

    goto :goto_d
.end method

.method private addText(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/htc/widget/QuickTips$TipArrow;IIILjava/lang/String;)Lcom/htc/widget/QuickTips$TipItem;
    .locals 11
    .parameter "screen"
    .parameter "targetRect"
    .parameter "arrow"
    .parameter "textGap"
    .parameter "textWidth"
    .parameter "textAlign"
    .parameter "text"

    .prologue
    .line 1137
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    .line 1138
    .local v6, targetCenterX:I
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    .line 1139
    .local v7, targetCenterY:I
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    .line 1140
    .local v4, screenCenterX:I
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    .line 1141
    .local v5, screenCenterY:I
    invoke-static {}, Lcom/htc/widget/QuickTips;->access$000()I

    move-result v8

    invoke-static {}, Lcom/htc/widget/QuickTips;->access$100()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-static {}, Lcom/htc/widget/QuickTips;->access$2000()I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lcom/htc/widget/QuickTips$Tips;->marginRatio:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    sub-int v2, v8, v9

    .line 1142
    .local v2, TextWidth:I
    new-instance v3, Lcom/htc/widget/QuickTips$TipText;

    move-object/from16 v0, p7

    move/from16 v1, p6

    invoke-direct {v3, v0, v1, v2}, Lcom/htc/widget/QuickTips$TipText;-><init>(Ljava/lang/String;II)V

    .line 1143
    .local v3, item:Lcom/htc/widget/QuickTips$TipText;
    if-ge v6, v4, :cond_1

    .line 1144
    if-ge v7, v5, :cond_0

    .line 1145
    const/16 v8, 0x24

    new-instance v9, Landroid/graphics/Point;

    const/4 v10, 0x0

    invoke-direct {v9, p4, v10}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, p3, v8, v9}, Lcom/htc/widget/QuickTips$Tips;->addAnchor(Lcom/htc/widget/QuickTips$TipItem;ILandroid/graphics/Point;)Lcom/htc/widget/QuickTips$TipAnchor;

    move-result-object v8

    const/16 v9, 0xa

    invoke-virtual {v3, v9}, Lcom/htc/widget/QuickTips$TipText;->originate(I)Lcom/htc/widget/QuickTips$TipItem;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/htc/widget/QuickTips$TipAnchor;->setContent(Lcom/htc/widget/QuickTips$TipItem;)V

    .line 1160
    :goto_0
    return-object v3

    .line 1148
    :cond_0
    const/16 v8, 0xc

    new-instance v9, Landroid/graphics/Point;

    const/4 v10, 0x0

    invoke-direct {v9, p4, v10}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, p3, v8, v9}, Lcom/htc/widget/QuickTips$Tips;->addAnchor(Lcom/htc/widget/QuickTips$TipItem;ILandroid/graphics/Point;)Lcom/htc/widget/QuickTips$TipAnchor;

    move-result-object v8

    const/16 v9, 0x22

    invoke-virtual {v3, v9}, Lcom/htc/widget/QuickTips$TipText;->originate(I)Lcom/htc/widget/QuickTips$TipItem;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/htc/widget/QuickTips$TipAnchor;->setContent(Lcom/htc/widget/QuickTips$TipItem;)V

    goto :goto_0

    .line 1152
    :cond_1
    if-ge v7, v5, :cond_2

    .line 1153
    const/16 v8, 0x21

    new-instance v9, Landroid/graphics/Point;

    const/4 v10, 0x0

    invoke-direct {v9, p4, v10}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, p3, v8, v9}, Lcom/htc/widget/QuickTips$Tips;->addAnchor(Lcom/htc/widget/QuickTips$TipItem;ILandroid/graphics/Point;)Lcom/htc/widget/QuickTips$TipAnchor;

    move-result-object v8

    const/16 v9, 0xa

    invoke-virtual {v3, v9}, Lcom/htc/widget/QuickTips$TipText;->originate(I)Lcom/htc/widget/QuickTips$TipItem;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/htc/widget/QuickTips$TipAnchor;->setContent(Lcom/htc/widget/QuickTips$TipItem;)V

    goto :goto_0

    .line 1156
    :cond_2
    const/16 v8, 0x9

    new-instance v9, Landroid/graphics/Point;

    const/4 v10, 0x0

    invoke-direct {v9, p4, v10}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, p3, v8, v9}, Lcom/htc/widget/QuickTips$Tips;->addAnchor(Lcom/htc/widget/QuickTips$TipItem;ILandroid/graphics/Point;)Lcom/htc/widget/QuickTips$TipAnchor;

    move-result-object v8

    const/16 v9, 0x22

    invoke-virtual {v3, v9}, Lcom/htc/widget/QuickTips$TipText;->originate(I)Lcom/htc/widget/QuickTips$TipItem;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/htc/widget/QuickTips$TipAnchor;->setContent(Lcom/htc/widget/QuickTips$TipItem;)V

    goto :goto_0
.end method

.method private addTip(Landroid/graphics/Rect;IIIIILjava/lang/String;)Lcom/htc/widget/QuickTips$TipItem;
    .locals 8
    .parameter "targetRect"
    .parameter "targetViewId"
    .parameter "arrowGap"
    .parameter "textGap"
    .parameter "textWidth"
    .parameter "textAlign"
    .parameter "text"

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/htc/widget/QuickTips$Tips;->quickTips:Lcom/htc/widget/QuickTips;

    const/16 v2, -0x2710

    #calls: Lcom/htc/widget/QuickTips;->getViewRect(I)Landroid/graphics/Rect;
    invoke-static {v0, v2}, Lcom/htc/widget/QuickTips;->access$1900(Lcom/htc/widget/QuickTips;I)Landroid/graphics/Rect;

    move-result-object v1

    .line 1042
    .local v1, screen:Landroid/graphics/Rect;
    if-nez p1, :cond_0

    .line 1043
    if-ltz p2, :cond_1

    .line 1044
    iget-object v0, p0, Lcom/htc/widget/QuickTips$Tips;->quickTips:Lcom/htc/widget/QuickTips;

    #calls: Lcom/htc/widget/QuickTips;->getViewRect(I)Landroid/graphics/Rect;
    invoke-static {v0, p2}, Lcom/htc/widget/QuickTips;->access$1900(Lcom/htc/widget/QuickTips;I)Landroid/graphics/Rect;

    move-result-object p1

    .line 1049
    :cond_0
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/htc/widget/QuickTips$Tips;->addArrow(Landroid/graphics/Rect;Landroid/graphics/Rect;II)Lcom/htc/widget/QuickTips$TipArrow;

    move-result-object v3

    .local v3, arrow:Lcom/htc/widget/QuickTips$TipArrow;
    move-object v0, p0

    move-object v2, p1

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    .line 1050
    invoke-direct/range {v0 .. v7}, Lcom/htc/widget/QuickTips$Tips;->addText(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/htc/widget/QuickTips$TipArrow;IIILjava/lang/String;)Lcom/htc/widget/QuickTips$TipItem;

    move-result-object v0

    return-object v0

    .line 1046
    .end local v3           #arrow:Lcom/htc/widget/QuickTips$TipArrow;
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Please provide a rectangle or view id at least to highlight"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private addTip(Landroid/graphics/Rect;ILjava/lang/String;Z)Lcom/htc/widget/QuickTips$TipItem;
    .locals 20
    .parameter "targetRect"
    .parameter "targetViewId"
    .parameter "text"
    .parameter "withArrow"

    .prologue
    .line 933
    const-string v15, "QuickTips"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "add Tips: rect pass from AP side"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/QuickTips$Tips;->quickTips:Lcom/htc/widget/QuickTips;

    const/16 v16, -0x2710

    #calls: Lcom/htc/widget/QuickTips;->getViewRect(I)Landroid/graphics/Rect;
    invoke-static/range {v15 .. v16}, Lcom/htc/widget/QuickTips;->access$1900(Lcom/htc/widget/QuickTips;I)Landroid/graphics/Rect;

    move-result-object v9

    .line 936
    .local v9, screen:Landroid/graphics/Rect;
    if-nez p1, :cond_0

    .line 937
    if-ltz p2, :cond_1

    .line 938
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/QuickTips$Tips;->quickTips:Lcom/htc/widget/QuickTips;

    move/from16 v0, p2

    #calls: Lcom/htc/widget/QuickTips;->getViewRect(I)Landroid/graphics/Rect;
    invoke-static {v15, v0}, Lcom/htc/widget/QuickTips;->access$1900(Lcom/htc/widget/QuickTips;I)Landroid/graphics/Rect;

    move-result-object p1

    .line 944
    :cond_0
    const/4 v7, 0x0

    .line 946
    .local v7, arrowGap:I
    invoke-static {}, Lcom/htc/widget/QuickTips;->access$100()I

    move-result v14

    .line 948
    .local v14, textMargin:I
    invoke-static {}, Lcom/htc/widget/QuickTips;->access$000()I

    move-result v15

    invoke-static {}, Lcom/htc/widget/QuickTips;->access$100()I

    move-result v16

    sub-int v15, v15, v16

    invoke-static {}, Lcom/htc/widget/QuickTips;->access$2000()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/QuickTips$Tips;->marginRatio:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    sub-int v4, v15, v16

    .line 949
    .local v4, TextWidth:I
    const/4 v3, 0x0

    .line 952
    .local v3, AlignDirection:I
    const/4 v6, 0x0

    .line 953
    .local v6, arrowBounds:Landroid/graphics/Rect;
    if-eqz p4, :cond_2

    .line 954
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v9, v1, v2, v7}, Lcom/htc/widget/QuickTips$Tips;->addArrow(Landroid/graphics/Rect;Landroid/graphics/Rect;II)Lcom/htc/widget/QuickTips$TipArrow;

    move-result-object v5

    .line 955
    .local v5, arrow:Lcom/htc/widget/QuickTips$TipArrow;
    invoke-virtual {v5}, Lcom/htc/widget/QuickTips$TipArrow;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 961
    .end local v5           #arrow:Lcom/htc/widget/QuickTips$TipArrow;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v12

    .line 962
    .local v12, targetCenterX:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerY()I

    move-result v13

    .line 963
    .local v13, targetCenterY:I
    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    .line 964
    .local v10, screenCenterX:I
    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v11

    .line 965
    .local v11, screenCenterY:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v15

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    if-le v15, v0, :cond_3

    .line 967
    invoke-static {}, Lcom/htc/widget/QuickTips;->access$2100()I

    move-result v15

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/QuickTips$Tips;->marginRatio:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    float-to-int v14, v15

    .line 968
    invoke-static {}, Lcom/htc/widget/QuickTips;->access$000()I

    move-result v15

    invoke-static {}, Lcom/htc/widget/QuickTips;->access$2100()I

    move-result v16

    mul-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/QuickTips$Tips;->marginRatio:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    sub-int v4, v15, v16

    .line 976
    :goto_1
    if-ge v12, v10, :cond_6

    .line 977
    if-ge v13, v11, :cond_5

    .line 979
    new-instance v8, Lcom/htc/widget/QuickTips$TipText;

    move-object/from16 v0, p3

    invoke-direct {v8, v0, v3, v4}, Lcom/htc/widget/QuickTips$TipText;-><init>(Ljava/lang/String;II)V

    .line 980
    .local v8, item:Lcom/htc/widget/QuickTips$TipText;
    new-instance v15, Landroid/graphics/Rect;

    const/16 v16, 0x0

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    move/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v15, v0, v1, v14, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v16, 0x24

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/htc/widget/QuickTips$Tips;->addAnchor(Landroid/graphics/Rect;I)Lcom/htc/widget/QuickTips$TipAnchor;

    move-result-object v15

    invoke-virtual {v15, v8}, Lcom/htc/widget/QuickTips$TipAnchor;->setContent(Lcom/htc/widget/QuickTips$TipItem;)V

    .line 1001
    :goto_2
    return-object v8

    .line 940
    .end local v3           #AlignDirection:I
    .end local v4           #TextWidth:I
    .end local v6           #arrowBounds:Landroid/graphics/Rect;
    .end local v7           #arrowGap:I
    .end local v8           #item:Lcom/htc/widget/QuickTips$TipText;
    .end local v10           #screenCenterX:I
    .end local v11           #screenCenterY:I
    .end local v12           #targetCenterX:I
    .end local v13           #targetCenterY:I
    .end local v14           #textMargin:I
    :cond_1
    new-instance v15, Ljava/lang/RuntimeException;

    const-string v16, "Please provide a rectangle or view id at least to highlight"

    invoke-direct/range {v15 .. v16}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 958
    .restart local v3       #AlignDirection:I
    .restart local v4       #TextWidth:I
    .restart local v6       #arrowBounds:Landroid/graphics/Rect;
    .restart local v7       #arrowGap:I
    .restart local v14       #textMargin:I
    :cond_2
    new-instance v6, Landroid/graphics/Rect;

    .end local v6           #arrowBounds:Landroid/graphics/Rect;
    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .restart local v6       #arrowBounds:Landroid/graphics/Rect;
    goto/16 :goto_0

    .line 971
    .restart local v10       #screenCenterX:I
    .restart local v11       #screenCenterY:I
    .restart local v12       #targetCenterX:I
    .restart local v13       #targetCenterY:I
    :cond_3
    if-ge v12, v10, :cond_4

    .line 972
    const/4 v3, 0x0

    goto :goto_1

    .line 974
    :cond_4
    const/4 v3, 0x2

    goto :goto_1

    .line 984
    :cond_5
    new-instance v8, Lcom/htc/widget/QuickTips$TipText;

    move-object/from16 v0, p3

    invoke-direct {v8, v0, v3, v4}, Lcom/htc/widget/QuickTips$TipText;-><init>(Ljava/lang/String;II)V

    .line 985
    .restart local v8       #item:Lcom/htc/widget/QuickTips$TipText;
    new-instance v15, Landroid/graphics/Rect;

    const/16 v16, 0x0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v15, v0, v1, v14, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v16, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/htc/widget/QuickTips$Tips;->addAnchor(Landroid/graphics/Rect;I)Lcom/htc/widget/QuickTips$TipAnchor;

    move-result-object v15

    const/16 v16, 0x21

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Lcom/htc/widget/QuickTips$TipText;->originate(I)Lcom/htc/widget/QuickTips$TipItem;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/htc/widget/QuickTips$TipAnchor;->setContent(Lcom/htc/widget/QuickTips$TipItem;)V

    goto :goto_2

    .line 989
    .end local v8           #item:Lcom/htc/widget/QuickTips$TipText;
    :cond_6
    if-ge v13, v11, :cond_7

    .line 991
    new-instance v8, Lcom/htc/widget/QuickTips$TipText;

    move-object/from16 v0, p3

    invoke-direct {v8, v0, v3, v4}, Lcom/htc/widget/QuickTips$TipText;-><init>(Ljava/lang/String;II)V

    .line 992
    .restart local v8       #item:Lcom/htc/widget/QuickTips$TipText;
    new-instance v15, Landroid/graphics/Rect;

    iget v0, v9, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    sub-int v16, v16, v14

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    iget v0, v9, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    invoke-direct/range {v15 .. v19}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v16, 0x21

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/htc/widget/QuickTips$Tips;->addAnchor(Landroid/graphics/Rect;I)Lcom/htc/widget/QuickTips$TipAnchor;

    move-result-object v15

    const/16 v16, 0xc

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Lcom/htc/widget/QuickTips$TipText;->originate(I)Lcom/htc/widget/QuickTips$TipItem;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/htc/widget/QuickTips$TipAnchor;->setContent(Lcom/htc/widget/QuickTips$TipItem;)V

    goto :goto_2

    .line 996
    .end local v8           #item:Lcom/htc/widget/QuickTips$TipText;
    :cond_7
    new-instance v8, Lcom/htc/widget/QuickTips$TipText;

    move-object/from16 v0, p3

    invoke-direct {v8, v0, v3, v4}, Lcom/htc/widget/QuickTips$TipText;-><init>(Ljava/lang/String;II)V

    .line 997
    .restart local v8       #item:Lcom/htc/widget/QuickTips$TipText;
    new-instance v15, Landroid/graphics/Rect;

    iget v0, v9, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    sub-int v16, v16, v14

    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    iget v0, v9, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    invoke-direct/range {v15 .. v19}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v16, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/htc/widget/QuickTips$Tips;->addAnchor(Landroid/graphics/Rect;I)Lcom/htc/widget/QuickTips$TipAnchor;

    move-result-object v15

    const/16 v16, 0x24

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Lcom/htc/widget/QuickTips$TipText;->originate(I)Lcom/htc/widget/QuickTips$TipItem;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/htc/widget/QuickTips$TipAnchor;->setContent(Lcom/htc/widget/QuickTips$TipItem;)V

    goto/16 :goto_2
.end method

.method private clear()Lcom/htc/widget/QuickTips$Tips;
    .locals 3

    .prologue
    .line 1174
    iget-object v2, p0, Lcom/htc/widget/QuickTips$Tips;->anchors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/QuickTips$TipAnchor;

    .line 1175
    .local v0, anchor:Lcom/htc/widget/QuickTips$TipAnchor;
    invoke-virtual {v0}, Lcom/htc/widget/QuickTips$TipAnchor;->destroy()V

    goto :goto_0

    .line 1177
    .end local v0           #anchor:Lcom/htc/widget/QuickTips$TipAnchor;
    :cond_0
    iget-object v2, p0, Lcom/htc/widget/QuickTips$Tips;->anchors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1178
    return-object p0
.end method

.method private draw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 1168
    iget-object v2, p0, Lcom/htc/widget/QuickTips$Tips;->anchors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/QuickTips$TipAnchor;

    .line 1169
    .local v0, anchor:Lcom/htc/widget/QuickTips$TipAnchor;
    invoke-virtual {v0, p1}, Lcom/htc/widget/QuickTips$TipAnchor;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 1171
    .end local v0           #anchor:Lcom/htc/widget/QuickTips$TipAnchor;
    :cond_0
    return-void
.end method

.method private setBounds(IIII)V
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1164
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/htc/widget/QuickTips$Tips;->bounds:Landroid/graphics/Rect;

    .line 1165
    return-void
.end method

.method private setMarginRatio(F)V
    .locals 0
    .parameter "ratio"

    .prologue
    .line 1182
    iput p1, p0, Lcom/htc/widget/QuickTips$Tips;->marginRatio:F

    .line 1183
    return-void
.end method


# virtual methods
.method public addAnchor(I)Lcom/htc/widget/QuickTips$TipAnchor;
    .locals 4
    .parameter "targetViewId"

    .prologue
    .line 678
    new-instance v0, Lcom/htc/widget/QuickTips$TipAnchor;

    iget-object v1, p0, Lcom/htc/widget/QuickTips$Tips;->quickTips:Lcom/htc/widget/QuickTips;

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/htc/widget/QuickTips$TipAnchor;-><init>(Lcom/htc/widget/QuickTips;IILandroid/graphics/Point;)V

    invoke-direct {p0, v0}, Lcom/htc/widget/QuickTips$Tips;->addAnchor(Lcom/htc/widget/QuickTips$TipAnchor;)Lcom/htc/widget/QuickTips$TipAnchor;

    move-result-object v0

    return-object v0
.end method

.method public addAnchor(II)Lcom/htc/widget/QuickTips$TipAnchor;
    .locals 3
    .parameter "targetViewId"
    .parameter "anchorMode"

    .prologue
    .line 692
    new-instance v0, Lcom/htc/widget/QuickTips$TipAnchor;

    iget-object v1, p0, Lcom/htc/widget/QuickTips$Tips;->quickTips:Lcom/htc/widget/QuickTips;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/htc/widget/QuickTips$TipAnchor;-><init>(Lcom/htc/widget/QuickTips;IILandroid/graphics/Point;)V

    invoke-direct {p0, v0}, Lcom/htc/widget/QuickTips$Tips;->addAnchor(Lcom/htc/widget/QuickTips$TipAnchor;)Lcom/htc/widget/QuickTips$TipAnchor;

    move-result-object v0

    return-object v0
.end method

.method public addAnchor(IILandroid/graphics/Point;)Lcom/htc/widget/QuickTips$TipAnchor;
    .locals 2
    .parameter "targetViewId"
    .parameter "anchorMode"
    .parameter "relativeLocation"

    .prologue
    .line 716
    new-instance v0, Lcom/htc/widget/QuickTips$TipAnchor;

    iget-object v1, p0, Lcom/htc/widget/QuickTips$Tips;->quickTips:Lcom/htc/widget/QuickTips;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/htc/widget/QuickTips$TipAnchor;-><init>(Lcom/htc/widget/QuickTips;IILandroid/graphics/Point;)V

    invoke-direct {p0, v0}, Lcom/htc/widget/QuickTips$Tips;->addAnchor(Lcom/htc/widget/QuickTips$TipAnchor;)Lcom/htc/widget/QuickTips$TipAnchor;

    move-result-object v0

    return-object v0
.end method

.method public addAnchor(ILandroid/graphics/Point;)Lcom/htc/widget/QuickTips$TipAnchor;
    .locals 3
    .parameter "targetViewId"
    .parameter "relativeLocation"

    .prologue
    .line 703
    new-instance v0, Lcom/htc/widget/QuickTips$TipAnchor;

    iget-object v1, p0, Lcom/htc/widget/QuickTips$Tips;->quickTips:Lcom/htc/widget/QuickTips;

    const/16 v2, 0x9

    invoke-direct {v0, v1, p1, v2, p2}, Lcom/htc/widget/QuickTips$TipAnchor;-><init>(Lcom/htc/widget/QuickTips;IILandroid/graphics/Point;)V

    invoke-direct {p0, v0}, Lcom/htc/widget/QuickTips$Tips;->addAnchor(Lcom/htc/widget/QuickTips$TipAnchor;)Lcom/htc/widget/QuickTips$TipAnchor;

    move-result-object v0

    return-object v0
.end method

.method public addAnchor(Landroid/graphics/Point;)Lcom/htc/widget/QuickTips$TipAnchor;
    .locals 4
    .parameter "absoluteLocation"

    .prologue
    .line 666
    new-instance v0, Lcom/htc/widget/QuickTips$TipAnchor;

    iget-object v1, p0, Lcom/htc/widget/QuickTips$Tips;->quickTips:Lcom/htc/widget/QuickTips;

    const/16 v2, -0x2710

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/htc/widget/QuickTips$TipAnchor;-><init>(Lcom/htc/widget/QuickTips;IILandroid/graphics/Point;)V

    invoke-direct {p0, v0}, Lcom/htc/widget/QuickTips$Tips;->addAnchor(Lcom/htc/widget/QuickTips$TipAnchor;)Lcom/htc/widget/QuickTips$TipAnchor;

    move-result-object v0

    return-object v0
.end method

.method public addAnchor(Landroid/graphics/Rect;)Lcom/htc/widget/QuickTips$TipAnchor;
    .locals 2
    .parameter "targetRect"

    .prologue
    .line 831
    new-instance v0, Lcom/htc/widget/QuickTips$TipAnchor;

    iget-object v1, p0, Lcom/htc/widget/QuickTips$Tips;->quickTips:Lcom/htc/widget/QuickTips;

    invoke-direct {v0, v1, p1}, Lcom/htc/widget/QuickTips$TipAnchor;-><init>(Lcom/htc/widget/QuickTips;Landroid/graphics/Rect;)V

    invoke-direct {p0, v0}, Lcom/htc/widget/QuickTips$Tips;->addAnchor(Lcom/htc/widget/QuickTips$TipAnchor;)Lcom/htc/widget/QuickTips$TipAnchor;

    move-result-object v0

    return-object v0
.end method

.method public addAnchor(Landroid/graphics/Rect;I)Lcom/htc/widget/QuickTips$TipAnchor;
    .locals 2
    .parameter "targetRect"
    .parameter "anchorMode"

    .prologue
    .line 844
    new-instance v0, Lcom/htc/widget/QuickTips$TipAnchor;

    iget-object v1, p0, Lcom/htc/widget/QuickTips$Tips;->quickTips:Lcom/htc/widget/QuickTips;

    invoke-direct {v0, v1, p1, p2}, Lcom/htc/widget/QuickTips$TipAnchor;-><init>(Lcom/htc/widget/QuickTips;Landroid/graphics/Rect;I)V

    invoke-direct {p0, v0}, Lcom/htc/widget/QuickTips$Tips;->addAnchor(Lcom/htc/widget/QuickTips$TipAnchor;)Lcom/htc/widget/QuickTips$TipAnchor;

    move-result-object v0

    return-object v0
.end method

.method public addAnchor(Landroid/graphics/Rect;ILandroid/graphics/Point;)Lcom/htc/widget/QuickTips$TipAnchor;
    .locals 2
    .parameter "targetRect"
    .parameter "anchorMode"
    .parameter "relativeLocation"

    .prologue
    .line 866
    new-instance v0, Lcom/htc/widget/QuickTips$TipAnchor;

    iget-object v1, p0, Lcom/htc/widget/QuickTips$Tips;->quickTips:Lcom/htc/widget/QuickTips;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/htc/widget/QuickTips$TipAnchor;-><init>(Lcom/htc/widget/QuickTips;Landroid/graphics/Rect;ILandroid/graphics/Point;)V

    invoke-direct {p0, v0}, Lcom/htc/widget/QuickTips$Tips;->addAnchor(Lcom/htc/widget/QuickTips$TipAnchor;)Lcom/htc/widget/QuickTips$TipAnchor;

    move-result-object v0

    return-object v0
.end method

.method public addAnchor(Landroid/graphics/Rect;Landroid/graphics/Point;)Lcom/htc/widget/QuickTips$TipAnchor;
    .locals 2
    .parameter "targetRect"
    .parameter "relativeLocation"

    .prologue
    .line 855
    new-instance v0, Lcom/htc/widget/QuickTips$TipAnchor;

    iget-object v1, p0, Lcom/htc/widget/QuickTips$Tips;->quickTips:Lcom/htc/widget/QuickTips;

    invoke-direct {v0, v1, p1, p2}, Lcom/htc/widget/QuickTips$TipAnchor;-><init>(Lcom/htc/widget/QuickTips;Landroid/graphics/Rect;Landroid/graphics/Point;)V

    invoke-direct {p0, v0}, Lcom/htc/widget/QuickTips$Tips;->addAnchor(Lcom/htc/widget/QuickTips$TipAnchor;)Lcom/htc/widget/QuickTips$TipAnchor;

    move-result-object v0

    return-object v0
.end method

.method public addAnchor(Landroid/view/View;)Lcom/htc/widget/QuickTips$TipAnchor;
    .locals 5
    .parameter "targetView"

    .prologue
    .line 730
    iget-object v1, p0, Lcom/htc/widget/QuickTips$Tips;->quickTips:Lcom/htc/widget/QuickTips;

    const/4 v2, -0x1

    #calls: Lcom/htc/widget/QuickTips;->getViewRect(ILandroid/view/View;)Landroid/graphics/Rect;
    invoke-static {v1, v2, p1}, Lcom/htc/widget/QuickTips;->access$1800(Lcom/htc/widget/QuickTips;ILandroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 731
    .local v0, targetRect:Landroid/graphics/Rect;
    new-instance v1, Lcom/htc/widget/QuickTips$TipAnchor;

    iget-object v2, p0, Lcom/htc/widget/QuickTips$Tips;->quickTips:Lcom/htc/widget/QuickTips;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/htc/widget/QuickTips$TipAnchor;-><init>(Lcom/htc/widget/QuickTips;Landroid/graphics/Rect;ILandroid/graphics/Point;)V

    invoke-direct {p0, v1}, Lcom/htc/widget/QuickTips$Tips;->addAnchor(Lcom/htc/widget/QuickTips$TipAnchor;)Lcom/htc/widget/QuickTips$TipAnchor;

    move-result-object v1

    return-object v1
.end method

.method public addAnchor(Landroid/view/View;I)Lcom/htc/widget/QuickTips$TipAnchor;
    .locals 4
    .parameter "targetView"
    .parameter "anchorMode"

    .prologue
    .line 745
    iget-object v1, p0, Lcom/htc/widget/QuickTips$Tips;->quickTips:Lcom/htc/widget/QuickTips;

    const/4 v2, -0x1

    #calls: Lcom/htc/widget/QuickTips;->getViewRect(ILandroid/view/View;)Landroid/graphics/Rect;
    invoke-static {v1, v2, p1}, Lcom/htc/widget/QuickTips;->access$1800(Lcom/htc/widget/QuickTips;ILandroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 746
    .local v0, targetRect:Landroid/graphics/Rect;
    new-instance v1, Lcom/htc/widget/QuickTips$TipAnchor;

    iget-object v2, p0, Lcom/htc/widget/QuickTips$Tips;->quickTips:Lcom/htc/widget/QuickTips;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, p2, v3}, Lcom/htc/widget/QuickTips$TipAnchor;-><init>(Lcom/htc/widget/QuickTips;Landroid/graphics/Rect;ILandroid/graphics/Point;)V

    invoke-direct {p0, v1}, Lcom/htc/widget/QuickTips$Tips;->addAnchor(Lcom/htc/widget/QuickTips$TipAnchor;)Lcom/htc/widget/QuickTips$TipAnchor;

    move-result-object v1

    return-object v1
.end method

.method public addAnchor(Landroid/view/View;ILandroid/graphics/Point;)Lcom/htc/widget/QuickTips$TipAnchor;
    .locals 3
    .parameter "targetView"
    .parameter "anchorMode"
    .parameter "relativeLocation"

    .prologue
    .line 771
    iget-object v1, p0, Lcom/htc/widget/QuickTips$Tips;->quickTips:Lcom/htc/widget/QuickTips;

    const/4 v2, -0x1

    #calls: Lcom/htc/widget/QuickTips;->getViewRect(ILandroid/view/View;)Landroid/graphics/Rect;
    invoke-static {v1, v2, p1}, Lcom/htc/widget/QuickTips;->access$1800(Lcom/htc/widget/QuickTips;ILandroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 772
    .local v0, targetRect:Landroid/graphics/Rect;
    new-instance v1, Lcom/htc/widget/QuickTips$TipAnchor;

    iget-object v2, p0, Lcom/htc/widget/QuickTips$Tips;->quickTips:Lcom/htc/widget/QuickTips;

    invoke-direct {v1, v2, v0, p2, p3}, Lcom/htc/widget/QuickTips$TipAnchor;-><init>(Lcom/htc/widget/QuickTips;Landroid/graphics/Rect;ILandroid/graphics/Point;)V

    invoke-direct {p0, v1}, Lcom/htc/widget/QuickTips$Tips;->addAnchor(Lcom/htc/widget/QuickTips$TipAnchor;)Lcom/htc/widget/QuickTips$TipAnchor;

    move-result-object v1

    return-object v1
.end method

.method public addAnchor(Landroid/view/View;Landroid/graphics/Point;)Lcom/htc/widget/QuickTips$TipAnchor;
    .locals 4
    .parameter "targetView"
    .parameter "relativeLocation"

    .prologue
    .line 757
    iget-object v1, p0, Lcom/htc/widget/QuickTips$Tips;->quickTips:Lcom/htc/widget/QuickTips;

    const/4 v2, -0x1

    #calls: Lcom/htc/widget/QuickTips;->getViewRect(ILandroid/view/View;)Landroid/graphics/Rect;
    invoke-static {v1, v2, p1}, Lcom/htc/widget/QuickTips;->access$1800(Lcom/htc/widget/QuickTips;ILandroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 758
    .local v0, targetRect:Landroid/graphics/Rect;
    new-instance v1, Lcom/htc/widget/QuickTips$TipAnchor;

    iget-object v2, p0, Lcom/htc/widget/QuickTips$Tips;->quickTips:Lcom/htc/widget/QuickTips;

    const/16 v3, 0x9

    invoke-direct {v1, v2, v0, v3, p2}, Lcom/htc/widget/QuickTips$TipAnchor;-><init>(Lcom/htc/widget/QuickTips;Landroid/graphics/Rect;ILandroid/graphics/Point;)V

    invoke-direct {p0, v1}, Lcom/htc/widget/QuickTips$Tips;->addAnchor(Lcom/htc/widget/QuickTips$TipAnchor;)Lcom/htc/widget/QuickTips$TipAnchor;

    move-result-object v1

    return-object v1
.end method

.method public addAnchor(Lcom/htc/widget/QuickTips$TipItem;)Lcom/htc/widget/QuickTips$TipAnchor;
    .locals 2
    .parameter "targetItem"

    .prologue
    .line 784
    new-instance v0, Lcom/htc/widget/QuickTips$TipAnchor;

    iget-object v1, p0, Lcom/htc/widget/QuickTips$Tips;->quickTips:Lcom/htc/widget/QuickTips;

    invoke-direct {v0, v1, p1}, Lcom/htc/widget/QuickTips$TipAnchor;-><init>(Lcom/htc/widget/QuickTips;Lcom/htc/widget/QuickTips$TipItem;)V

    invoke-direct {p0, v0}, Lcom/htc/widget/QuickTips$Tips;->addAnchor(Lcom/htc/widget/QuickTips$TipAnchor;)Lcom/htc/widget/QuickTips$TipAnchor;

    move-result-object v0

    return-object v0
.end method

.method public addAnchor(Lcom/htc/widget/QuickTips$TipItem;I)Lcom/htc/widget/QuickTips$TipAnchor;
    .locals 2
    .parameter "targetItem"
    .parameter "anchorMode"

    .prologue
    .line 797
    new-instance v0, Lcom/htc/widget/QuickTips$TipAnchor;

    iget-object v1, p0, Lcom/htc/widget/QuickTips$Tips;->quickTips:Lcom/htc/widget/QuickTips;

    invoke-direct {v0, v1, p1, p2}, Lcom/htc/widget/QuickTips$TipAnchor;-><init>(Lcom/htc/widget/QuickTips;Lcom/htc/widget/QuickTips$TipItem;I)V

    invoke-direct {p0, v0}, Lcom/htc/widget/QuickTips$Tips;->addAnchor(Lcom/htc/widget/QuickTips$TipAnchor;)Lcom/htc/widget/QuickTips$TipAnchor;

    move-result-object v0

    return-object v0
.end method

.method public addAnchor(Lcom/htc/widget/QuickTips$TipItem;ILandroid/graphics/Point;)Lcom/htc/widget/QuickTips$TipAnchor;
    .locals 2
    .parameter "targetItem"
    .parameter "anchorMode"
    .parameter "relativeLocation"

    .prologue
    .line 819
    new-instance v0, Lcom/htc/widget/QuickTips$TipAnchor;

    iget-object v1, p0, Lcom/htc/widget/QuickTips$Tips;->quickTips:Lcom/htc/widget/QuickTips;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/htc/widget/QuickTips$TipAnchor;-><init>(Lcom/htc/widget/QuickTips;Lcom/htc/widget/QuickTips$TipItem;ILandroid/graphics/Point;)V

    invoke-direct {p0, v0}, Lcom/htc/widget/QuickTips$Tips;->addAnchor(Lcom/htc/widget/QuickTips$TipAnchor;)Lcom/htc/widget/QuickTips$TipAnchor;

    move-result-object v0

    return-object v0
.end method

.method public addAnchor(Lcom/htc/widget/QuickTips$TipItem;Landroid/graphics/Point;)Lcom/htc/widget/QuickTips$TipAnchor;
    .locals 2
    .parameter "targetItem"
    .parameter "relativeLocation"

    .prologue
    .line 808
    new-instance v0, Lcom/htc/widget/QuickTips$TipAnchor;

    iget-object v1, p0, Lcom/htc/widget/QuickTips$Tips;->quickTips:Lcom/htc/widget/QuickTips;

    invoke-direct {v0, v1, p1, p2}, Lcom/htc/widget/QuickTips$TipAnchor;-><init>(Lcom/htc/widget/QuickTips;Lcom/htc/widget/QuickTips$TipItem;Landroid/graphics/Point;)V

    invoke-direct {p0, v0}, Lcom/htc/widget/QuickTips$Tips;->addAnchor(Lcom/htc/widget/QuickTips$TipAnchor;)Lcom/htc/widget/QuickTips$TipAnchor;

    move-result-object v0

    return-object v0
.end method

.method public addTip(IIIIILjava/lang/String;)Lcom/htc/widget/QuickTips$TipItem;
    .locals 8
    .parameter "targetViewId"
    .parameter "arrowGap"
    .parameter "textGap"
    .parameter "textWidth"
    .parameter "textAlign"
    .parameter "text"

    .prologue
    .line 1019
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/htc/widget/QuickTips$Tips;->addTip(Landroid/graphics/Rect;IIIIILjava/lang/String;)Lcom/htc/widget/QuickTips$TipItem;

    move-result-object v0

    return-object v0
.end method

.method public addTip(ILjava/lang/String;)Lcom/htc/widget/QuickTips$TipItem;
    .locals 2
    .parameter "targetViewId"
    .parameter "text"

    .prologue
    .line 890
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/htc/widget/QuickTips$Tips;->addTip(Landroid/graphics/Rect;ILjava/lang/String;Z)Lcom/htc/widget/QuickTips$TipItem;

    move-result-object v0

    return-object v0
.end method

.method public addTip(ILjava/lang/String;Z)Lcom/htc/widget/QuickTips$TipItem;
    .locals 2
    .parameter "targetViewId"
    .parameter "text"
    .parameter "withArrow"

    .prologue
    .line 878
    iget-object v1, p0, Lcom/htc/widget/QuickTips$Tips;->quickTips:Lcom/htc/widget/QuickTips;

    #getter for: Lcom/htc/widget/QuickTips;->host:Landroid/app/Activity;
    invoke-static {v1}, Lcom/htc/widget/QuickTips;->access$300(Lcom/htc/widget/QuickTips;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 879
    .local v0, targetView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 880
    iget-object v1, p0, Lcom/htc/widget/QuickTips$Tips;->quickTips:Lcom/htc/widget/QuickTips;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 882
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/htc/widget/QuickTips$Tips;->addTip(Landroid/graphics/Rect;ILjava/lang/String;Z)Lcom/htc/widget/QuickTips$TipItem;

    move-result-object v1

    return-object v1
.end method

.method public addTip(Landroid/graphics/Rect;IIIILjava/lang/String;)Lcom/htc/widget/QuickTips$TipItem;
    .locals 8
    .parameter "targetRect"
    .parameter "arrowGap"
    .parameter "textGap"
    .parameter "textWidth"
    .parameter "textAlign"
    .parameter "text"

    .prologue
    .line 1034
    const/4 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/htc/widget/QuickTips$Tips;->addTip(Landroid/graphics/Rect;IIIIILjava/lang/String;)Lcom/htc/widget/QuickTips$TipItem;

    move-result-object v0

    return-object v0
.end method

.method public addTip(Landroid/graphics/Rect;Ljava/lang/String;)Lcom/htc/widget/QuickTips$TipItem;
    .locals 2
    .parameter "targetRect"
    .parameter "text"

    .prologue
    .line 929
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/htc/widget/QuickTips$Tips;->addTip(Landroid/graphics/Rect;ILjava/lang/String;Z)Lcom/htc/widget/QuickTips$TipItem;

    move-result-object v0

    return-object v0
.end method

.method public addTip(Landroid/graphics/Rect;Ljava/lang/String;Z)Lcom/htc/widget/QuickTips$TipItem;
    .locals 1
    .parameter "targetRect"
    .parameter "text"
    .parameter "withArrow"

    .prologue
    .line 921
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/htc/widget/QuickTips$Tips;->addTip(Landroid/graphics/Rect;ILjava/lang/String;Z)Lcom/htc/widget/QuickTips$TipItem;

    move-result-object v0

    return-object v0
.end method

.method public addTip(Landroid/view/View;Ljava/lang/String;)Lcom/htc/widget/QuickTips$TipItem;
    .locals 3
    .parameter "targetView"
    .parameter "text"

    .prologue
    const/4 v2, -0x1

    .line 911
    iget-object v1, p0, Lcom/htc/widget/QuickTips$Tips;->quickTips:Lcom/htc/widget/QuickTips;

    #calls: Lcom/htc/widget/QuickTips;->getViewRect(ILandroid/view/View;)Landroid/graphics/Rect;
    invoke-static {v1, v2, p1}, Lcom/htc/widget/QuickTips;->access$1800(Lcom/htc/widget/QuickTips;ILandroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 912
    .local v0, targetRect:Landroid/graphics/Rect;
    const/4 v1, 0x1

    invoke-direct {p0, v0, v2, p2, v1}, Lcom/htc/widget/QuickTips$Tips;->addTip(Landroid/graphics/Rect;ILjava/lang/String;Z)Lcom/htc/widget/QuickTips$TipItem;

    move-result-object v1

    return-object v1
.end method

.method public addTip(Landroid/view/View;Ljava/lang/String;Z)Lcom/htc/widget/QuickTips$TipItem;
    .locals 3
    .parameter "targetView"
    .parameter "text"
    .parameter "withArrow"

    .prologue
    const/4 v2, -0x1

    .line 899
    iget-object v1, p0, Lcom/htc/widget/QuickTips$Tips;->quickTips:Lcom/htc/widget/QuickTips;

    #calls: Lcom/htc/widget/QuickTips;->getViewRect(ILandroid/view/View;)Landroid/graphics/Rect;
    invoke-static {v1, v2, p1}, Lcom/htc/widget/QuickTips;->access$1800(Lcom/htc/widget/QuickTips;ILandroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 900
    .local v0, targetRect:Landroid/graphics/Rect;
    if-eqz p1, :cond_0

    .line 901
    iget-object v1, p0, Lcom/htc/widget/QuickTips$Tips;->quickTips:Lcom/htc/widget/QuickTips;

    invoke-virtual {p1, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 903
    :cond_0
    invoke-direct {p0, v0, v2, p2, p3}, Lcom/htc/widget/QuickTips$Tips;->addTip(Landroid/graphics/Rect;ILjava/lang/String;Z)Lcom/htc/widget/QuickTips$TipItem;

    move-result-object v1

    return-object v1
.end method

.method public addTip(Ljava/lang/String;)Lcom/htc/widget/QuickTips$TipItem;
    .locals 6
    .parameter "text"

    .prologue
    const/16 v5, 0x12

    .line 1058
    const-string v2, "QuickTips"

    const-string v3, "add Tips string only"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    invoke-static {}, Lcom/htc/widget/QuickTips;->access$000()I

    move-result v2

    invoke-static {}, Lcom/htc/widget/QuickTips;->access$2100()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/htc/widget/QuickTips$Tips;->marginRatio:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sub-int v0, v2, v3

    .line 1060
    .local v0, TextWidth:I
    new-instance v1, Lcom/htc/widget/QuickTips$TipText;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, v0}, Lcom/htc/widget/QuickTips$TipText;-><init>(Ljava/lang/String;II)V

    .line 1061
    .local v1, item:Lcom/htc/widget/QuickTips$TipText;
    const/16 v2, -0x2710

    invoke-virtual {p0, v2, v5}, Lcom/htc/widget/QuickTips$Tips;->addAnchor(II)Lcom/htc/widget/QuickTips$TipAnchor;

    move-result-object v2

    invoke-virtual {v1, v5}, Lcom/htc/widget/QuickTips$TipText;->originate(I)Lcom/htc/widget/QuickTips$TipItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/QuickTips$TipAnchor;->setContent(Lcom/htc/widget/QuickTips$TipItem;)V

    .line 1063
    return-object v1
.end method
