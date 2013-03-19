.class public Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;
.super Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;
.source "ParamsGridItem4EventsLarge.java"


# static fields
.field private static final DIMENSION_GRID_4_H_EL:[I = null

.field private static final DIMENSION_GRID_4_W_EL:[I = null

#the value of this static final field might be set in the static constructor
.field public static final GRID_DIMENSION_H:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final GRID_DIMENSION_W:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final ITEM_SPACING:I = 0x0

.field private static final ITEM_SPACING_4_EL:[I = null

.field public static final LOG_TAG:Ljava/lang/String; = "ParamsGridItem4EventsLarge"

.field private static mVerticalSpacing:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0xa

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;->DIMENSION_GRID_4_W_EL:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;->DIMENSION_GRID_4_H_EL:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;->ITEM_SPACING_4_EL:[I

    sget-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;->ITEM_SPACING_4_EL:[I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;->ITEM_SPACING:I

    sget-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;->DIMENSION_GRID_4_W_EL:[I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;->GRID_DIMENSION_W:I

    sget-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;->DIMENSION_GRID_4_H_EL:[I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;->GRID_DIMENSION_H:I

    const/4 v0, -0x1

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;->mVerticalSpacing:I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x9et 0x0t 0x0t 0x0t
        0xe7t 0x0t 0x0t 0x0t
        0x81t 0x1t 0x0t 0x0t
        0x9et 0x0t 0x0t 0x0t
        0x1et 0x1t 0x0t 0x0t
        0xd1t 0x1t 0x0t 0x0t
        0x38t 0x1t 0x0t 0x0t
        0x6bt 0x2t 0x0t 0x0t
        0xa2t 0x3t 0x0t 0x0t
        0x81t 0x1t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x4ft 0x0t 0x0t 0x0t
        0x71t 0x0t 0x0t 0x0t
        0xbct 0x0t 0x0t 0x0t
        0x4ft 0x0t 0x0t 0x0t
        0x8ft 0x0t 0x0t 0x0t
        0xe4t 0x0t 0x0t 0x0t
        0x9ct 0x0t 0x0t 0x0t
        0x2ft 0x1t 0x0t 0x0t
        0xc7t 0x1t 0x0t 0x0t
        0xbct 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;-><init>()V

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mStyle:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mResIdBackground:I

    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;->GRID_DIMENSION_W:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;->GRID_DIMENSION_H:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;->ITEM_SPACING:I

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;->HORIZ_ITEM_SPACING:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;->mVerticalSpacing:I

    return-void
.end method

.method private constructor <init>(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;-><init>()V

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;->copy(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)V

    return-void
.end method

.method public static clone(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;
    .locals 1

    new-instance v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;-><init>(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;)V

    return-object v0
.end method

.method public static horizontalSpacing(Landroid/content/res/Configuration;)I
    .locals 1

    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;->mVerticalSpacing:I

    return v0
.end method

.method public static spawn(Landroid/content/Context;)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;
    .locals 1

    new-instance v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static verticalSpacing(Landroid/content/res/Configuration;)I
    .locals 1

    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;->mVerticalSpacing:I

    return v0
.end method
