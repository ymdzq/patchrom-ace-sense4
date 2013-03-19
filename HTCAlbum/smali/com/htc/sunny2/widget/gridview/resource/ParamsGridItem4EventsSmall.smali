.class public Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSmall;
.super Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;
.source "ParamsGridItem4EventsSmall.java"


# static fields
.field private static final DIMENSION_GRID_4_ES:[I = null

#the value of this static final field might be set in the static constructor
.field public static final GRID_DIMENSION:I = 0x0

.field public static final LOG_TAG:Ljava/lang/String; = "ParamsGridItem4EventsSmall"

.field private static mVerticalSpacing:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSmall;->DIMENSION_GRID_4_ES:[I

    sget-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSmall;->DIMENSION_GRID_4_ES:[I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSmall;->GRID_DIMENSION:I

    const/4 v0, -0x1

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSmall;->mVerticalSpacing:I

    return-void

    nop

    :array_0
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
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;-><init>()V

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mStyle:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mResIdBackground:I

    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSmall;->GRID_DIMENSION:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSmall;->GRID_DIMENSION:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSmall;->mVerticalSpacing:I

    return-void
.end method

.method private constructor <init>(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSmall;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;-><init>()V

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSmall;->copy(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)V

    return-void
.end method

.method public static clone(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSmall;)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSmall;
    .locals 1

    new-instance v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSmall;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSmall;-><init>(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSmall;)V

    return-object v0
.end method

.method public static horizontalSpacing(Landroid/content/res/Configuration;)I
    .locals 1

    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSmall;->mVerticalSpacing:I

    return v0
.end method

.method public static spawn(Landroid/content/Context;)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSmall;
    .locals 1

    new-instance v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSmall;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSmall;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static verticalSpacing(Landroid/content/res/Configuration;)I
    .locals 1

    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSmall;->mVerticalSpacing:I

    return v0
.end method
