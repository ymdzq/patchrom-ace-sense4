.class public Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4Events;
.super Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;
.source "ParamsGridItem4Events.java"


# static fields
#the value of this static final field might be set in the static constructor
.field public static final ITEM_SPACING:I = 0x0

.field private static final ITEM_SPACING_4_ES:[I = null

.field public static final LOG_TAG:Ljava/lang/String; = "ParamsGridItem4Events"

.field public static mBottomViewHeight:I

.field private static mVerticalSpacing:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4Events;->ITEM_SPACING_4_ES:[I

    sget-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4Events;->ITEM_SPACING_4_ES:[I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4Events;->ITEM_SPACING:I

    const/4 v0, 0x0

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4Events;->mBottomViewHeight:I

    const/4 v0, -0x1

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4Events;->mVerticalSpacing:I

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;-><init>()V

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mStyle:I

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mResIdBackground:I

    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4Events;->GRID_DIMENSION:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4Events;->GRID_DIMENSION:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4Events;->ITEM_SPACING:I

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4Events;->HORIZ_ITEM_SPACING:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4Events;->mVerticalSpacing:I

    const-string v0, "ParamsGridItem4Events"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "[HTCAlbum][ParamsGridItem4EventsSmall][ParamsGridItem4EventsSmall]: "

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, ":"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4Events;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;-><init>()V

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4Events;->copy(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)V

    return-void
.end method

.method public static clone(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4Events;)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4Events;
    .locals 1

    new-instance v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4Events;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4Events;-><init>(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4Events;)V

    return-object v0
.end method

.method public static horizontalSpacing(Landroid/content/res/Configuration;)I
    .locals 1

    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4Events;->ITEM_SPACING:I

    return v0
.end method

.method public static resetBottomViewHeight()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4Events;->mBottomViewHeight:I

    return-void
.end method

.method public static spawn(Landroid/content/Context;)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4Events;
    .locals 1

    new-instance v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4Events;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4Events;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static verticalSpacing(Landroid/content/res/Configuration;)I
    .locals 1

    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4Events;->ITEM_SPACING:I

    return v0
.end method
