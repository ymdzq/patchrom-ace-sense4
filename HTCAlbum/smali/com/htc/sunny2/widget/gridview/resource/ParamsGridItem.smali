.class public Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;
.super Ljava/lang/Object;
.source "ParamsGridItem.java"

# interfaces
.implements Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemFeature;


# static fields
.field private static final DIMENSION_GRID:[I = null

#the value of this static final field might be set in the static constructor
.field public static final GRID_DIMENSION:I = 0x0

.field public static HORIZ_ITEM_SPACING:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final HORIZ_LAND_TABLET_ITEM_SPACING:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final ICON_3D_OFFSET_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final ICON_3D_OFFSET_Y:I = 0x0

.field private static final ICON_3D_X_OFFSET:[I = null

.field private static final ICON_3D_Y_OFFSET:[I = null

#the value of this static final field might be set in the static constructor
.field public static final ICON_DRM_LOCK_OFFSET_X_:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final ICON_DRM_LOCK_OFFSET_Y:I = 0x0

.field private static final ICON_DRM_LOCK_X_OFFSET_:[I = null

.field private static final ICON_DRM_LOCK_Y_OFFSET:[I = null

#the value of this static final field might be set in the static constructor
.field public static final ICON_INIDICATOR_MARGIN_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final ICON_INIDICATOR_MARGIN_Y:I = 0x0

.field private static final ITEM_SPACING_VERT_LAND:[I = null

.field private static final ITEM_SPACING_VERT_LAND_WIDE:[I = null

.field private static final ITEM_SPACING_VERT_PORT:[I = null

.field private static final LOG_TAG:Ljava/lang/String; = "ParamsGridItem"

.field private static final MARGIN_INDICATOR:[I

.field private static final TABLET_ITEM_SPACING_HORIZ:[I

.field private static final TABLET_ITEM_SPACING_VERT_LAND:[I

.field private static final TABLET_ITEM_SPACING_VERT_PORT:[I

.field public static final VERT_LAND_ITEM_SPACING:I

.field public static final VERT_LAND_ITEM_SPACING_WIDE:I

.field public static final VERT_LAND_TABLET_ITEM_SPACING:I

.field public static final VERT_PORT_ITEM_SPACING:I

.field public static final VERT_PORT_TABLET_ITEM_SPACING:I


# instance fields
.field private mEnableItemFixedDimension:Z

.field private mEnableItemFocusedAnimation:Z

.field private mExtra:Landroid/os/Bundle;

.field public mItemH:I

.field public mItemW:I

.field public mResIdBackground:I

.field public mStyle:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0xa

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->DIMENSION_GRID:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ITEM_SPACING_VERT_PORT:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ITEM_SPACING_VERT_LAND:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ITEM_SPACING_VERT_LAND_WIDE:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->MARGIN_INDICATOR:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->TABLET_ITEM_SPACING_VERT_PORT:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->TABLET_ITEM_SPACING_VERT_LAND:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->TABLET_ITEM_SPACING_HORIZ:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_8

    sput-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ICON_DRM_LOCK_X_OFFSET_:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_9

    sput-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ICON_DRM_LOCK_Y_OFFSET:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ICON_3D_X_OFFSET:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_b

    sput-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ICON_3D_Y_OFFSET:[I

    sget-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->DIMENSION_GRID:[I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->GRID_DIMENSION:I

    sget-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ITEM_SPACING_VERT_PORT:[I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->VERT_PORT_ITEM_SPACING:I

    sget-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ITEM_SPACING_VERT_LAND:[I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->VERT_LAND_ITEM_SPACING:I

    sget-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ITEM_SPACING_VERT_LAND_WIDE:[I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->VERT_LAND_ITEM_SPACING_WIDE:I

    sget-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->TABLET_ITEM_SPACING_VERT_PORT:[I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->VERT_PORT_TABLET_ITEM_SPACING:I

    sget-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->TABLET_ITEM_SPACING_VERT_LAND:[I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->VERT_LAND_TABLET_ITEM_SPACING:I

    sget-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->TABLET_ITEM_SPACING_HORIZ:[I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->HORIZ_LAND_TABLET_ITEM_SPACING:I

    sget-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->MARGIN_INDICATOR:[I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ICON_INIDICATOR_MARGIN_X:I

    sget-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->MARGIN_INDICATOR:[I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ICON_INIDICATOR_MARGIN_Y:I

    const/4 v0, 0x0

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->HORIZ_ITEM_SPACING:I

    sget-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ICON_DRM_LOCK_X_OFFSET_:[I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ICON_DRM_LOCK_OFFSET_X_:I

    sget-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ICON_DRM_LOCK_Y_OFFSET:[I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ICON_DRM_LOCK_OFFSET_Y:I

    sget-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ICON_3D_X_OFFSET:[I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ICON_3D_OFFSET_X:I

    sget-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ICON_3D_Y_OFFSET:[I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ICON_3D_OFFSET_Y:I

    return-void

    :array_0
    .array-data 0x4
        0x4ft 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0x74t 0x0t 0x0t 0x0t
        0x4ft 0x0t 0x0t 0x0t
        0x8ft 0x0t 0x0t 0x0t
        0x84t 0x0t 0x0t 0x0t
        0x9ct 0x0t 0x0t 0x0t
        0xb1t 0x0t 0x0t 0x0t
        0x8t 0x1t 0x0t 0x0t
        0x74t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data

    :array_6
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data

    :array_7
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data

    :array_8
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_9
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    :array_b
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mStyle:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mResIdBackground:I

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mEnableItemFixedDimension:Z

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mEnableItemFocusedAnimation:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mExtra:Landroid/os/Bundle;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mStyle:I

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mResIdBackground:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mEnableItemFixedDimension:Z

    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mEnableItemFocusedAnimation:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mExtra:Landroid/os/Bundle;

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mStyle:I

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mResIdBackground:I

    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->GRID_DIMENSION:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->GRID_DIMENSION:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->HORIZ_LAND_TABLET_ITEM_SPACING:I

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->HORIZ_ITEM_SPACING:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->HORIZ_ITEM_SPACING:I

    goto :goto_0
.end method

.method private constructor <init>(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mStyle:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mResIdBackground:I

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mEnableItemFixedDimension:Z

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mEnableItemFocusedAnimation:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mExtra:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->copy(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)V

    return-void
.end method

.method public static clone(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;
    .locals 1

    new-instance v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;-><init>(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)V

    return-object v0
.end method

.method public static horizontalSpacing(Landroid/content/res/Configuration;)I
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->HORIZ_LAND_TABLET_ITEM_SPACING:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static spawn(Landroid/content/Context;)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;
    .locals 1

    new-instance v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static verticalSpacing(Landroid/content/res/Configuration;)I
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v1, :cond_0

    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->VERT_PORT_TABLET_ITEM_SPACING:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->VERT_LAND_TABLET_ITEM_SPACING:I

    goto :goto_0

    :cond_1
    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static verticalSpacingWide(Landroid/content/res/Configuration;)I
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->VERT_LAND_ITEM_SPACING_WIDE:I

    goto :goto_0
.end method


# virtual methods
.method public copy(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mStyle:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mStyle:I

    iget v0, p1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mResIdBackground:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mResIdBackground:I

    iget v0, p1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    iget v0, p1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    goto :goto_0
.end method

.method public enableItemFixedDimension()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mEnableItemFixedDimension:Z

    return-void
.end method

.method public enableItemFocusedAnimation()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mEnableItemFocusedAnimation:Z

    return-void
.end method

.method public getExtra()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mExtra:Landroid/os/Bundle;

    return-object v0
.end method

.method public isEnableItemFocusedAnimation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mEnableItemFocusedAnimation:Z

    return v0
.end method

.method public isItemFixedDimension()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mEnableItemFixedDimension:Z

    return v0
.end method

.method public setExtra(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mExtra:Landroid/os/Bundle;

    return-void
.end method
