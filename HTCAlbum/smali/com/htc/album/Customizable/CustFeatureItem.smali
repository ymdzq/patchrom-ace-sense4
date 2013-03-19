.class public Lcom/htc/album/Customizable/CustFeatureItem;
.super Ljava/lang/Object;
.source "CustFeatureItem.java"


# static fields
.field private static mEnablePaintView:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v0

    sput-boolean v0, Lcom/htc/album/Customizable/CustFeatureItem;->mEnablePaintView:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableEvents()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static enableLandingPage()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static enablePaintView(Z)V
    .locals 0

    sput-boolean p0, Lcom/htc/album/Customizable/CustFeatureItem;->mEnablePaintView:Z

    return-void
.end method

.method public static isCHS()Z
    .locals 3

    const/4 v0, 0x0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isEnablePaintView()Z
    .locals 1

    sget-boolean v0, Lcom/htc/album/Customizable/CustFeatureItem;->mEnablePaintView:Z

    return v0
.end method

.method public static isEnableUserProfiling()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isExcludeSocialNetwork()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isSenseA()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportBurstShots()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportPanorama()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportPenPaint()Z
    .locals 1

    sget-boolean v0, Lcom/htc/album/Customizable/CustFeatureItem;->mEnablePaintView:Z

    return v0
.end method

.method public static isSupportSnapbooth()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static show3DVirtualFolder()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
