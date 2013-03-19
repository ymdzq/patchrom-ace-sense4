.class public Lcom/htc/sunny2/widget/gridview/resource/LayoutGetterGridFolder;
.super Ljava/lang/Object;
.source "LayoutGetterGridFolder.java"

# interfaces
.implements Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;


# static fields
.field private static final DIMENSION_IMAGE:[I

.field private static final FOLDER_TEXT_GAP_OFFSET:[I

.field private static final HEIGHT_TEXT_FIRST:[I

.field private static final HEIGHT_TEXT_SECOND:[I

.field private static final ITEM_SPACING_HORIZ_LAND:[I

.field private static final ITEM_SPACING_HORIZ_PORT:[I

.field private static final ITEM_SPACING_VERT_LAND:[I

.field private static final ITEM_SPACING_VERT_PORT:[I

.field public static final TEXT_HEIGHT_SECOND:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0xa

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/sunny2/widget/gridview/resource/LayoutGetterGridFolder;->DIMENSION_IMAGE:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/htc/sunny2/widget/gridview/resource/LayoutGetterGridFolder;->HEIGHT_TEXT_FIRST:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/htc/sunny2/widget/gridview/resource/LayoutGetterGridFolder;->HEIGHT_TEXT_SECOND:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/htc/sunny2/widget/gridview/resource/LayoutGetterGridFolder;->ITEM_SPACING_VERT_PORT:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/htc/sunny2/widget/gridview/resource/LayoutGetterGridFolder;->ITEM_SPACING_VERT_LAND:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/htc/sunny2/widget/gridview/resource/LayoutGetterGridFolder;->ITEM_SPACING_HORIZ_PORT:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/htc/sunny2/widget/gridview/resource/LayoutGetterGridFolder;->ITEM_SPACING_HORIZ_LAND:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/htc/sunny2/widget/gridview/resource/LayoutGetterGridFolder;->FOLDER_TEXT_GAP_OFFSET:[I

    sget-object v0, Lcom/htc/sunny2/widget/gridview/resource/LayoutGetterGridFolder;->HEIGHT_TEXT_SECOND:[I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/LayoutGetterGridFolder;->TEXT_HEIGHT_SECOND:I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x4ft 0x0t 0x0t 0x0t
        0x52t 0x0t 0x0t 0x0t
        0x7ct 0x0t 0x0t 0x0t
        0x4ft 0x0t 0x0t 0x0t
        0x7at 0x0t 0x0t 0x0t
        0x96t 0x0t 0x0t 0x0t
        0x74t 0x0t 0x0t 0x0t
        0xcat 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x7ct 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x4ft 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
        0x4ft 0x0t 0x0t 0x0t
        0xa0t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x4ft 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x4ft 0x0t 0x0t 0x0t
        0xa0t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x44t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
        0x3et 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data

    :array_6
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
        0x3et 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data

    :array_7
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static horizontalSpacing(Landroid/content/res/Configuration;)I
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/htc/sunny2/widget/gridview/resource/LayoutGetterGridFolder;->ITEM_SPACING_HORIZ_LAND:[I

    sget v2, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v1, v2

    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcom/htc/sunny2/widget/gridview/resource/LayoutGetterGridFolder;->ITEM_SPACING_HORIZ_PORT:[I

    sget v2, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v1, v2

    goto :goto_0
.end method

.method public static verticalSpacing(Landroid/content/res/Configuration;)I
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/htc/sunny2/widget/gridview/resource/LayoutGetterGridFolder;->ITEM_SPACING_VERT_LAND:[I

    sget v2, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v1, v2

    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcom/htc/sunny2/widget/gridview/resource/LayoutGetterGridFolder;->ITEM_SPACING_VERT_PORT:[I

    sget v2, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v1, v2

    goto :goto_0
.end method


# virtual methods
.method public imageDimension()I
    .locals 2

    sget-object v0, Lcom/htc/sunny2/widget/gridview/resource/LayoutGetterGridFolder;->DIMENSION_IMAGE:[I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    return v0
.end method

.method public itemDimension()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public itemSpacingHorizLandscape()I
    .locals 2

    sget-object v0, Lcom/htc/sunny2/widget/gridview/resource/LayoutGetterGridFolder;->ITEM_SPACING_HORIZ_LAND:[I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    return v0
.end method

.method public itemSpacingHorizPortrait()I
    .locals 2

    sget-object v0, Lcom/htc/sunny2/widget/gridview/resource/LayoutGetterGridFolder;->ITEM_SPACING_HORIZ_PORT:[I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    return v0
.end method

.method public itemSpacingVertLandscape()I
    .locals 2

    sget-object v0, Lcom/htc/sunny2/widget/gridview/resource/LayoutGetterGridFolder;->ITEM_SPACING_VERT_LAND:[I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    return v0
.end method

.method public itemSpacingVertPortrait()I
    .locals 2

    sget-object v0, Lcom/htc/sunny2/widget/gridview/resource/LayoutGetterGridFolder;->ITEM_SPACING_VERT_PORT:[I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    return v0
.end method

.method public itemToTextGap()I
    .locals 2

    sget-object v0, Lcom/htc/sunny2/widget/gridview/resource/LayoutGetterGridFolder;->FOLDER_TEXT_GAP_OFFSET:[I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    return v0
.end method

.method public textHeightFirst()I
    .locals 2

    sget-object v0, Lcom/htc/sunny2/widget/gridview/resource/LayoutGetterGridFolder;->HEIGHT_TEXT_FIRST:[I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    return v0
.end method

.method public textHeightSecond()I
    .locals 2

    sget-object v0, Lcom/htc/sunny2/widget/gridview/resource/LayoutGetterGridFolder;->HEIGHT_TEXT_SECOND:[I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    return v0
.end method
