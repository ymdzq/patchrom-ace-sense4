.class public Lcom/htc/sunny2/common/HtcPaneManager;
.super Ljava/lang/Object;
.source "HtcPaneManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "HtcPaneManager"

.field public static PANE_LEFT:I

.field public static PANE_RIGHT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/htc/sunny2/common/HtcPaneManager;->PANE_LEFT:I

    const/4 v0, 0x1

    sput v0, Lcom/htc/sunny2/common/HtcPaneManager;->PANE_RIGHT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLandscapePane(Landroid/content/Context;Z)[Lcom/htc/app/mf/PaneRect;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p0}, Lcom/htc/sunny2/common/HtcPaneManager;->paneLeftWidth(Landroid/content/Context;)I

    move-result v1

    invoke-static {p0}, Lcom/htc/sunny2/common/HtcPaneManager;->paneRightWidth(Landroid/content/Context;)I

    move-result v2

    invoke-static {p0}, Lcom/htc/sunny2/common/HtcPaneManager;->paneUsableLandscapeHeight(Landroid/content/Context;)I

    move-result v0

    const/4 v5, 0x2

    new-array v4, v5, [Lcom/htc/app/mf/PaneRect;

    new-instance v5, Lcom/htc/app/mf/PaneRect;

    invoke-direct {v5, v6, v6, v1, v0}, Lcom/htc/app/mf/PaneRect;-><init>(IIII)V

    aput-object v5, v4, v6

    new-instance v5, Lcom/htc/app/mf/PaneRect;

    invoke-direct {v5, v1, v6, v2, v0}, Lcom/htc/app/mf/PaneRect;-><init>(IIII)V

    aput-object v5, v4, v7

    :goto_0
    return-object v4

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/htc/sunny2/common/HtcPaneManager;->paneUsableLandscapeHeight4PhoneFullscreenMode(Landroid/content/Context;)I

    move-result v0

    :goto_1
    invoke-static {p0}, Lcom/htc/sunny2/common/HtcPaneManager;->paneWidthLand(Landroid/content/Context;)I

    move-result v3

    new-array v4, v7, [Lcom/htc/app/mf/PaneRect;

    new-instance v5, Lcom/htc/app/mf/PaneRect;

    invoke-direct {v5, v6, v6, v3, v0}, Lcom/htc/app/mf/PaneRect;-><init>(IIII)V

    aput-object v5, v4, v6

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/htc/sunny2/common/HtcPaneManager;->paneUsableLandscapeHeight(Landroid/content/Context;)I

    move-result v0

    goto :goto_1
.end method

.method public static getPortraitPane(Landroid/content/Context;Z)[Lcom/htc/app/mf/PaneRect;
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p0}, Lcom/htc/sunny2/common/HtcPaneManager;->paneUsablePortraitHeight(Landroid/content/Context;)I

    move-result v0

    new-array v2, v4, [Lcom/htc/app/mf/PaneRect;

    new-instance v3, Lcom/htc/app/mf/PaneRect;

    const/4 v4, -0x1

    invoke-direct {v3, v5, v5, v4, v0}, Lcom/htc/app/mf/PaneRect;-><init>(IIII)V

    aput-object v3, v2, v5

    :goto_0
    return-object v2

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/htc/sunny2/common/HtcPaneManager;->paneUsablePortraitHeight4PhoneFullscreenMode(Landroid/content/Context;)I

    move-result v0

    :goto_1
    invoke-static {p0}, Lcom/htc/sunny2/common/HtcPaneManager;->paneWidthPort(Landroid/content/Context;)I

    move-result v1

    new-array v2, v4, [Lcom/htc/app/mf/PaneRect;

    new-instance v3, Lcom/htc/app/mf/PaneRect;

    invoke-direct {v3, v5, v5, v1, v0}, Lcom/htc/app/mf/PaneRect;-><init>(IIII)V

    aput-object v3, v2, v5

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/htc/sunny2/common/HtcPaneManager;->paneUsablePortraitHeight(Landroid/content/Context;)I

    move-result v0

    goto :goto_1
.end method

.method public static isLandscape(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v1, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v2, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isTablet()Z
    .locals 2

    const/4 v0, 0x0

    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static onMeasuredWidthAndHeight(Landroid/content/Context;ZZ)[I
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p0}, Lcom/htc/sunny2/common/HtcPaneManager;->paneRightWidth(Landroid/content/Context;)I

    move-result v2

    :cond_0
    add-int/lit8 v2, v2, -0xa

    add-int/lit8 v1, v1, -0xc

    :goto_0
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v2, v3, v4

    const/4 v4, 0x1

    aput v1, v3, v4

    return-object v3

    :cond_1
    invoke-static {p0}, Lcom/htc/sunny2/common/HtcPaneManager;->isLandscape(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget v2, Lcom/htc/album/AlbumCommon/LayoutConstants;->PANE_WIDTH_LAND:I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->PANE_HEIGHT_LAND:I

    goto :goto_0

    :cond_2
    sget v2, Lcom/htc/album/AlbumCommon/LayoutConstants;->PANE_WIDTH_PORT:I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->PANE_HEIGHT_PORT:I

    goto :goto_0
.end method

.method public static onMeasuredWidthAndHeight(Landroid/content/Context;ZZII)[I
    .locals 4

    move v1, p3

    move v0, p4

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v3, 0x1

    aput v0, v2, v3

    return-object v2
.end method

.method public static onPrepareHtcActionBar(Landroid/app/Activity;Lcom/htc/sunny2/frameworks/base/interfaces/IActionBarControl;Landroid/view/View$OnClickListener;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IActionBarGesture;ZZZZZZLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    if-nez p4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Lcom/htc/sunny2/frameworks/base/interfaces/IActionBarControl;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setBackUpEnabled(Z)V

    if-eqz p5, :cond_3

    invoke-interface {v0, p2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    if-eqz p6, :cond_4

    const/4 v1, 0x1

    invoke-interface {v0, v1, p0, p3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setGestureMonitorEnabled(ZLandroid/app/Activity;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IActionBarGesture;)V

    :goto_2
    invoke-interface {v0, p8, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setDropdownListEnabled(ZLcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IDropDownListener;)V

    if-eqz p8, :cond_2

    if-eqz p7, :cond_5

    instance-of v1, p0, Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneHost;

    if-eqz v1, :cond_2

    check-cast p0, Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneHost;

    invoke-interface {p0}, Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneHost;->enableDropList()V

    :cond_2
    :goto_3
    if-eqz p9, :cond_6

    sget-object v1, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;->MODE_FULLSCREEN:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setMode(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;)V

    :goto_4
    if-eqz p10, :cond_7

    invoke-interface {v0, p10}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setPrimaryText(Ljava/lang/String;)V

    :goto_5
    if-eqz p11, :cond_8

    invoke-interface {v0, p11}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setSecondaryText(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-interface {v0, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    invoke-interface {v0, v1, p0, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setGestureMonitorEnabled(ZLandroid/app/Activity;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IActionBarGesture;)V

    goto :goto_2

    :cond_5
    invoke-interface {p1}, Lcom/htc/sunny2/frameworks/base/interfaces/IActionBarControl;->enableDropList()V

    goto :goto_3

    :cond_6
    sget-object v1, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;->MODE_STANDARD:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setMode(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;)V

    goto :goto_4

    :cond_7
    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setSecondaryText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static onPrepareHtcActionBar(Landroid/app/Activity;Lcom/htc/sunny2/frameworks/base/interfaces/IActionBarControl;Landroid/view/View$OnClickListener;ZZZZLjava/lang/String;Ljava/lang/String;)V
    .locals 12

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-static/range {v0 .. v11}, Lcom/htc/sunny2/common/HtcPaneManager;->onPrepareHtcActionBar(Landroid/app/Activity;Lcom/htc/sunny2/frameworks/base/interfaces/IActionBarControl;Landroid/view/View$OnClickListener;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IActionBarGesture;ZZZZZZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static paneHeight(Landroid/content/Context;)I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v1, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v2, v1, :cond_0

    sget v0, Lcom/htc/album/AlbumCommon/LayoutConstants;->PANE_HEIGHT_LAND:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/htc/album/AlbumCommon/LayoutConstants;->PANE_HEIGHT_PORT:I

    goto :goto_0
.end method

.method public static paneLeftWidth(Landroid/content/Context;)I
    .locals 1

    const/4 v0, 0x0

    sget v0, Lcom/htc/album/AlbumCommon/LayoutConstants;->PANE_WIDTH_LEFT:I

    return v0
.end method

.method public static paneRightWidth(Landroid/content/Context;)I
    .locals 1

    const/4 v0, 0x0

    sget v0, Lcom/htc/album/AlbumCommon/LayoutConstants;->PANE_WIDTH_RIGHT:I

    return v0
.end method

.method public static paneUsableLandscapeHeight(Landroid/content/Context;)I
    .locals 1

    const/4 v0, 0x0

    sget v0, Lcom/htc/album/AlbumCommon/LayoutConstants;->PANE_USABLE_HEIGHT_LAND:I

    return v0
.end method

.method public static paneUsableLandscapeHeight4PhoneFullscreenMode(Landroid/content/Context;)I
    .locals 1

    const/4 v0, 0x0

    sget v0, Lcom/htc/album/AlbumCommon/LayoutConstants;->PANE_USABLE_HEIGHT_LAND_PHONE:I

    return v0
.end method

.method public static paneUsablePortraitHeight(Landroid/content/Context;)I
    .locals 1

    const/4 v0, 0x0

    sget v0, Lcom/htc/album/AlbumCommon/LayoutConstants;->PANE_USABLE_HEIGHT_PORT:I

    return v0
.end method

.method public static paneUsablePortraitHeight4PhoneFullscreenMode(Landroid/content/Context;)I
    .locals 1

    const/4 v0, 0x0

    sget v0, Lcom/htc/album/AlbumCommon/LayoutConstants;->PANE_USABLE_HEIGHT_PORT_PHONE:I

    return v0
.end method

.method public static paneWidthLand(Landroid/content/Context;)I
    .locals 1

    const/4 v0, 0x0

    sget v0, Lcom/htc/album/AlbumCommon/LayoutConstants;->PANE_WIDTH_LAND:I

    return v0
.end method

.method public static paneWidthPort(Landroid/content/Context;)I
    .locals 1

    const/4 v0, 0x0

    sget v0, Lcom/htc/album/AlbumCommon/LayoutConstants;->PANE_WIDTH_PORT:I

    return v0
.end method
