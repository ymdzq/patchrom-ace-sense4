.class public Lcom/htc/fragment/widget/CarouselFragment;
.super Landroid/app/Fragment;
.source "CarouselFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fragment/widget/CarouselFragment$EditModeListener;,
        Lcom/htc/fragment/widget/CarouselFragment$EditModeDrawerListener;
    }
.end annotation


# static fields
.field static final CHECK_TASK_EXISTENCE:I = 0x386

.field private static final DEFAULT_FEATURES:I = 0x2

.field static final DELETE_ONE_TAB:I = 0x4b0

.field public static final FEATURE_CUSTOM_TITLE:I = 0x4

.field private static final FEATURE_EMPTY_CONTENT:I = 0x1

.field public static final FEATURE_NO_EDITOR:I = 0x8

.field public static final FEATURE_NO_TITLE:I = 0x2

.field static final INSERT_POOL_TASK:I = 0x44d

.field static final INSERT_WIDGET_TASK:I = 0x44c

.field static final LOCAL_LOGV:Z = true

.field static final MODE_ACTIVITY:I = 0x3e9

.field static final MODE_EDITOR:I = 0x3ea

.field public static final NO_UPDATE_REQUIRED:I = 0x3f0

.field static final TOKEN_BIN:I = 0x384

.field static final TOKEN_GALLERY:I = 0x385

.field static final TOKEN_REORD_GALLERY:I = 0x3e8

.field static final TOKEN_UPDATE_BIN:I = 0x3e9

.field static final TOKEN_UPDATE_GALLERY:I = 0x3ea

.field public static final UPDATE_COUNT_TEXT:I = 0x3eb

.field public static final UPDATE_COUNT_TEXT_VISIBLE:I = 0x3ec

.field static final UPDATE_TASK_INFO_POOL:I = 0x3ed

.field static final UPDATE_TASK_INFO_WIDGET:I = 0x3ee

.field public static final UPDATE_TASK_NAME:I = 0x3ef

.field static final disableLandscape:Z

.field private static tabViewId:I


# instance fields
.field private final animDuration:I

.field private deferredActions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private deferredSetting:Ljava/lang/Runnable;

.field private display:Landroid/view/Display;

.field private editModeListener:Lcom/htc/fragment/widget/CarouselFragment$EditModeListener;

.field eresources:Landroid/content/res/Resources;

.field private isPortrait:Z

.field private final mAuthority:Ljava/lang/String;

.field private mBinGridView:Lcom/htc/fragment/widget/BinGridView;

.field private mBundleKeyPrefix:Ljava/lang/String;

.field private mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

.field mContentAdapter:Lcom/htc/fragment/widget/CarouselContentAdapter;

.field mContentRoot:Lcom/htc/fragment/widget/CarouselContentGallery;

.field private mDefaultTab:Ljava/lang/String;

.field private mDefaultTabIndex:I

.field private mDragLayer:Lcom/htc/fragment/widget/CarouselHost;

.field private mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

.field private mDrawerStatusListener:Lcom/htc/fragment/widget/CarouselFragment$EditModeDrawerListener;

.field private mFeatures:I

.field private mGID:Ljava/lang/String;

.field mGalleryAdapter:Lcom/htc/fragment/widget/BinAdapter;

.field private mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

.field mGridAdapter:Lcom/htc/fragment/widget/BinAdapter;

.field private mHandler:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

.field private mHostOnTabChangeListener:Lcom/htc/fragment/widget/CarouselHost$OnTabChangeListener;

.field private mInflater:Landroid/view/LayoutInflater;

.field mIsDestroy:Z

.field private mIsProviderAp:Z

.field private mIsStartQueryCalled:Z

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

.field private mMemoryMode:Z

.field private final mModel:Lcom/htc/fragment/widget/CarouselModel;

.field private mQueuedActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mRestoring:Z

.field private mRootView:Landroid/view/View;

.field private mStateMode:I

.field private mTaskUri:Landroid/net/Uri;

.field private mTransactionCounter:I

.field private tabContentViewIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    sput-boolean v0, Lcom/htc/fragment/widget/CarouselFragment;->disableLandscape:Z

    const/high16 v0, 0x4000

    sput v0, Lcom/htc/fragment/widget/CarouselFragment;->tabViewId:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-direct {v0, p0}, Lcom/htc/fragment/app/LocalFragmentManager;-><init>(Landroid/app/Fragment;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mRootView:Landroid/view/View;

    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mHostOnTabChangeListener:Lcom/htc/fragment/widget/CarouselHost$OnTabChangeListener;

    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDefaultTab:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDefaultTabIndex:I

    iput-boolean v4, p0, Lcom/htc/fragment/widget/CarouselFragment;->mRestoring:Z

    const-string v0, "0"

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGID:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mMemoryMode:Z

    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mBinGridView:Lcom/htc/fragment/widget/BinGridView;

    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDragLayer:Lcom/htc/fragment/widget/CarouselHost;

    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGridAdapter:Lcom/htc/fragment/widget/BinAdapter;

    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryAdapter:Lcom/htc/fragment/widget/BinAdapter;

    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->eresources:Landroid/content/res/Resources;

    const/16 v0, 0x3e9

    iput v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mStateMode:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mFeatures:I

    iput-boolean v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mIsDestroy:Z

    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mContentRoot:Lcom/htc/fragment/widget/CarouselContentGallery;

    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mContentAdapter:Lcom/htc/fragment/widget/CarouselContentAdapter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mBundleKeyPrefix:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->deferredActions:Ljava/util/Map;

    iput v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mTransactionCounter:I

    iput-boolean v4, p0, Lcom/htc/fragment/widget/CarouselFragment;->isPortrait:Z

    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->display:Landroid/view/Display;

    const/16 v0, 0x12c

    iput v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->animDuration:I

    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->editModeListener:Lcom/htc/fragment/widget/CarouselFragment$EditModeListener;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->tabContentViewIds:Ljava/util/Map;

    new-instance v0, Lcom/htc/fragment/widget/CarouselModel;

    invoke-direct {v0, p0}, Lcom/htc/fragment/widget/CarouselModel;-><init>(Lcom/htc/fragment/widget/CarouselFragment;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mModel:Lcom/htc/fragment/widget/CarouselModel;

    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mAuthority:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/tasks"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mTaskUri:Landroid/net/Uri;

    iput-boolean v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mMemoryMode:Z

    new-instance v0, Lcom/htc/fragment/widget/CarouselFragment$EditModeDrawerListener;

    invoke-direct {v0, p0, v2}, Lcom/htc/fragment/widget/CarouselFragment$EditModeDrawerListener;-><init>(Lcom/htc/fragment/widget/CarouselFragment;Lcom/htc/fragment/widget/CarouselFragment$1;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawerStatusListener:Lcom/htc/fragment/widget/CarouselFragment$EditModeDrawerListener;

    iput-boolean v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mIsStartQueryCalled:Z

    return-void
.end method

.method static synthetic access$102(Lcom/htc/fragment/widget/CarouselFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselFragment;->deferredSetting:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/fragment/widget/CarouselFragment;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->deferredActions:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/fragment/widget/CarouselFragment;)Lcom/htc/fragment/widget/CarouselModel;
    .locals 1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mModel:Lcom/htc/fragment/widget/CarouselModel;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/fragment/widget/CarouselFragment;)Lcom/htc/fragment/widget/CarouselFragment$EditModeListener;
    .locals 1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->editModeListener:Lcom/htc/fragment/widget/CarouselFragment$EditModeListener;

    return-object v0
.end method

.method private addSlidingDrawer()V
    .locals 7

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v3}, Lcom/htc/fragment/widget/CarouselHost;->getChildCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v3, v1}, Lcom/htc/fragment/widget/CarouselHost;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v3, v0}, Lcom/htc/fragment/widget/CarouselHost;->removeView(Landroid/view/View;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    instance-of v3, v0, Lcom/htc/fragment/widget/CarouselWidget;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mInflater:Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x2090024

    iget-object v5, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_1
    if-ltz v1, :cond_2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v3, v0}, Lcom/htc/fragment/widget/CarouselHost;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private createTabContentViewId()I
    .locals 2

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    :cond_0
    sget v1, Lcom/htc/fragment/widget/CarouselFragment;->tabViewId:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/htc/fragment/widget/CarouselFragment;->tabViewId:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    sget v1, Lcom/htc/fragment/widget/CarouselFragment;->tabViewId:I

    return v1
.end method

.method private enqueueSettingActionIfRequired()V
    .locals 1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->deferredSetting:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/fragment/widget/CarouselFragment$1;

    invoke-direct {v0, p0}, Lcom/htc/fragment/widget/CarouselFragment$1;-><init>(Lcom/htc/fragment/widget/CarouselFragment;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->deferredSetting:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselFragment;->enqueueAction(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private ensureCarouselHost(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ensureCarouselHost() mTaskUri: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mTaskUri:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselLog;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    if-nez v0, :cond_2

    iget v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mFeatures:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const v0, 0x2090018

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/htc/fragment/widget/CarouselFragment;->super_setContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)V

    const v0, 0x1020012

    invoke-direct {p0, v0}, Lcom/htc/fragment/widget/CarouselFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/CarouselHost;

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    iget v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mFeatures:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/htc/fragment/widget/CarouselHost;->enableCustomView(Z)V

    :goto_2
    return-void

    :cond_0
    const v0, 0x2090025

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselWidget;->initLayout()V

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    iget v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mFeatures:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_3

    :goto_3
    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselHost;->enableCustomView(Z)V

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method

.method private final findViewById(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private hideCarouselWithDialog()V
    .locals 3

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->hideCarousel()V

    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x20400bf

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x20400c0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x2040151

    new-instance v2, Lcom/htc/fragment/widget/CarouselFragment$5;

    invoke-direct {v2, p0}, Lcom/htc/fragment/widget/CarouselFragment$5;-><init>(Lcom/htc/fragment/widget/CarouselFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    return-void
.end method

.method private initalPoolNWidget()V
    .locals 11

    const v2, 0x2090022

    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDragLayer:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mInflater:Landroid/view/LayoutInflater;

    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselFragment;->addSlidingDrawer()V

    const v0, 0x1020012

    invoke-direct {p0, v0}, Lcom/htc/fragment/widget/CarouselFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/CarouselHost;

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDragLayer:Lcom/htc/fragment/widget/CarouselHost;

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDragLayer:Lcom/htc/fragment/widget/CarouselHost;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->eresources:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDragLayer:Lcom/htc/fragment/widget/CarouselHost;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->eresources:Landroid/content/res/Resources;

    iput-object v1, v0, Lcom/htc/fragment/widget/CarouselHost;->eresources:Landroid/content/res/Resources;

    :cond_0
    const v0, 0x2020064

    invoke-direct {p0, v0}, Lcom/htc/fragment/widget/CarouselFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/BinGridView;

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mBinGridView:Lcom/htc/fragment/widget/BinGridView;

    const v0, 0x1020013

    invoke-direct {p0, v0}, Lcom/htc/fragment/widget/CarouselFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/CarouselWidget;

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    const v0, 0x2020063

    invoke-direct {p0, v0}, Lcom/htc/fragment/widget/CarouselFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    const v0, 0x1020011

    invoke-direct {p0, v0}, Lcom/htc/fragment/widget/CarouselFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/CarouselContentGallery;

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mContentRoot:Lcom/htc/fragment/widget/CarouselContentGallery;

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    iput-object p0, v0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->carousel:Lcom/htc/fragment/widget/CarouselFragment;

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->actionBar:Landroid/app/ActionBar;

    :cond_1
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mModel:Lcom/htc/fragment/widget/CarouselModel;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselModel;->getHandler(Landroid/content/Context;)Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mHandler:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    new-instance v0, Lcom/htc/fragment/widget/BinAdapter;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mTaskUri:Landroid/net/Uri;

    new-array v5, v10, [Ljava/lang/String;

    new-array v6, v10, [I

    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselFragment;->mHandler:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    invoke-direct/range {v0 .. v7}, Lcom/htc/fragment/widget/BinAdapter;-><init>(Landroid/content/Context;ILandroid/net/Uri;Landroid/database/Cursor;[Ljava/lang/String;[ILcom/htc/fragment/content/NotifyingAsyncQueryHandler;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGridAdapter:Lcom/htc/fragment/widget/BinAdapter;

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGridAdapter:Lcom/htc/fragment/widget/BinAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->eresources:Landroid/content/res/Resources;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGridAdapter:Lcom/htc/fragment/widget/BinAdapter;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->eresources:Landroid/content/res/Resources;

    iput-object v1, v0, Lcom/htc/fragment/widget/BinAdapter;->eresources:Landroid/content/res/Resources;

    :cond_2
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mBinGridView:Lcom/htc/fragment/widget/BinGridView;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDragLayer:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/BinGridView;->setDragger(Lcom/htc/fragment/widget/DragController;)V

    new-instance v0, Lcom/htc/fragment/widget/BinAdapter;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mTaskUri:Landroid/net/Uri;

    new-array v5, v10, [Ljava/lang/String;

    new-array v6, v10, [I

    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselFragment;->mHandler:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    iget-object v8, p0, Lcom/htc/fragment/widget/CarouselFragment;->mModel:Lcom/htc/fragment/widget/CarouselModel;

    invoke-direct/range {v0 .. v9}, Lcom/htc/fragment/widget/BinAdapter;-><init>(Landroid/content/Context;ILandroid/net/Uri;Landroid/database/Cursor;[Ljava/lang/String;[ILcom/htc/fragment/content/NotifyingAsyncQueryHandler;Lcom/htc/fragment/widget/CarouselModel;I)V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryAdapter:Lcom/htc/fragment/widget/BinAdapter;

    new-instance v1, Lcom/htc/fragment/widget/CarouselContentAdapter;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x2090023

    new-array v5, v10, [Ljava/lang/String;

    new-array v6, v10, [I

    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselFragment;->mModel:Lcom/htc/fragment/widget/CarouselModel;

    invoke-direct/range {v1 .. v7}, Lcom/htc/fragment/widget/CarouselContentAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[ILcom/htc/fragment/widget/CarouselModel;)V

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mContentAdapter:Lcom/htc/fragment/widget/CarouselContentAdapter;

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryAdapter:Lcom/htc/fragment/widget/BinAdapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->eresources:Landroid/content/res/Resources;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryAdapter:Lcom/htc/fragment/widget/BinAdapter;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->eresources:Landroid/content/res/Resources;

    iput-object v1, v0, Lcom/htc/fragment/widget/BinAdapter;->eresources:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mContentAdapter:Lcom/htc/fragment/widget/CarouselContentAdapter;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->eresources:Landroid/content/res/Resources;

    iput-object v1, v0, Lcom/htc/fragment/widget/CarouselContentAdapter;->eresources:Landroid/content/res/Resources;

    :cond_3
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDragLayer:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselWidget;->setDragger(Lcom/htc/fragment/widget/DragController;)V

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselWidget;->setDrawer(Lcom/htc/fragment/widget/CarouselSlidingDrawer;)V

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0, p0}, Lcom/htc/fragment/widget/CarouselWidget;->setFragment(Lcom/htc/fragment/widget/CarouselFragment;)V

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mBinGridView:Lcom/htc/fragment/widget/BinGridView;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGridAdapter:Lcom/htc/fragment/widget/BinAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/BinGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryAdapter:Lcom/htc/fragment/widget/BinAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselWidget;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mContentRoot:Lcom/htc/fragment/widget/CarouselContentGallery;

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselWidget;->setContentGallery(Lcom/htc/fragment/widget/CarouselContentGallery;)V

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mContentRoot:Lcom/htc/fragment/widget/CarouselContentGallery;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mContentAdapter:Lcom/htc/fragment/widget/CarouselContentAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselContentGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawerStatusListener:Lcom/htc/fragment/widget/CarouselFragment$EditModeDrawerListener;

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->setOnDrawerOpenListener(Lcom/htc/fragment/widget/CarouselSlidingDrawer$OnDrawerOpenListener;)V

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawerStatusListener:Lcom/htc/fragment/widget/CarouselFragment$EditModeDrawerListener;

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->setOnDrawerCloseListener(Lcom/htc/fragment/widget/CarouselSlidingDrawer$OnDrawerCloseListener;)V

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawerStatusListener:Lcom/htc/fragment/widget/CarouselFragment$EditModeDrawerListener;

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->setOnDrawerScrollListener(Lcom/htc/fragment/widget/CarouselSlidingDrawer$OnDrawerScrollListener;)V

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawerStatusListener:Lcom/htc/fragment/widget/CarouselFragment$EditModeDrawerListener;

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->setOnEditModeDrawerStateListener(Lcom/htc/fragment/widget/CarouselSlidingDrawer$OnEditModeDrawerStateListener;)V

    const v0, 0x20401d2

    invoke-direct {p0, v0}, Lcom/htc/fragment/widget/CarouselFragment;->setDrawerTitle(I)V

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselWidget;->initLayout()V

    iget v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mFeatures:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    invoke-virtual {p0, v9}, Lcom/htc/fragment/widget/CarouselFragment;->setMemoryMode(Z)V

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mHandler:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    invoke-virtual {v0, v9}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;->setNoEditorMode(Z)V

    :goto_0
    return-void

    :cond_4
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0, v9}, Lcom/htc/fragment/widget/CarouselWidget;->setEditorMode(Z)V

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mHandler:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    invoke-virtual {v0, v10}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;->setNoEditorMode(Z)V

    goto :goto_0
.end method

.method private onCarouselCheck()V
    .locals 2

    const v0, 0x1020012

    invoke-direct {p0, v0}, Lcom/htc/fragment/widget/CarouselFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/CarouselHost;

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mHostOnTabChangeListener:Lcom/htc/fragment/widget/CarouselHost$OnTabChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mHostOnTabChangeListener:Lcom/htc/fragment/widget/CarouselHost$OnTabChangeListener;

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselHost;->setOnTabChangedListener(Lcom/htc/fragment/widget/CarouselHost$OnTabChangeListener;)V

    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->eresources:Landroid/content/res/Resources;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->eresources:Landroid/content/res/Resources;

    iput-object v1, v0, Lcom/htc/fragment/widget/CarouselHost;->eresources:Landroid/content/res/Resources;

    :cond_1
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/fragment/widget/CarouselFragment;->printViewTree(Landroid/view/ViewGroup;I)V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your content must have a CarouselHost whose id attribute is \'android.R.id.tabhost\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselHost;->setup(Lcom/htc/fragment/app/LocalFragmentManager;)V

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    iget-boolean v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mIsProviderAp:Z

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselHost;->setIsProviderAp(Z)V

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v0, p0}, Lcom/htc/fragment/widget/CarouselHost;->setCarousel(Lcom/htc/fragment/widget/CarouselFragment;)V

    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mIsProviderAp:Z

    if-nez v0, :cond_3

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselFragment;->requestCarouselFeature(I)Z

    :cond_3
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselFragment;->initalPoolNWidget()V

    return-void
.end method

.method private onContentChanged()V
    .locals 2

    iget v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mFeatures:I

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselFragment;->onCarouselCheck()V

    :cond_0
    return-void
.end method

.method private printViewTree(Landroid/view/ViewGroup;I)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CarouselTraceView] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/fragment/widget/CarouselLog;->d(Ljava/lang/String;)V

    add-int/lit8 v2, v1, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    add-int/lit8 v3, p2, 0x1

    invoke-direct {p0, v0, v3}, Lcom/htc/fragment/widget/CarouselFragment;->printViewTree(Landroid/view/ViewGroup;I)V

    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CarouselTraceView] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/fragment/widget/CarouselLog;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private final setContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)V
    .locals 4

    iget v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mFeatures:I

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/fragment/widget/CarouselFragment;->super_setContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)V

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselFragment;->requestCarouselFeature(I)Z

    invoke-direct {p0, p1, p2}, Lcom/htc/fragment/widget/CarouselFragment;->ensureCarouselHost(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    const v2, 0x2020069

    invoke-direct {p0, v2}, Lcom/htc/fragment/widget/CarouselFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselFragment;->onCarouselCheck()V

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "something wrong in the layout!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private final setContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 2

    const/4 v1, -0x1

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/htc/fragment/widget/CarouselFragment;->setContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    iget v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mFeatures:I

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/fragment/widget/CarouselFragment;->super_setContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselFragment;->requestCarouselFeature(I)Z

    invoke-direct {p0, p1, p2}, Lcom/htc/fragment/widget/CarouselFragment;->ensureCarouselHost(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    const v2, 0x2020069

    invoke-direct {p0, v2}, Lcom/htc/fragment/widget/CarouselFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p3, p4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselFragment;->onCarouselCheck()V

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "something wrong in the layout!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private setDrawerTitle(I)V
    .locals 2

    const v1, 0x2020065

    invoke-direct {p0, v1}, Lcom/htc/fragment/widget/CarouselFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private setOrientation()V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->display:Landroid/view/Display;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->display:Landroid/view/Display;

    :cond_1
    sget-boolean v0, Lcom/htc/fragment/widget/CarouselFragment;->disableLandscape:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->display:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->display:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->isPortrait:Z

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setTipInDB()Z
    .locals 11

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mTaskUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/tips"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v8, 0x1

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "first_time"

    const-string v3, "1"

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move v2, v8

    :goto_0
    return v2

    :catch_0
    move-exception v7

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v2, v10

    goto :goto_0
.end method

.method private final super_setContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mRootView:Landroid/view/View;

    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselFragment;->onContentChanged()V

    return-void
.end method

.method private final super_setContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    iput-object p3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mRootView:Landroid/view/View;

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselFragment;->onContentChanged()V

    return-void
.end method


# virtual methods
.method addAndSyncTask(Lcom/htc/fragment/widget/TaskInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mModel:Lcom/htc/fragment/widget/CarouselModel;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/htc/fragment/widget/CarouselModel;->addTaskToDatabase(Landroid/content/Context;Lcom/htc/fragment/widget/TaskInfo;)V

    return-void
.end method

.method public beginTransaction()V
    .locals 2

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mHandler:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mTransactionCounter:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mHandler:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;->setToQueueMode(Z)V

    :cond_0
    iget v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mTransactionCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mTransactionCounter:I

    return-void
.end method

.method public dispatchRestart()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dispatchRestart()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {v0}, Lcom/htc/fragment/app/LocalFragmentManager;->dispatchRestart()V

    return-void
.end method

.method public endTransaction()V
    .locals 2

    iget v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mTransactionCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mTransactionCounter:I

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mModel:Lcom/htc/fragment/widget/CarouselModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mModel:Lcom/htc/fragment/widget/CarouselModel;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselModel;->startProcessingOperations(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryAdapter:Lcom/htc/fragment/widget/BinAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getWidgetAdapterCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mMemoryMode:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->startQuery()V

    :cond_0
    iget v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mTransactionCounter:I

    if-gez v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mTransactionCounter:I

    :cond_1
    return-void
.end method

.method enqueueAction(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mQueuedActions:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mQueuedActions:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mQueuedActions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected enterEditMode()V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->isMemoryMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselHost;->switchPanelToPositive()V

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselWidget;->openDrawer()V

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->showCarousel()V

    :cond_0
    return-void
.end method

.method executeQueuedActions()V
    .locals 7

    iget-object v6, p0, Lcom/htc/fragment/widget/CarouselFragment;->mQueuedActions:Ljava/util/List;

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->isDetached()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->isAdded()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->isRemoving()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/htc/fragment/widget/CarouselFragment;->mQueuedActions:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-array v1, v6, [Ljava/lang/Runnable;

    iget-object v6, p0, Lcom/htc/fragment/widget/CarouselFragment;->mQueuedActions:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v6, p0, Lcom/htc/fragment/widget/CarouselFragment;->mQueuedActions:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object v2, v1

    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v2, v3

    invoke-virtual {v5, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method protected exitEditMode()V
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->isMemoryMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->isOpened()Z

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->setDragDropAnimationInitState()V

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->close()V

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->hideCarousel()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->showCarousel()V

    goto :goto_0
.end method

.method getBinAdapterCursor()Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mBinGridView:Lcom/htc/fragment/widget/BinGridView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mBinGridView:Lcom/htc/fragment/widget/BinGridView;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/BinGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/BinAdapter;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mBinGridView:Lcom/htc/fragment/widget/BinGridView;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/BinGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/BinAdapter;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/BinAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method public getCarouselHost()Lcom/htc/fragment/widget/CarouselHost;
    .locals 3

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CarouselFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onCreateView()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    return-object v0
.end method

.method public getCarouselWidget()Lcom/htc/fragment/widget/CarouselWidget;
    .locals 3

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselHost;->getCarouselWidget()Lcom/htc/fragment/widget/CarouselWidget;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CarouselFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onCreateView()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselHost;->getCarouselWidget()Lcom/htc/fragment/widget/CarouselWidget;

    move-result-object v0

    return-object v0
.end method

.method getGId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGID:Ljava/lang/String;

    return-object v0
.end method

.method getLocalFragmentManager()Lcom/htc/fragment/app/LocalFragmentManager;
    .locals 1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    return-object v0
.end method

.method getModel()Lcom/htc/fragment/widget/CarouselModel;
    .locals 1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mModel:Lcom/htc/fragment/widget/CarouselModel;

    return-object v0
.end method

.method getStateMode()I
    .locals 1

    iget v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mStateMode:I

    return v0
.end method

.method getTabContentViewId(Ljava/lang/String;)I
    .locals 5

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {v3, p1}, Lcom/htc/fragment/app/LocalFragmentManager;->getFragment(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {v3, v1}, Lcom/htc/fragment/app/LocalFragmentManager;->getContainerId(Landroid/app/Fragment;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->tabContentViewIds:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return v0

    :cond_0
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->tabContentViewIds:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_1

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->tabContentViewIds:Ljava/util/Map;

    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselFragment;->createTabContentViewId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method getWidgetAdapterCursor()Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/BinAdapter;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/BinAdapter;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/BinAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method hideCarousel()V
    .locals 13

    const/4 v12, 0x0

    const/high16 v3, 0x3f80

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    invoke-virtual {v4}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->isOpened()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v4}, Lcom/htc/fragment/widget/CarouselWidget;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselFragment;->setOrientation()V

    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/htc/fragment/widget/CarouselWidget;->setVisibility(I)V

    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v9

    check-cast v9, Lcom/android/internal/app/ActionBarImpl;

    invoke-virtual {v9}, Lcom/android/internal/app/ActionBarImpl;->isEnableHTCActionBar()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v9, v12}, Lcom/android/internal/app/ActionBarImpl;->enableHTCLandscape(Z)V

    :cond_0
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v10, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-boolean v4, p0, Lcom/htc/fragment/widget/CarouselFragment;->isPortrait:Z

    if-eqz v4, :cond_2

    move v4, v2

    :goto_0
    iget-boolean v5, p0, Lcom/htc/fragment/widget/CarouselFragment;->isPortrait:Z

    if-eqz v5, :cond_3

    move v8, v3

    :goto_1
    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    new-instance v11, Landroid/view/animation/AnimationSet;

    invoke-direct {v11, v12}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v11, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v11, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {v11, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v1, v11}, Lcom/htc/fragment/widget/CarouselWidget;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void

    :cond_2
    move v4, v3

    goto :goto_0

    :cond_3
    move v8, v2

    goto :goto_1
.end method

.method isDestroy()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mIsDestroy:Z

    return v0
.end method

.method protected isInEditMode()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->isOpened()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isMemoryMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mMemoryMode:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->setDragDropAnimationInitState()V

    return-void
.end method

.method onContentCursorBuildComplete(Landroid/database/Cursor;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mContentAdapter:Lcom/htc/fragment/widget/CarouselContentAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mContentAdapter:Lcom/htc/fragment/widget/CarouselContentAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/fragment/widget/CarouselContentAdapter;->changeCursor(Landroid/database/Cursor;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mIsDestroy:Z

    const-string v0, "CarouselFragment onCreate"

    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselLog;->v(Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mTaskUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "gId"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mTaskUri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mModel:Lcom/htc/fragment/widget/CarouselModel;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mTaskUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselModel;->setUri(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mModel:Lcom/htc/fragment/widget/CarouselModel;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselModel;->isProviderAP(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mIsProviderAp:Z

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mRestoring:Z

    :cond_0
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->beginTransaction()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    invoke-direct {p0, p1, p2}, Lcom/htc/fragment/widget/CarouselFragment;->ensureCarouselHost(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dispatchCreateView()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/fragment/widget/CarouselLog;->d(Ljava/lang/String;)V

    if-nez p3, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v3, v0}, Lcom/htc/fragment/widget/CarouselHost;->setBackupCurrentTag(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {v3, v0}, Lcom/htc/fragment/app/LocalFragmentManager;->setCurrentId(Ljava/lang/String;)V

    :cond_0
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    if-eqz v3, :cond_1

    if-eqz p3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselFragment;->mBundleKeyPrefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "drawerOpened"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->setVisibility(I)V

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    invoke-virtual {v3}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->open()V

    :cond_1
    const-string v1, ""

    if-nez p3, :cond_4

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getTag()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getGId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {v3, v1}, Lcom/htc/fragment/app/LocalFragmentManager;->setGlobalId(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {v3, p3}, Lcom/htc/fragment/app/LocalFragmentManager;->dispatchCreateView(Landroid/os/Bundle;)V

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mRootView:Landroid/view/View;

    return-object v3

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselFragment;->mBundleKeyPrefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "currentTab"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->hashCode()I

    move-result v4

    const/16 v5, 0x24

    invoke-static {v4, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselFragment;->mBundleKeyPrefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "globalId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method public onCurrentTabChanged(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCurrentTabChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselLog;->v(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 4

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v0, "CarouselFragment onDestroy"

    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselLog;->v(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " dispatchDestroy("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselLog;->d(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    move v0, v2

    :goto_1
    invoke-virtual {v3, v0}, Lcom/htc/fragment/app/LocalFragmentManager;->dispatchDestroy(Z)V

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    iput-boolean v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mRestoring:Z

    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mMemoryMode:Z

    iput-boolean v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mIsDestroy:Z

    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public onDestroyView()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dispatchDestroyView()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {v0}, Lcom/htc/fragment/app/LocalFragmentManager;->dispatchDestroyView()V

    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mModel:Lcom/htc/fragment/widget/CarouselModel;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselModel;->cleanTasks()V

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGridAdapter:Lcom/htc/fragment/widget/BinAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGridAdapter:Lcom/htc/fragment/widget/BinAdapter;

    invoke-virtual {v0, v2}, Lcom/htc/fragment/widget/BinAdapter;->changeCursor(Landroid/database/Cursor;)V

    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryAdapter:Lcom/htc/fragment/widget/BinAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryAdapter:Lcom/htc/fragment/widget/BinAdapter;

    invoke-virtual {v0, v2}, Lcom/htc/fragment/widget/BinAdapter;->changeCursor(Landroid/database/Cursor;)V

    :cond_1
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mContentAdapter:Lcom/htc/fragment/widget/CarouselContentAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mContentAdapter:Lcom/htc/fragment/widget/CarouselContentAdapter;

    invoke-virtual {v0, v2}, Lcom/htc/fragment/widget/CarouselContentAdapter;->changeCursor(Landroid/database/Cursor;)V

    :cond_2
    return-void
.end method

.method onEditDrawerAboutToOpen()V
    .locals 0

    return-void
.end method

.method onEditDrawerClosed()V
    .locals 5

    const/16 v2, 0x3e9

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->clearFocus()V

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDragLayer:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/CarouselHost;->removeTipBubble()V

    iput v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mStateMode:I

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v1, v2}, Lcom/htc/fragment/widget/CarouselWidget;->setStateMode(I)V

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselHost;->getCurrentTab()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/fragment/widget/CarouselWidget;->onDrawerClosed(I)V

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryAdapter:Lcom/htc/fragment/widget/BinAdapter;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v0

    const-string v1, "system_server"

    invoke-virtual {v0, v1}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v1

    const-string v2, "activity_tabCount"

    invoke-interface {v1, v2}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v1

    const-string v2, "tab_count"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryAdapter:Lcom/htc/fragment/widget/BinAdapter;

    invoke-virtual {v4}, Lcom/htc/fragment/widget/BinAdapter;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    invoke-static {v0}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    invoke-virtual {v0}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    :cond_0
    return-void
.end method

.method onEditDrawerCompleteClose()V
    .locals 0

    return-void
.end method

.method onEditDrawerOpened()V
    .locals 9

    const/16 v8, 0x3ea

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGridAdapter:Lcom/htc/fragment/widget/BinAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGridAdapter:Lcom/htc/fragment/widget/BinAdapter;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/BinAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGridAdapter:Lcom/htc/fragment/widget/BinAdapter;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/BinAdapter;->getHandler()Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    move-result-object v0

    const/16 v1, 0x384

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mTaskUri:Landroid/net/Uri;

    const-string v5, "is_host=0"

    const-string v7, "task_order"

    move-object v4, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselFragment;->setTipInDB()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDragLayer:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselHost;->createTipBubble()V

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDragLayer:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselHost;->showTipBubble()V

    :cond_1
    iput v8, p0, Lcom/htc/fragment/widget/CarouselFragment;->mStateMode:I

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0, v8}, Lcom/htc/fragment/widget/CarouselWidget;->setStateMode(I)V

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselWidget;->onDrawerOpened()V

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->requestFocus()Z

    return-void
.end method

.method onEditScrollEnded()V
    .locals 0

    return-void
.end method

.method onEditScrollStarted()V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->setDragDropAnimationInitState()V

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDragLayer:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselHost;->removeTipBubble()V

    return-void
.end method

.method onExceptionHandle(ILjava/lang/Object;ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "datebase error: dismiss window type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " uri "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " values "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p5, :cond_0

    invoke-virtual {p5}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " selection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " selectionArgs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p7, :cond_1

    invoke-virtual {p7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselLog;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, " null "

    goto :goto_0

    :cond_1
    const-string v0, " null"

    goto :goto_1
.end method

.method public onHiddenChanged(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dispatchHiddenChanged("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {v0, p1}, Lcom/htc/fragment/app/LocalFragmentManager;->dispatchHiddenChanged(Z)V

    return-void
.end method

.method public onPause()V
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "CarouselFragment onPause"

    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselLog;->v(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " dispatchPause()"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselLog;->d(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {v3, v0}, Lcom/htc/fragment/app/LocalFragmentManager;->dispatchPause(Z)V

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->isMemoryMode()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGridAdapter:Lcom/htc/fragment/widget/BinAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGridAdapter:Lcom/htc/fragment/widget/BinAdapter;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/BinAdapter;->getHandler()Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    move-result-object v0

    const/16 v3, 0x384

    invoke-virtual {v0, v3}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;->cancelOperation(I)V

    :cond_1
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryAdapter:Lcom/htc/fragment/widget/BinAdapter;

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mIsStartQueryCalled:Z

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryAdapter:Lcom/htc/fragment/widget/BinAdapter;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/BinAdapter;->getHandler()Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    move-result-object v0

    const/16 v1, 0x385

    invoke-virtual {v0, v1}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;->cancelOperation(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->setDragDropAnimationInitState()V

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->close()V

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    if-ne v0, v2, :cond_5

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->hideCarousel()V

    :cond_3
    :goto_1
    return-void

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->showCarousel()V

    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarouselFragment onResume "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mRestoring:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselLog;->v(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryAdapter:Lcom/htc/fragment/widget/BinAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryAdapter:Lcom/htc/fragment/widget/BinAdapter;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/BinAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->startQuery()V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dispatchResume()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {v0}, Lcom/htc/fragment/app/LocalFragmentManager;->dispatchResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/CarouselHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mBundleKeyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "currentTab"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mBundleKeyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "drawerOpened"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->isOpened()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mBundleKeyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "globalId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {v2}, Lcom/htc/fragment/app/LocalFragmentManager;->getGlobalId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {v1, p1}, Lcom/htc/fragment/app/LocalFragmentManager;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 3

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/CarouselHost;->getBackUpCurrentTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v1, v0}, Lcom/htc/fragment/widget/CarouselHost;->setCurrentTabByTag(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/CarouselHost;->getCurrentTab()I

    move-result v1

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDefaultTab:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDefaultTab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/fragment/widget/CarouselHost;->setCurrentTabByTag(Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->endTransaction()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dispatchStart()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/fragment/widget/CarouselLog;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {v1}, Lcom/htc/fragment/app/LocalFragmentManager;->dispatchStart()V

    return-void

    :cond_2
    iget v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDefaultTabIndex:I

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    iget v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDefaultTabIndex:I

    invoke-virtual {v1, v2}, Lcom/htc/fragment/widget/CarouselHost;->setCurrentTabUtil(I)V

    goto :goto_0
.end method

.method public onTabEndSliding(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onTabStartSliding(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method onTaskSync()V
    .locals 3

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mBinGridView:Lcom/htc/fragment/widget/BinGridView;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/BinGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mModel:Lcom/htc/fragment/widget/CarouselModel;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/htc/fragment/widget/CarouselModel;->syncTasks(Landroid/content/Context;Landroid/widget/BaseAdapter;)V

    return-void
.end method

.method removeTagFromDB(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mModel:Lcom/htc/fragment/widget/CarouselModel;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/htc/fragment/widget/CarouselModel;->removeTagFromDB(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final requestCarouselFeature(I)Z
    .locals 1

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mFeatures:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mFeatures:I

    :cond_0
    iget v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mFeatures:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mFeatures:I

    const/4 v0, 0x1

    return v0
.end method

.method setAlternativeTabName(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 3

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselHost;->isBusy()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselFragment;->enqueueSettingActionIfRequired()V

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->deferredActions:Ljava/util/Map;

    const-string v1, "alternativeTabName"

    new-instance v2, Lcom/htc/fragment/widget/CarouselFragment$4;

    invoke-direct {v2, p0, p1, p2}, Lcom/htc/fragment/widget/CarouselFragment$4;-><init>(Lcom/htc/fragment/widget/CarouselFragment;Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mModel:Lcom/htc/fragment/widget/CarouselModel;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/htc/fragment/widget/CarouselModel;->setAlternativeTabName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method setBinAdapterCursor(Landroid/database/Cursor;)V
    .locals 2

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mBinGridView:Lcom/htc/fragment/widget/BinGridView;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/BinGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v1, v0, Lcom/htc/fragment/widget/BinAdapter;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/htc/fragment/widget/BinAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/fragment/widget/BinAdapter;->changeCursor(Landroid/database/Cursor;)V

    :cond_0
    return-void
.end method

.method public final setCarouselFeatureInt(II)V
    .locals 4

    move v1, p1

    iget v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mFeatures:I

    and-int/2addr v2, v1

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    const v2, 0x202006a

    invoke-direct {p0, v2}, Lcom/htc/fragment/widget/CarouselFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "customViewContainer:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/fragment/widget/CarouselLog;->i(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v2, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0
.end method

.method setCountText(Ljava/lang/String;Ljava/lang/CharSequence;)I
    .locals 3

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselHost;->isBusy()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselFragment;->enqueueSettingActionIfRequired()V

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->deferredActions:Ljava/util/Map;

    const-string v1, "countText"

    new-instance v2, Lcom/htc/fragment/widget/CarouselFragment$3;

    invoke-direct {v2, p0, p1, p2}, Lcom/htc/fragment/widget/CarouselFragment$3;-><init>(Lcom/htc/fragment/widget/CarouselFragment;Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mModel:Lcom/htc/fragment/widget/CarouselModel;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/htc/fragment/widget/CarouselModel;->setCountText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;)I

    move-result v0

    goto :goto_0
.end method

.method setCountVisibility(Ljava/lang/String;Z)I
    .locals 3

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselHost;->isBusy()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselFragment;->enqueueSettingActionIfRequired()V

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->deferredActions:Ljava/util/Map;

    const-string v1, "countVisibility"

    new-instance v2, Lcom/htc/fragment/widget/CarouselFragment$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/htc/fragment/widget/CarouselFragment$2;-><init>(Lcom/htc/fragment/widget/CarouselFragment;Ljava/lang/String;Z)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mModel:Lcom/htc/fragment/widget/CarouselModel;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/htc/fragment/widget/CarouselModel;->setCountTextVisible(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v0

    goto :goto_0
.end method

.method public setDefaultTab(I)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDefaultTab:Ljava/lang/String;

    iput p1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDefaultTabIndex:I

    return-void
.end method

.method public setDefaultTab(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDefaultTab:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDefaultTabIndex:I

    return-void
.end method

.method setDragDropAnimationInitState()V
    .locals 1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDragLayer:Lcom/htc/fragment/widget/CarouselHost;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDragLayer:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselHost;->cancelDrag()V

    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mBinGridView:Lcom/htc/fragment/widget/BinGridView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mBinGridView:Lcom/htc/fragment/widget/BinGridView;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/BinGridView;->initFlags()V

    :cond_1
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselWidget;->forceStopPartialFling()V

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselWidget;->cancelAnimation()V

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselWidget;->initFlags()V

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselWidget;->requestLayout()V

    :cond_2
    return-void
.end method

.method public setEditModeListener(Lcom/htc/fragment/widget/CarouselFragment$EditModeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselFragment;->editModeListener:Lcom/htc/fragment/widget/CarouselFragment$EditModeListener;

    return-void
.end method

.method public setGId(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselFragment;->setGId(Ljava/lang/String;)V

    return-void
.end method

.method public setGId(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mTaskUri:Landroid/net/Uri;

    const-string v1, "gId"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Please invoke setGID() before onCreate(). Invoking in constructor is recommended."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGID:Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getGId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/fragment/app/LocalFragmentManager;->setGlobalId(Ljava/lang/String;)V

    return-void
.end method

.method setMemoryMode(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mMemoryMode:Z

    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mMemoryMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->close()V

    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0, p1}, Lcom/htc/fragment/widget/CarouselWidget;->setMemoryMode(Z)V

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/htc/fragment/widget/CarouselWidget;->setEditorMode(Z)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOnTabChangedListener(Lcom/htc/fragment/widget/CarouselHost$OnTabChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mHostOnTabChangeListener:Lcom/htc/fragment/widget/CarouselHost$OnTabChangeListener;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mHostOnTabChangeListener:Lcom/htc/fragment/widget/CarouselHost$OnTabChangeListener;

    invoke-virtual {v0, p1}, Lcom/htc/fragment/widget/CarouselHost;->setOnTabChangedListener(Lcom/htc/fragment/widget/CarouselHost$OnTabChangeListener;)V

    goto :goto_0
.end method

.method setWidgetAdapterCursor(Landroid/database/Cursor;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/BinAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/fragment/widget/BinAdapter;->changeCursor(Landroid/database/Cursor;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->hideCarousel()V

    :cond_0
    return-void
.end method

.method showCarousel()V
    .locals 13

    const/4 v12, 0x0

    const/high16 v3, 0x3f80

    const/4 v1, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselWidget;->getVisibility()I

    move-result v2

    const/16 v5, 0x8

    if-ne v2, v5, :cond_1

    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselFragment;->setOrientation()V

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v2, v12}, Lcom/htc/fragment/widget/CarouselWidget;->setVisibility(I)V

    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v9

    check-cast v9, Lcom/android/internal/app/ActionBarImpl;

    invoke-virtual {v9}, Lcom/android/internal/app/ActionBarImpl;->isEnableHTCActionBar()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v9, v1}, Lcom/android/internal/app/ActionBarImpl;->enableHTCLandscape(Z)V

    :cond_0
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v10, v4, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->isPortrait:Z

    if-eqz v2, :cond_2

    move v2, v4

    :goto_0
    iget-boolean v5, p0, Lcom/htc/fragment/widget/CarouselFragment;->isPortrait:Z

    if-eqz v5, :cond_3

    move v6, v3

    :goto_1
    move v3, v1

    move v5, v1

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    new-instance v11, Landroid/view/animation/AnimationSet;

    invoke-direct {v11, v12}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v11, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v11, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {v11, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v1, v11}, Lcom/htc/fragment/widget/CarouselWidget;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void

    :cond_2
    move v2, v3

    goto :goto_0

    :cond_3
    move v6, v4

    goto :goto_1
.end method

.method startQuery()V
    .locals 8

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->isMemoryMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryAdapter:Lcom/htc/fragment/widget/BinAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getWidgetAdapterCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mIsStartQueryCalled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mMemoryMode:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryAdapter:Lcom/htc/fragment/widget/BinAdapter;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/BinAdapter;->getHandler()Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    move-result-object v0

    const/16 v1, 0x385

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mTaskUri:Landroid/net/Uri;

    const-string v5, "is_host=1"

    const-string v7, "task_order"

    move-object v4, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mIsStartQueryCalled:Z

    :cond_1
    return-void
.end method

.method updateWidget(I)V
    .locals 2

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselWidget;->setSelection(I)V

    return-void
.end method
