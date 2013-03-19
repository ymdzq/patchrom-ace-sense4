.class public Lcom/htc/album/TabPluginDevice/location/RectD;
.super Ljava/lang/Object;
.source "RectD.java"


# instance fields
.field public bottom:D

.field public left:D

.field public right:D

.field public top:D


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/htc/album/TabPluginDevice/location/RectD;->left:D

    iput-wide p3, p0, Lcom/htc/album/TabPluginDevice/location/RectD;->top:D

    iput-wide p5, p0, Lcom/htc/album/TabPluginDevice/location/RectD;->right:D

    iput-wide p7, p0, Lcom/htc/album/TabPluginDevice/location/RectD;->bottom:D

    return-void
.end method

.method public static ParseArrD([D)[Lcom/htc/album/TabPluginDevice/location/RectD;
    .locals 12

    array-length v0, p0

    div-int/lit8 v10, v0, 0x4

    new-array v11, v10, [Lcom/htc/album/TabPluginDevice/location/RectD;

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v10, :cond_0

    new-instance v0, Lcom/htc/album/TabPluginDevice/location/RectD;

    mul-int/lit8 v1, v9, 0x4

    aget-wide v1, p0, v1

    mul-int/lit8 v3, v9, 0x4

    add-int/lit8 v3, v3, 0x1

    aget-wide v3, p0, v3

    mul-int/lit8 v5, v9, 0x4

    add-int/lit8 v5, v5, 0x2

    aget-wide v5, p0, v5

    mul-int/lit8 v7, v9, 0x4

    add-int/lit8 v7, v7, 0x3

    aget-wide v7, p0, v7

    invoke-direct/range {v0 .. v8}, Lcom/htc/album/TabPluginDevice/location/RectD;-><init>(DDDD)V

    aput-object v0, v11, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    return-object v11
.end method
