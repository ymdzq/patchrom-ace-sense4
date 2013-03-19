.class public Lcom/htc/fragment/widget/CarouselHost;
.super Landroid/widget/FrameLayout;
.source "CarouselHost.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;
.implements Lcom/htc/fragment/widget/DragController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fragment/widget/CarouselHost$1;,
        Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;,
        Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;,
        Lcom/htc/fragment/widget/CarouselHost$TabContainer;,
        Lcom/htc/fragment/widget/CarouselHost$FakeScreen;,
        Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;,
        Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;,
        Lcom/htc/fragment/widget/CarouselHost$IndicatorStrategy;,
        Lcom/htc/fragment/widget/CarouselHost$TabSpec;,
        Lcom/htc/fragment/widget/CarouselHost$OnTabBeforeChangeListener;,
        Lcom/htc/fragment/widget/CarouselHost$OnTabChangeListener;
    }
.end annotation


# static fields
.field static BACKGROUND_DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

.field public static final TASK_STATE_DEFAULT:I = 0x63

.field public static final TASK_STATE_POOL:I = 0x64

.field public static final TASK_STATE_UNREMOVABLE:I = 0x65


# instance fields
.field private attached:Z

.field private contentHeight:I

.field private contentWidth:I

.field private customSpace:I

.field private customViewContainer:Landroid/widget/FrameLayout;

.field private display:Landroid/view/Display;

.field private enableCustomView:Z

.field eresources:Landroid/content/res/Resources;

.field private isFullScreen:Z

.field private isPortrait:Z

.field protected mBackupCurrentTag:Ljava/lang/String;

.field private mBitmapOffsetX:I

.field private mBitmapOffsetY:I

.field private mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

.field private final mContext:Landroid/content/Context;

.field private mCorOffsetX:F

.field private mCorOffsetY:F

.field protected mCurrentTabTag:Ljava/lang/String;

.field private mCurrentView:Landroid/view/View;

.field private mDragInfo:Ljava/lang/Object;

.field private mDragRect:Landroid/graphics/Rect;

.field private mDragSource:Lcom/htc/fragment/widget/DragSource;

.field private mDragView:Landroid/widget/FrameLayout;

.field private mDragging:Z

.field private mDropAnimationRunnable:Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;

.field private final mDropCoordinates:[I

.field private mDropTarget:Lcom/htc/fragment/widget/DropTarget;

.field private mHookPanel:Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;

.field private mIsProviderAP:Z

.field private mLastDropTarget:Lcom/htc/fragment/widget/DropTarget;

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

.field private mOnTabChangeListener:Lcom/htc/fragment/widget/CarouselHost$OnTabChangeListener;

.field private mOriginator:Landroid/view/View;

.field private mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

.field private final mRect:Landroid/graphics/Rect;

.field private mShouldDrop:Z

.field private mShouldStopFling:Z

.field private mShouldThrowEvent:Z

.field private mSourceX:F

.field private mSourceY:F

.field private mTabContent:Lcom/htc/fragment/widget/CarouselContentGallery;

.field private mTabPrefix:Ljava/lang/String;

.field private mTouchOffsetX:F

.field private mTouchOffsetY:F

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private resetBound:Z

.field private setCurrentTabBeforeAttached:Ljava/lang/Object;

.field private shadowOverlay:Landroid/graphics/drawable/Drawable;

.field private tipBubble:Landroid/widget/TextView;

.field private viewSwitcher:Lcom/htc/fragment/widget/CarouselViewSwitcher;

.field private widgetSpace:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "TabBackground"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/htc/fragment/widget/CarouselHost;->BACKGROUND_DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    iput-boolean v3, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragging:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mRect:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mDropCoordinates:[I

    new-instance v0, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;

    invoke-direct {v0, p0}, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;-><init>(Lcom/htc/fragment/widget/CarouselHost;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mDropAnimationRunnable:Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;

    iput v2, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    iput v2, p0, Lcom/htc/fragment/widget/CarouselHost;->customSpace:I

    iput-boolean v4, p0, Lcom/htc/fragment/widget/CarouselHost;->resetBound:Z

    iput-boolean v4, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    iput-boolean v3, p0, Lcom/htc/fragment/widget/CarouselHost;->isFullScreen:Z

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->display:Landroid/view/Display;

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->shadowOverlay:Landroid/graphics/drawable/Drawable;

    iput-boolean v3, p0, Lcom/htc/fragment/widget/CarouselHost;->enableCustomView:Z

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->customViewContainer:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->setCurrentTabBeforeAttached:Ljava/lang/Object;

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->eresources:Landroid/content/res/Resources;

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    iput v2, p0, Lcom/htc/fragment/widget/CarouselHost;->contentWidth:I

    iput v2, p0, Lcom/htc/fragment/widget/CarouselHost;->contentHeight:I

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->viewSwitcher:Lcom/htc/fragment/widget/CarouselViewSwitcher;

    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselHost;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselHost;->setOrientation()V

    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselHost;->initCarouselHost()V

    iput-boolean v3, p0, Lcom/htc/fragment/widget/CarouselHost;->mShouldThrowEvent:Z

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mBackupCurrentTag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    iput-boolean v3, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragging:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mRect:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mDropCoordinates:[I

    new-instance v0, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;

    invoke-direct {v0, p0}, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;-><init>(Lcom/htc/fragment/widget/CarouselHost;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mDropAnimationRunnable:Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;

    iput v2, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    iput v2, p0, Lcom/htc/fragment/widget/CarouselHost;->customSpace:I

    iput-boolean v4, p0, Lcom/htc/fragment/widget/CarouselHost;->resetBound:Z

    iput-boolean v4, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    iput-boolean v3, p0, Lcom/htc/fragment/widget/CarouselHost;->isFullScreen:Z

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->display:Landroid/view/Display;

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->shadowOverlay:Landroid/graphics/drawable/Drawable;

    iput-boolean v3, p0, Lcom/htc/fragment/widget/CarouselHost;->enableCustomView:Z

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->customViewContainer:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->setCurrentTabBeforeAttached:Ljava/lang/Object;

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->eresources:Landroid/content/res/Resources;

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    iput v2, p0, Lcom/htc/fragment/widget/CarouselHost;->contentWidth:I

    iput v2, p0, Lcom/htc/fragment/widget/CarouselHost;->contentHeight:I

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->viewSwitcher:Lcom/htc/fragment/widget/CarouselViewSwitcher;

    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselHost;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselHost;->setOrientation()V

    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselHost;->initCarouselHost()V

    iput-boolean v3, p0, Lcom/htc/fragment/widget/CarouselHost;->mShouldThrowEvent:Z

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mBackupCurrentTag:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/fragment/widget/CarouselHost;)Lcom/htc/fragment/widget/CarouselContentGallery;
    .locals 1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mTabContent:Lcom/htc/fragment/widget/CarouselContentGallery;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/fragment/widget/CarouselHost;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/fragment/widget/CarouselHost;)Lcom/htc/fragment/widget/CarouselFragment;
    .locals 1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/fragment/widget/CarouselHost;)Lcom/htc/fragment/app/LocalFragmentManager;
    .locals 1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/fragment/widget/CarouselHost;)Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mHookPanel:Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/htc/fragment/widget/CarouselHost;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/fragment/widget/CarouselHost;->mShouldThrowEvent:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/htc/fragment/widget/CarouselHost;)Lcom/htc/fragment/widget/DragSource;
    .locals 1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragSource:Lcom/htc/fragment/widget/DragSource;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/fragment/widget/CarouselHost;)Lcom/htc/fragment/widget/DropTarget;
    .locals 1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mDropTarget:Lcom/htc/fragment/widget/DropTarget;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/fragment/widget/CarouselHost;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mShouldStopFling:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/htc/fragment/widget/CarouselHost;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/fragment/widget/CarouselHost;->mShouldStopFling:Z

    return p1
.end method

.method static synthetic access$2000(Lcom/htc/fragment/widget/CarouselHost;FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/htc/fragment/widget/CarouselHost;->moveIndicator(FF)V

    return-void
.end method

.method private addTab(Lcom/htc/fragment/widget/CarouselHost$TabSpec;Z)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    #getter for: Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mIndicatorStrategy:Lcom/htc/fragment/widget/CarouselHost$IndicatorStrategy;
    invoke-static {p1}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->access$100(Lcom/htc/fragment/widget/CarouselHost$TabSpec;)Lcom/htc/fragment/widget/CarouselHost$IndicatorStrategy;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "you must specify a way to create the tab indicator."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    #getter for: Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;
    invoke-static {p1}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/fragment/widget/CarouselHost$TabSpec;)Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "you must specify a way to create the tab content"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    iget-boolean v3, p0, Lcom/htc/fragment/widget/CarouselHost;->mIsProviderAP:Z

    if-eqz v3, :cond_2

    new-instance v0, Lcom/htc/fragment/widget/TaskInfo;

    invoke-direct {v0}, Lcom/htc/fragment/widget/TaskInfo;-><init>()V

    #getter for: Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mIndicatorStrategy:Lcom/htc/fragment/widget/CarouselHost$IndicatorStrategy;
    invoke-static {p1}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->access$100(Lcom/htc/fragment/widget/CarouselHost$TabSpec;)Lcom/htc/fragment/widget/CarouselHost$IndicatorStrategy;

    move-result-object v1

    check-cast v1, Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

    invoke-virtual {v3}, Lcom/htc/fragment/widget/CarouselFragment;->getGId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/htc/fragment/widget/TaskInfo;->gId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/htc/fragment/widget/TaskInfo;->taskTag:Ljava/lang/String;

    #getter for: Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->mLabelResource:Landroid/content/Intent$ShortcutIconResource;
    invoke-static {v1}, Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->access$200(Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v3

    iget-object v3, v3, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    iput-object v3, v0, Lcom/htc/fragment/widget/TaskInfo;->taskName:Ljava/lang/String;

    #getter for: Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->mIconReource:Landroid/content/Intent$ShortcutIconResource;
    invoke-static {v1}, Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->access$300(Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v3

    iget-object v3, v3, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    iput-object v3, v0, Lcom/htc/fragment/widget/TaskInfo;->resPackage:Ljava/lang/String;

    #getter for: Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->mIconReource:Landroid/content/Intent$ShortcutIconResource;
    invoke-static {v1}, Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->access$300(Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v3

    iget-object v3, v3, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    iput-object v3, v0, Lcom/htc/fragment/widget/TaskInfo;->icon:Ljava/lang/String;

    #getter for: Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->mSelectedIconResource:Landroid/content/Intent$ShortcutIconResource;
    invoke-static {v1}, Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->access$400(Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v3

    iget-object v3, v3, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    iput-object v3, v0, Lcom/htc/fragment/widget/TaskInfo;->selectedIcon:Ljava/lang/String;

    #getter for: Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->mOverylayResource:Landroid/content/Intent$ShortcutIconResource;
    invoke-static {v1}, Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->access$500(Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v3

    iget-object v3, v3, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    iput-object v3, v0, Lcom/htc/fragment/widget/TaskInfo;->overlay:Ljava/lang/String;

    #getter for: Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;
    invoke-static {p1}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/fragment/widget/CarouselHost$TabSpec;)Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;

    move-result-object v2

    check-cast v2, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;

    #getter for: Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->mIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->access$700(Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/htc/fragment/widget/TaskInfo;->intentUri:Ljava/lang/String;

    iput v4, v0, Lcom/htc/fragment/widget/TaskInfo;->isHost:I

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getHostCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/htc/fragment/widget/TaskInfo;->taskOrder:I

    if-ne p2, v4, :cond_3

    iput v4, v0, Lcom/htc/fragment/widget/TaskInfo;->isRemovable:I

    :goto_0
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

    invoke-virtual {v3, v0}, Lcom/htc/fragment/widget/CarouselFragment;->addAndSyncTask(Lcom/htc/fragment/widget/TaskInfo;)V

    :cond_2
    return-void

    :cond_3
    iput v5, v0, Lcom/htc/fragment/widget/TaskInfo;->isRemovable:I

    goto :goto_0
.end method

.method private addTabUtil(Ljava/lang/String;Landroid/content/Context;IIIILandroid/content/Intent;Z)V
    .locals 10

    iget-object v6, p0, Lcom/htc/fragment/widget/CarouselHost;->eresources:Landroid/content/res/Resources;

    if-nez v6, :cond_0

    invoke-static {p2, p3}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v5

    invoke-virtual {p0, p1}, Lcom/htc/fragment/widget/CarouselHost;->newTabSpec(Ljava/lang/String;)Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    move-result-object v6

    invoke-static {p2, p4}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v7

    invoke-static {p2, p5}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v8

    move/from16 v0, p6

    invoke-static {p2, v0}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v9

    invoke-virtual {v6, v5, v7, v8, v9}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->setIndicator(Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;)Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    move-result-object v6

    move-object/from16 v0, p7

    invoke-virtual {v6, v0, v5}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->setContent(Landroid/content/Intent;Landroid/content/Intent$ShortcutIconResource;)Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    move-result-object v4

    move/from16 v0, p8

    invoke-direct {p0, v4, v0}, Lcom/htc/fragment/widget/CarouselHost;->addTab(Lcom/htc/fragment/widget/CarouselHost$TabSpec;Z)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v1}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    new-instance v3, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v3}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    new-instance v5, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v5}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    new-instance v2, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v2}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    const-string v6, "fake package"

    iput-object v6, v1, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/fragment/widget/CarouselHost;->eresources:Landroid/content/res/Resources;

    invoke-virtual {v6, p5}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    const-string v6, "fake package"

    iput-object v6, v3, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/fragment/widget/CarouselHost;->eresources:Landroid/content/res/Resources;

    invoke-virtual {v6, p4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    const-string v6, "fake package"

    iput-object v6, v5, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/fragment/widget/CarouselHost;->eresources:Landroid/content/res/Resources;

    invoke-virtual {v6, p3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    const-string v6, "fake package"

    iput-object v6, v2, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/fragment/widget/CarouselHost;->eresources:Landroid/content/res/Resources;

    move/from16 v0, p6

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/htc/fragment/widget/CarouselHost;->newTabSpec(Ljava/lang/String;)Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    move-result-object v6

    invoke-virtual {v6, v5, v3, v1, v2}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->setIndicator(Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;)Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    move-result-object v6

    move-object/from16 v0, p7

    invoke-virtual {v6, v0, v5}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->setContent(Landroid/content/Intent;Landroid/content/Intent$ShortcutIconResource;)Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    move-result-object v4

    move/from16 v0, p8

    invoke-direct {p0, v4, v0}, Lcom/htc/fragment/widget/CarouselHost;->addTab(Lcom/htc/fragment/widget/CarouselHost$TabSpec;Z)V

    goto :goto_0
.end method

.method private createDragView(Landroid/view/View;)V
    .locals 13

    new-instance v9, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v9}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v9, p0, Lcom/htc/fragment/widget/CarouselHost;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v9, p0, Lcom/htc/fragment/widget/CarouselHost;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v10, 0x33

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-eqz v9, :cond_2

    const/4 v9, 0x2

    new-array v2, v9, [I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v9, p0, Lcom/htc/fragment/widget/CarouselHost;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v10, 0x0

    aget v10, v2, v10

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v9, p0, Lcom/htc/fragment/widget/CarouselHost;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v10, 0x1

    aget v10, v2, v10

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_0
    iget v9, p0, Lcom/htc/fragment/widget/CarouselHost;->contentWidth:I

    if-ltz v9, :cond_0

    iget v9, p0, Lcom/htc/fragment/widget/CarouselHost;->contentHeight:I

    if-gez v9, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const v9, 0x208019e

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const v9, 0x208019f

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    iget v10, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v10

    iget v10, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    iput v9, p0, Lcom/htc/fragment/widget/CarouselHost;->contentWidth:I

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    iget v10, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v10

    iget v10, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    iput v9, p0, Lcom/htc/fragment/widget/CarouselHost;->contentHeight:I

    :cond_1
    iget-object v10, p0, Lcom/htc/fragment/widget/CarouselHost;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v9, p0, Lcom/htc/fragment/widget/CarouselHost;->contentWidth:I

    if-gtz v9, :cond_3

    const/4 v9, -0x2

    :goto_1
    iput v9, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v10, p0, Lcom/htc/fragment/widget/CarouselHost;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v9, p0, Lcom/htc/fragment/widget/CarouselHost;->contentHeight:I

    if-gtz v9, :cond_4

    const/4 v9, -0x2

    :goto_2
    iput v9, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v9, p0, Lcom/htc/fragment/widget/CarouselHost;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v10, 0x398

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v9, p0, Lcom/htc/fragment/widget/CarouselHost;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v10, 0x0

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v9, p0, Lcom/htc/fragment/widget/CarouselHost;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v10, -0x3

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v9, p0, Lcom/htc/fragment/widget/CarouselHost;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x2090022

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/htc/fragment/widget/CarouselFrameLayout;

    const v9, 0x2020062

    invoke-virtual {v8, v9}, Lcom/htc/fragment/widget/CarouselFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v9, p0, Lcom/htc/fragment/widget/CarouselHost;->mOriginator:Landroid/view/View;

    const v10, 0x2020061

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/fragment/widget/CarouselTextView;

    const v9, 0x2020061

    invoke-virtual {v8, v9}, Lcom/htc/fragment/widget/CarouselFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/fragment/widget/CarouselTextView;

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lcom/htc/fragment/widget/CarouselTextView;->enableForceSingleLine(Z)V

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/htc/fragment/widget/CarouselTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/htc/fragment/widget/CarouselTextView;->setHorizontalFadingEdgeEnabled(Z)V

    invoke-virtual {v3}, Lcom/htc/fragment/widget/CarouselTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/htc/fragment/widget/CarouselTextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v9, 0x0

    invoke-virtual {v3}, Lcom/htc/fragment/widget/CarouselTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v10, v10, v11

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v6, v9, v10, v11, v12}, Lcom/htc/fragment/widget/CarouselTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v9, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragInfo:Ljava/lang/Object;

    check-cast v9, Lcom/htc/fragment/widget/TaskInfo;

    iget v9, v9, Lcom/htc/fragment/widget/TaskInfo;->isRemovable:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    const/4 v4, 0x1

    :goto_3
    if-nez v4, :cond_6

    iget-object v9, p0, Lcom/htc/fragment/widget/CarouselHost;->mContext:Landroid/content/Context;

    const-string v10, "common_subnav_tab_rearrange_unremoveable"

    const v11, 0x208019f

    invoke-static {v9, v10, v11}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/htc/fragment/widget/CarouselFrameLayout;->setBackgroundResource(I)V

    :goto_4
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string/jumbo v10, "window"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    iput-object v9, p0, Lcom/htc/fragment/widget/CarouselHost;->mWindowManager:Landroid/view/WindowManager;

    iget-object v9, p0, Lcom/htc/fragment/widget/CarouselHost;->mWindowManager:Landroid/view/WindowManager;

    iget-object v10, p0, Lcom/htc/fragment/widget/CarouselHost;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v9, v8, v10}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v8, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragView:Landroid/widget/FrameLayout;

    iget-object v9, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragView:Landroid/widget/FrameLayout;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void

    :cond_2
    iget-object v9, p0, Lcom/htc/fragment/widget/CarouselHost;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v10, 0x0

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v9, p0, Lcom/htc/fragment/widget/CarouselHost;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v10, 0x0

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_0

    :cond_3
    iget v9, p0, Lcom/htc/fragment/widget/CarouselHost;->contentWidth:I

    goto/16 :goto_1

    :cond_4
    iget v9, p0, Lcom/htc/fragment/widget/CarouselHost;->contentHeight:I

    goto/16 :goto_2

    :cond_5
    const/4 v4, 0x0

    goto :goto_3

    :cond_6
    iget-object v9, p0, Lcom/htc/fragment/widget/CarouselHost;->mContext:Landroid/content/Context;

    const-string v10, "common_subnav_tab_rearrange_removeable"

    const v11, 0x208019d

    invoke-static {v9, v10, v11}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/htc/fragment/widget/CarouselFrameLayout;->setBackgroundResource(I)V

    goto :goto_4
.end method

.method private drop(FF)Z
    .locals 12

    const/4 v11, -0x1

    const/4 v10, 0x0

    const/4 v9, 0x1

    iget v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mLastMotionX:F

    iget v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetX:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mBitmapOffsetX:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mSourceX:F

    iget v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mLastMotionY:F

    iget v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetY:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mBitmapOffsetY:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mSourceY:F

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->invalidate()V

    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mDropCoordinates:[I

    float-to-int v0, p1

    float-to-int v1, p2

    invoke-virtual {p0, v0, v1, v7}, Lcom/htc/fragment/widget/CarouselHost;->findDropTarget(II[I)Lcom/htc/fragment/widget/DropTarget;

    move-result-object v8

    instance-of v0, v8, Lcom/htc/fragment/widget/BinGridView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragSource:Lcom/htc/fragment/widget/DragSource;

    instance-of v0, v0, Lcom/htc/fragment/widget/BinGridView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselHost;->setDragBinGridViewToFalse()V

    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragSource:Lcom/htc/fragment/widget/DragSource;

    instance-of v0, v0, Lcom/htc/fragment/widget/BinGridView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselWidget;->realign()V

    :cond_1
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mLastDropTarget:Lcom/htc/fragment/widget/DropTarget;

    if-eqz v0, :cond_2

    if-eqz v8, :cond_2

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mLastDropTarget:Lcom/htc/fragment/widget/DropTarget;

    if-eq v0, v8, :cond_2

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mLastDropTarget:Lcom/htc/fragment/widget/DropTarget;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragSource:Lcom/htc/fragment/widget/DragSource;

    aget v2, v7, v10

    aget v3, v7, v9

    iget v4, p0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetX:F

    float-to-int v4, v4

    iget v5, p0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetY:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v0 .. v6}, Lcom/htc/fragment/widget/DropTarget;->onDragExit(Lcom/htc/fragment/widget/DragSource;IIIILjava/lang/Object;)V

    :cond_2
    iput-object v8, p0, Lcom/htc/fragment/widget/CarouselHost;->mDropTarget:Lcom/htc/fragment/widget/DropTarget;

    if-eqz v8, :cond_9

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragSource:Lcom/htc/fragment/widget/DragSource;

    aget v2, v7, v10

    aget v3, v7, v9

    iget v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetX:F

    float-to-int v4, v0

    iget v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetY:F

    float-to-int v5, v0

    iget-object v6, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragInfo:Ljava/lang/Object;

    move-object v0, v8

    invoke-interface/range {v0 .. v6}, Lcom/htc/fragment/widget/DropTarget;->onDragExit(Lcom/htc/fragment/widget/DragSource;IIIILjava/lang/Object;)V

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragSource:Lcom/htc/fragment/widget/DragSource;

    aget v2, v7, v10

    aget v3, v7, v9

    iget v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetX:F

    float-to-int v4, v0

    iget v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetY:F

    float-to-int v5, v0

    iget-object v6, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragInfo:Ljava/lang/Object;

    move-object v0, v8

    invoke-interface/range {v0 .. v6}, Lcom/htc/fragment/widget/DropTarget;->acceptDrop(Lcom/htc/fragment/widget/DragSource;IIIILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragSource:Lcom/htc/fragment/widget/DragSource;

    aget v2, v7, v10

    aget v3, v7, v9

    iget v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetX:F

    float-to-int v4, v0

    iget v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetY:F

    float-to-int v5, v0

    iget-object v6, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragInfo:Ljava/lang/Object;

    move-object v0, v8

    invoke-interface/range {v0 .. v6}, Lcom/htc/fragment/widget/DropTarget;->onDrop(Lcom/htc/fragment/widget/DragSource;IIIILjava/lang/Object;)V

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragSource:Lcom/htc/fragment/widget/DragSource;

    move-object v0, v8

    check-cast v0, Landroid/view/View;

    invoke-interface {v1, v0, v9}, Lcom/htc/fragment/widget/DragSource;->onDropCompleted(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    if-eqz v0, :cond_3

    instance-of v0, v8, Lcom/htc/fragment/widget/BinGridView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragSource:Lcom/htc/fragment/widget/DragSource;

    instance-of v0, v0, Lcom/htc/fragment/widget/BinGridView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0, v11, v9}, Lcom/htc/fragment/widget/CarouselWidget;->setShrinkedPosition(IZ)V

    :cond_3
    :goto_0
    move v0, v9

    :goto_1
    return v0

    :cond_4
    instance-of v0, v8, Lcom/htc/fragment/widget/CarouselWidget;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0, v11}, Lcom/htc/fragment/widget/CarouselWidget;->setShrinkedPosition(I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselWidget;->setLateShrinkedFlag()V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    if-eqz v0, :cond_7

    instance-of v0, v8, Lcom/htc/fragment/widget/BinGridView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0, v11, v9}, Lcom/htc/fragment/widget/CarouselWidget;->setShrinkedPosition(IZ)V

    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragSource:Lcom/htc/fragment/widget/DragSource;

    check-cast v8, Landroid/view/View;

    invoke-interface {v0, v8, v10}, Lcom/htc/fragment/widget/DragSource;->onDropCompleted(Landroid/view/View;Z)V

    move v0, v9

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0, v11}, Lcom/htc/fragment/widget/CarouselWidget;->setShrinkedPosition(I)V

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0, v11}, Lcom/htc/fragment/widget/CarouselWidget;->setShrinkedPosition(I)V

    :cond_a
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragSource:Lcom/htc/fragment/widget/DragSource;

    check-cast v8, Landroid/view/View;

    invoke-interface {v0, v8, v10}, Lcom/htc/fragment/widget/DragSource;->onDropCompleted(Landroid/view/View;Z)V

    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselHost;->setDragBinGridViewToFalse()V

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragSource:Lcom/htc/fragment/widget/DragSource;

    instance-of v0, v0, Lcom/htc/fragment/widget/BinGridView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselWidget;->realign()V

    :cond_b
    move v0, v10

    goto :goto_1
.end method

.method private endDrag()V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragging:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragging:Z

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragSource:Lcom/htc/fragment/widget/DragSource;

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mDropTarget:Lcom/htc/fragment/widget/DropTarget;

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/CarouselWidget;->getCount()I

    move-result v1

    if-gt v1, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->createTipBubble()V

    :cond_1
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    const v2, 0x20400c0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->showTipBubble()V

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragSource:Lcom/htc/fragment/widget/DragSource;

    instance-of v1, v1, Lcom/htc/fragment/widget/CarouselWidget;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mDropTarget:Lcom/htc/fragment/widget/DropTarget;

    instance-of v1, v1, Lcom/htc/fragment/widget/BinGridView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/CarouselWidget;->getCount()I

    move-result v1

    const/4 v2, 0x2

    if-gt v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragInfo:Ljava/lang/Object;

    check-cast v1, Lcom/htc/fragment/widget/TaskInfo;

    iget v1, v1, Lcom/htc/fragment/widget/TaskInfo;->isRemovable:I

    if-ne v1, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private findDropTarget(Landroid/view/ViewGroup;II[I)Lcom/htc/fragment/widget/DropTarget;
    .locals 17

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/fragment/widget/CarouselHost;->mDragRect:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v12

    add-int v9, p2, v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v12

    add-int v10, p3, v12

    add-int/lit8 v6, v5, -0x1

    :goto_0
    if-ltz v6, :cond_8

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_7

    invoke-virtual {v4, v8}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    instance-of v12, v4, Lcom/htc/fragment/widget/CarouselWidget;

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    if-gez v12, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselHost;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x205006b

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v12, :cond_3

    iget v12, v8, Landroid/graphics/Rect;->left:I

    iget v13, v8, Landroid/graphics/Rect;->top:I

    iget v14, v8, Landroid/graphics/Rect;->right:I

    iget v15, v8, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    move/from16 v16, v0

    add-int v15, v15, v16

    invoke-virtual {v8, v12, v13, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    :cond_1
    :goto_1
    invoke-virtual {v8, v9, v10}, Landroid/graphics/Rect;->contains(II)Z

    move-result v12

    if-eqz v12, :cond_7

    const/4 v11, 0x0

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v7

    const v12, 0x1020011

    if-eq v7, v12, :cond_7

    instance-of v12, v4, Landroid/view/ViewGroup;

    if-eqz v12, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v12

    sub-int p2, v9, v12

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v12

    sub-int p3, v10, v12

    move-object v12, v4

    check-cast v12, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v12, v1, v2, v3}, Lcom/htc/fragment/widget/CarouselHost;->findDropTarget(Landroid/view/ViewGroup;II[I)Lcom/htc/fragment/widget/DropTarget;

    move-result-object v11

    :cond_2
    if-nez v11, :cond_6

    instance-of v12, v4, Lcom/htc/fragment/widget/DropTarget;

    if-eqz v12, :cond_7

    const/4 v12, 0x0

    aput p2, p4, v12

    const/4 v12, 0x1

    aput p3, p4, v12

    check-cast v4, Lcom/htc/fragment/widget/DropTarget;

    :goto_2
    return-object v4

    :cond_3
    iget v12, v8, Landroid/graphics/Rect;->left:I

    iget v13, v8, Landroid/graphics/Rect;->top:I

    iget v14, v8, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    add-int/2addr v14, v15

    iget v15, v8, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v8, v12, v13, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :cond_4
    instance-of v12, v4, Lcom/htc/fragment/widget/BinGridView;

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v12, :cond_5

    iget v12, v8, Landroid/graphics/Rect;->left:I

    iget v13, v8, Landroid/graphics/Rect;->top:I

    iget v14, v8, Landroid/graphics/Rect;->right:I

    iget v15, v8, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v16

    sub-int v15, v15, v16

    invoke-virtual {v8, v12, v13, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :cond_5
    iget v12, v8, Landroid/graphics/Rect;->left:I

    iget v13, v8, Landroid/graphics/Rect;->top:I

    iget v14, v8, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v15

    sub-int/2addr v14, v15

    iget v15, v8, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v8, v12, v13, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :cond_6
    move-object v4, v11

    goto :goto_2

    :cond_7
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_0

    :cond_8
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private initCarouselHost()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselHost;->setFocusableInTouchMode(Z)V

    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselHost;->setDescendantFocusability(I)V

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    return-void
.end method

.method private invokeOnTabChangeListener()V
    .locals 2

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mOnTabChangeListener:Lcom/htc/fragment/widget/CarouselHost$OnTabChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mOnTabChangeListener:Lcom/htc/fragment/widget/CarouselHost$OnTabChangeListener;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/htc/fragment/widget/CarouselHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private moveIndicator(FF)V
    .locals 3

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragView:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mCorOffsetX:F

    add-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mCorOffsetY:F

    add-float/2addr v1, p2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
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

    invoke-direct {p0, v0, v3}, Lcom/htc/fragment/widget/CarouselHost;->printViewTree(Landroid/view/ViewGroup;I)V

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

.method private setDragBinGridViewToFalse()V
    .locals 4

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/fragment/widget/CarouselWidget;->setDragBinGridView(Z)V

    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidthWithNoAnimation()I

    move-result v1

    :goto_1
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v2, v0, v1}, Lcom/htc/fragment/widget/CarouselWidget;->startWidthHeightAnimation(II)V

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeightWithNoAnimation()I

    move-result v1

    goto :goto_1
.end method

.method private setDragBinGridViewToTrue()V
    .locals 4

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/fragment/widget/CarouselWidget;->setDragBinGridView(Z)V

    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v1

    :goto_1
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v2, v0, v1}, Lcom/htc/fragment/widget/CarouselWidget;->startWidthHeightAnimation(II)V

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v1

    goto :goto_1
.end method

.method private setOrientation()V
    .locals 4

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->display:Landroid/view/Display;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->display:Landroid/view/Display;

    :cond_0
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->display:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    sget-boolean v1, Lcom/htc/fragment/widget/CarouselFragment;->disableLandscape:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_1
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x2080038

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->shadowOverlay:Landroid/graphics/drawable/Drawable;

    iput-boolean v2, p0, Lcom/htc/fragment/widget/CarouselHost;->resetBound:Z

    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addPanelView(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->viewSwitcher:Lcom/htc/fragment/widget/CarouselViewSwitcher;

    if-nez v0, :cond_1

    const-string v0, "Carousel"

    const-string v1, "create viewSwitcher"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/htc/fragment/widget/CarouselViewSwitcher;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/fragment/widget/CarouselViewSwitcher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->viewSwitcher:Lcom/htc/fragment/widget/CarouselViewSwitcher;

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->viewSwitcher:Lcom/htc/fragment/widget/CarouselViewSwitcher;

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselHost;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselHost;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->viewSwitcher:Lcom/htc/fragment/widget/CarouselViewSwitcher;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselViewSwitcher;->addPositiveView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->viewSwitcher:Lcom/htc/fragment/widget/CarouselViewSwitcher;

    invoke-virtual {v0, p1}, Lcom/htc/fragment/widget/CarouselViewSwitcher;->addNegativeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public addTab(Landroid/content/Context;Lcom/htc/fragment/widget/CarouselTabSpec;)V
    .locals 15

    move-object/from16 v0, p2

    iget-boolean v1, v0, Lcom/htc/fragment/widget/CarouselTabSpec;->isInCarouselWidget:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/htc/fragment/widget/CarouselTabSpec;->tag:Ljava/lang/String;

    move-object/from16 v0, p2

    iget v4, v0, Lcom/htc/fragment/widget/CarouselTabSpec;->str_title_id:I

    move-object/from16 v0, p2

    iget v5, v0, Lcom/htc/fragment/widget/CarouselTabSpec;->ic_rest_id:I

    move-object/from16 v0, p2

    iget v6, v0, Lcom/htc/fragment/widget/CarouselTabSpec;->ic_on_id:I

    move-object/from16 v0, p2

    iget v7, v0, Lcom/htc/fragment/widget/CarouselTabSpec;->ic_overlay_id:I

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/htc/fragment/widget/CarouselTabSpec;->intent:Landroid/content/Intent;

    move-object/from16 v0, p2

    iget-boolean v9, v0, Lcom/htc/fragment/widget/CarouselTabSpec;->isRemovable:Z

    move-object v1, p0

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v9}, Lcom/htc/fragment/widget/CarouselHost;->addTabUtil(Ljava/lang/String;Landroid/content/Context;IIIILandroid/content/Intent;Z)V

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p2

    iget v1, v0, Lcom/htc/fragment/widget/CarouselTabSpec;->str_title_id:I

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v14

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/htc/fragment/widget/CarouselTabSpec;->tag:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/htc/fragment/widget/CarouselHost;->newTabSpec(Ljava/lang/String;)Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    move-result-object v1

    move-object/from16 v0, p2

    iget v2, v0, Lcom/htc/fragment/widget/CarouselTabSpec;->ic_rest_id:I

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    move-object/from16 v0, p2

    iget v3, v0, Lcom/htc/fragment/widget/CarouselTabSpec;->ic_on_id:I

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v3

    move-object/from16 v0, p2

    iget v4, v0, Lcom/htc/fragment/widget/CarouselTabSpec;->ic_overlay_id:I

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v4

    invoke-virtual {v1, v14, v2, v3, v4}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->setIndicator(Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;)Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    move-result-object v1

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/htc/fragment/widget/CarouselTabSpec;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2, v14}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->setContent(Landroid/content/Intent;Landroid/content/Intent$ShortcutIconResource;)Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    move-result-object v10

    new-instance v11, Lcom/htc/fragment/widget/TaskInfo;

    invoke-direct {v11}, Lcom/htc/fragment/widget/TaskInfo;-><init>()V

    #getter for: Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mIndicatorStrategy:Lcom/htc/fragment/widget/CarouselHost$IndicatorStrategy;
    invoke-static {v10}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->access$100(Lcom/htc/fragment/widget/CarouselHost$TabSpec;)Lcom/htc/fragment/widget/CarouselHost$IndicatorStrategy;

    move-result-object v12

    check-cast v12, Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/CarouselFragment;->getGId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/htc/fragment/widget/TaskInfo;->gId:Ljava/lang/String;

    invoke-virtual {v10}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/htc/fragment/widget/TaskInfo;->taskTag:Ljava/lang/String;

    #getter for: Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->mLabelResource:Landroid/content/Intent$ShortcutIconResource;
    invoke-static {v12}, Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->access$200(Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v1

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    iput-object v1, v11, Lcom/htc/fragment/widget/TaskInfo;->taskName:Ljava/lang/String;

    #getter for: Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->mIconReource:Landroid/content/Intent$ShortcutIconResource;
    invoke-static {v12}, Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->access$300(Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v1

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    iput-object v1, v11, Lcom/htc/fragment/widget/TaskInfo;->resPackage:Ljava/lang/String;

    #getter for: Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->mIconReource:Landroid/content/Intent$ShortcutIconResource;
    invoke-static {v12}, Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->access$300(Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v1

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    iput-object v1, v11, Lcom/htc/fragment/widget/TaskInfo;->icon:Ljava/lang/String;

    #getter for: Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->mSelectedIconResource:Landroid/content/Intent$ShortcutIconResource;
    invoke-static {v12}, Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->access$400(Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v1

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    iput-object v1, v11, Lcom/htc/fragment/widget/TaskInfo;->selectedIcon:Ljava/lang/String;

    #getter for: Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->mOverylayResource:Landroid/content/Intent$ShortcutIconResource;
    invoke-static {v12}, Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->access$500(Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v1

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    iput-object v1, v11, Lcom/htc/fragment/widget/TaskInfo;->overlay:Ljava/lang/String;

    #getter for: Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;
    invoke-static {v10}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/fragment/widget/CarouselHost$TabSpec;)Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;

    move-result-object v13

    check-cast v13, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;

    #getter for: Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->mIntent:Landroid/content/Intent;
    invoke-static {v13}, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->access$700(Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/htc/fragment/widget/TaskInfo;->intentUri:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, v11, Lcom/htc/fragment/widget/TaskInfo;->isHost:I

    const/4 v1, 0x1

    iput v1, v11, Lcom/htc/fragment/widget/TaskInfo;->isRemovable:I

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getHostCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, v11, Lcom/htc/fragment/widget/TaskInfo;->taskOrder:I

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

    invoke-virtual {v1, v11}, Lcom/htc/fragment/widget/CarouselFragment;->addAndSyncTask(Lcom/htc/fragment/widget/TaskInfo;)V

    goto/16 :goto_0
.end method

.method public addTab(Ljava/lang/String;Landroid/content/Context;IIIILandroid/content/Intent;)V
    .locals 9

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/htc/fragment/widget/CarouselHost;->addTabUtil(Ljava/lang/String;Landroid/content/Context;IIIILandroid/content/Intent;Z)V

    return-void
.end method

.method public addTab(Ljava/lang/String;Landroid/content/Context;IIIILandroid/content/Intent;I)V
    .locals 17

    const/4 v11, 0x1

    const/4 v10, 0x1

    packed-switch p8, :pswitch_data_0

    const/4 v11, 0x1

    const/4 v10, 0x1

    :goto_0
    const/4 v2, 0x1

    if-ne v11, v2, :cond_0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v2 .. v10}, Lcom/htc/fragment/widget/CarouselHost;->addTabUtil(Ljava/lang/String;Landroid/content/Context;IIIILandroid/content/Intent;Z)V

    :goto_1
    return-void

    :pswitch_0
    const/4 v11, 0x1

    const/4 v10, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v11, 0x0

    const/4 v10, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v11, 0x1

    const/4 v10, 0x0

    goto :goto_0

    :cond_0
    invoke-static/range {p2 .. p3}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v16

    invoke-virtual/range {p0 .. p1}, Lcom/htc/fragment/widget/CarouselHost;->newTabSpec(Ljava/lang/String;)Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    move-result-object v2

    move-object/from16 v0, p2

    move/from16 v1, p4

    invoke-static {v0, v1}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v3

    move-object/from16 v0, p2

    move/from16 v1, p5

    invoke-static {v0, v1}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v4

    move-object/from16 v0, p2

    move/from16 v1, p6

    invoke-static {v0, v1}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->setIndicator(Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;)Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    move-result-object v2

    move-object/from16 v0, p7

    move-object/from16 v1, v16

    invoke-virtual {v2, v0, v1}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->setContent(Landroid/content/Intent;Landroid/content/Intent$ShortcutIconResource;)Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    move-result-object v12

    new-instance v13, Lcom/htc/fragment/widget/TaskInfo;

    invoke-direct {v13}, Lcom/htc/fragment/widget/TaskInfo;-><init>()V

    #getter for: Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mIndicatorStrategy:Lcom/htc/fragment/widget/CarouselHost$IndicatorStrategy;
    invoke-static {v12}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->access$100(Lcom/htc/fragment/widget/CarouselHost$TabSpec;)Lcom/htc/fragment/widget/CarouselHost$IndicatorStrategy;

    move-result-object v14

    check-cast v14, Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselFragment;->getGId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v13, Lcom/htc/fragment/widget/TaskInfo;->gId:Ljava/lang/String;

    invoke-virtual {v12}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v13, Lcom/htc/fragment/widget/TaskInfo;->taskTag:Ljava/lang/String;

    #getter for: Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->mLabelResource:Landroid/content/Intent$ShortcutIconResource;
    invoke-static {v14}, Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->access$200(Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    iget-object v2, v2, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    iput-object v2, v13, Lcom/htc/fragment/widget/TaskInfo;->taskName:Ljava/lang/String;

    #getter for: Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->mIconReource:Landroid/content/Intent$ShortcutIconResource;
    invoke-static {v14}, Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->access$300(Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    iget-object v2, v2, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    iput-object v2, v13, Lcom/htc/fragment/widget/TaskInfo;->resPackage:Ljava/lang/String;

    #getter for: Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->mIconReource:Landroid/content/Intent$ShortcutIconResource;
    invoke-static {v14}, Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->access$300(Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    iget-object v2, v2, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    iput-object v2, v13, Lcom/htc/fragment/widget/TaskInfo;->icon:Ljava/lang/String;

    #getter for: Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->mSelectedIconResource:Landroid/content/Intent$ShortcutIconResource;
    invoke-static {v14}, Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->access$400(Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    iget-object v2, v2, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    iput-object v2, v13, Lcom/htc/fragment/widget/TaskInfo;->selectedIcon:Ljava/lang/String;

    #getter for: Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->mOverylayResource:Landroid/content/Intent$ShortcutIconResource;
    invoke-static {v14}, Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->access$500(Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    iget-object v2, v2, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    iput-object v2, v13, Lcom/htc/fragment/widget/TaskInfo;->overlay:Ljava/lang/String;

    #getter for: Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;
    invoke-static {v12}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/fragment/widget/CarouselHost$TabSpec;)Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;

    move-result-object v15

    check-cast v15, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;

    #getter for: Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->mIntent:Landroid/content/Intent;
    invoke-static {v15}, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->access$700(Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v13, Lcom/htc/fragment/widget/TaskInfo;->intentUri:Ljava/lang/String;

    const/4 v2, 0x0

    iput v2, v13, Lcom/htc/fragment/widget/TaskInfo;->isHost:I

    const/4 v2, 0x1

    iput v2, v13, Lcom/htc/fragment/widget/TaskInfo;->isRemovable:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselHost;->getHostCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iput v2, v13, Lcom/htc/fragment/widget/TaskInfo;->taskOrder:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

    invoke-virtual {v2, v13}, Lcom/htc/fragment/widget/CarouselFragment;->addAndSyncTask(Lcom/htc/fragment/widget/TaskInfo;)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x63
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method cancelDrag()V
    .locals 10

    const/high16 v9, -0x3b86

    const/4 v8, 0x0

    iget-boolean v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mShouldDrop:Z

    if-eqz v1, :cond_1

    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mDropCoordinates:[I

    iget v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mLastMotionX:F

    float-to-int v1, v1

    iget v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mLastMotionY:F

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2, v7}, Lcom/htc/fragment/widget/CarouselHost;->findDropTarget(II[I)Lcom/htc/fragment/widget/DropTarget;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragSource:Lcom/htc/fragment/widget/DragSource;

    aget v2, v7, v8

    const/4 v3, 0x1

    aget v3, v7, v3

    iget v4, p0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetX:F

    float-to-int v4, v4

    iget v5, p0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetY:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v0 .. v6}, Lcom/htc/fragment/widget/DropTarget;->onDragExit(Lcom/htc/fragment/widget/DragSource;IIIILjava/lang/Object;)V

    :cond_0
    invoke-direct {p0, v9, v9}, Lcom/htc/fragment/widget/CarouselHost;->drop(FF)Z

    iput-boolean v8, p0, Lcom/htc/fragment/widget/CarouselHost;->mShouldDrop:Z

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mDropAnimationRunnable:Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;

    invoke-virtual {v1, v8}, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->stop(Z)V

    :goto_0
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselHost;->endDrag()V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mDropAnimationRunnable:Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;

    invoke-virtual {v1, v8}, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->stop(Z)V

    goto :goto_0
.end method

.method closeTabByTag(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/htc/fragment/widget/CarouselHost;->getTabSpec(Ljava/lang/String;)Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    move-result-object v0

    #getter for: Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;
    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/fragment/widget/CarouselHost$TabSpec;)Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;->tabClosed()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method createTipBubble()V
    .locals 4

    const-string v0, "Carousel"

    const-string v1, "createTipBubble()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    const v1, 0x20401d3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mContext:Landroid/content/Context;

    const v2, 0x2030021

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/htc/fragment/widget/CarouselSkinUtil;->setDarkShadow(Landroid/widget/TextView;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragging:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mLastMotionX:F

    iget v3, p0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetX:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/htc/fragment/widget/CarouselHost;->mBitmapOffsetX:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/htc/fragment/widget/CarouselHost;->mLastMotionY:F

    iget v4, p0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetY:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/htc/fragment/widget/CarouselHost;->mBitmapOffsetY:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-direct {p0, v2, v3}, Lcom/htc/fragment/widget/CarouselHost;->moveIndicator(FF)V

    :cond_0
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->shadowOverlay:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselWidget;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselHost;->resetBound:Z

    if-eqz v2, :cond_2

    iput-boolean v5, p0, Lcom/htc/fragment/widget/CarouselHost;->resetBound:Z

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getMeasuredHeight()I

    move-result v0

    iget v2, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    if-gez v2, :cond_1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x205006b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    :cond_1
    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->shadowOverlay:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    sub-int v3, v0, v3

    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselHost;->shadowOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    sub-int v4, v0, v4

    invoke-virtual {v2, v5, v3, v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->shadowOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    return-void

    :cond_4
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->shadowOverlay:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    sub-int v3, v1, v3

    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselHost;->shadowOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    sub-int v4, v1, v4

    invoke-virtual {v2, v3, v5, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 8

    const/4 v6, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getCarouselWidget()Lcom/htc/fragment/widget/CarouselWidget;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v4, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v5, v6

    :goto_0
    return v5

    :cond_1
    move-object v5, v4

    check-cast v5, Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v5}, Lcom/htc/fragment/widget/CarouselWidget;->isDragging()Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v6

    goto :goto_0

    :cond_2
    move-object v5, v4

    check-cast v5, Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v5}, Lcom/htc/fragment/widget/CarouselWidget;->getStateWidget()I

    move-result v5

    const/16 v7, 0x3ea

    if-ne v5, v7, :cond_5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/4 v7, 0x4

    if-ne v5, v7, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-ne v5, v6, :cond_3

    iget-object v5, p0, Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

    invoke-virtual {v5}, Lcom/htc/fragment/widget/CarouselFragment;->exitEditMode()V

    move v5, v6

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Lcom/htc/fragment/widget/CarouselWidget;->hasFocus()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v4}, Lcom/htc/fragment/widget/CarouselWidget;->requestFocus()Z

    :cond_4
    move v5, v6

    goto :goto_0

    :cond_5
    if-nez v0, :cond_6

    move v5, v6

    goto :goto_0

    :cond_6
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_7

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_a

    :cond_7
    if-nez v1, :cond_8

    move-object v1, v0

    :cond_8
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_9

    if-eqz v1, :cond_9

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_9

    iget-boolean v5, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v5, :cond_d

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_9
    :goto_2
    move v5, v2

    goto :goto_0

    :cond_a
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_b

    instance-of v5, v1, Lcom/htc/fragment/widget/CarouselWidget;

    if-eqz v5, :cond_7

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :pswitch_0
    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v5

    if-nez v5, :cond_c

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    :cond_c
    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_2

    :pswitch_1
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v1}, Landroid/view/View;->isRootNamespace()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v5

    const/16 v7, 0x82

    invoke-virtual {v5, v7}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_9

    invoke-virtual {v4}, Lcom/htc/fragment/widget/CarouselWidget;->requestFocus()Z

    invoke-virtual {v4, p1}, Lcom/htc/fragment/widget/CarouselWidget;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move v5, v6

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    packed-switch v5, :pswitch_data_1

    goto :goto_2

    :pswitch_2
    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v5

    if-nez v5, :cond_e

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    :cond_e
    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_2

    :pswitch_3
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v1}, Landroid/view/View;->isRootNamespace()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v5

    const/16 v7, 0x42

    invoke-virtual {v5, v7}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_9

    invoke-virtual {v4}, Lcom/htc/fragment/widget/CarouselWidget;->requestFocus()Z

    invoke-virtual {v4, p1}, Lcom/htc/fragment/widget/CarouselWidget;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move v5, v6

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method doAnimationForDragIcon(FF)V
    .locals 5

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mDropAnimationRunnable:Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;

    iget v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mSourceX:F

    float-to-int v1, v1

    iget v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mSourceY:F

    float-to-int v2, v2

    iget v3, p0, Lcom/htc/fragment/widget/CarouselHost;->mCorOffsetX:F

    sub-float v3, p1, v3

    float-to-int v3, v3

    iget v4, p0, Lcom/htc/fragment/widget/CarouselHost;->mCorOffsetY:F

    sub-float v4, p2, v4

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->startUsingPositions(IIII)V

    return-void
.end method

.method doCurrentTabPause()V
    .locals 1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselHost;->getTabSpec(Ljava/lang/String;)Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    move-result-object v0

    #getter for: Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;
    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/fragment/widget/CarouselHost$TabSpec;)Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;->tabOnPaused()V

    return-void
.end method

.method doCurrntTabResume()V
    .locals 1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselHost;->getTabSpec(Ljava/lang/String;)Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    move-result-object v0

    #getter for: Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;
    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/fragment/widget/CarouselHost$TabSpec;)Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;->tabOnResume()V

    return-void
.end method

.method enableCustomView(Z)V
    .locals 5

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselHost;->setOrientation()V

    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselHost;->enableCustomView:Z

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/htc/fragment/widget/CarouselHost;->enableCustomView:Z

    iget v0, p0, Lcom/htc/fragment/widget/CarouselHost;->customSpace:I

    if-gez v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x20e0005

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/fragment/widget/CarouselHost;->customSpace:I

    :cond_1
    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->customViewContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_3

    iget v0, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    if-gez v0, :cond_2

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x205006b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    :cond_2
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->customViewContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->customViewContainer:Landroid/widget/FrameLayout;

    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_1
    invoke-virtual {v2, v1, v1, v0, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->customViewContainer:Landroid/widget/FrameLayout;

    const v2, 0x202006a

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setId(I)V

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->customViewContainer:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    iget v4, p0, Lcom/htc/fragment/widget/CarouselHost;->customSpace:I

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->customViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0, v1}, Lcom/htc/fragment/widget/CarouselHost;->addView(Landroid/view/View;I)V

    :cond_3
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->customViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mTabContent:Lcom/htc/fragment/widget/CarouselContentGallery;

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mTabContent:Lcom/htc/fragment/widget/CarouselContentGallery;

    if-eqz p1, :cond_8

    iget v0, p0, Lcom/htc/fragment/widget/CarouselHost;->customSpace:I

    :goto_3
    invoke-virtual {v2, v1, v0, v1, v1}, Lcom/htc/fragment/widget/CarouselContentGallery;->setPadding(IIII)V

    :cond_5
    const-string v0, "Carousel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableCustomView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->customViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    iget v0, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->customViewContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->customViewContainer:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_2

    :cond_8
    move v0, v1

    goto :goto_3
.end method

.method enableFullScreen(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselHost;->isFullScreen:Z

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/htc/fragment/widget/CarouselHost;->isFullScreen:Z

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->requestLayout()V

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->invalidate()V

    goto :goto_0
.end method

.method findDropTarget(II[I)Lcom/htc/fragment/widget/DropTarget;
    .locals 1

    invoke-direct {p0, p0, p1, p2, p3}, Lcom/htc/fragment/widget/CarouselHost;->findDropTarget(Landroid/view/ViewGroup;II[I)Lcom/htc/fragment/widget/DropTarget;

    move-result-object v0

    return-object v0
.end method

.method getBackUpCurrentTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mBackupCurrentTag:Ljava/lang/String;

    return-object v0
.end method

.method public getCarouselWidget()Lcom/htc/fragment/widget/CarouselWidget;
    .locals 1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    return-object v0
.end method

.method public getCurrentTab()I
    .locals 1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselHost;->getPositionForTag(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCurrentTabFragment()Landroid/app/Fragment;
    .locals 1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {v0}, Lcom/htc/fragment/app/LocalFragmentManager;->getCurrentFragment()Landroid/app/Fragment;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentTabTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentTabView()Landroid/view/View;
    .locals 2

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/htc/fragment/widget/CarouselHost;->getPositionForTag(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v1, v0}, Lcom/htc/fragment/widget/CarouselWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    return-object v0
.end method

.method getDropAnimationRunnable()Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;
    .locals 1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mDropAnimationRunnable:Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;

    return-object v0
.end method

.method getHostCount()I
    .locals 2

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/BinAdapter;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/BinAdapter;->getCount()I

    move-result v1

    return v1
.end method

.method getIndexByTag(Ljava/lang/String;)I
    .locals 4

    const/4 v2, -0x1

    if-nez p1, :cond_1

    move v0, v2

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getHostCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselHost;->getTabSpec(I)Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method getPositionForTag(Ljava/lang/String;)I
    .locals 7

    const/4 v5, -0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    :cond_0
    move v2, v5

    :cond_1
    :goto_0
    return v2

    :cond_2
    iget-object v6, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v6}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/BinAdapter;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/BinAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, -0x1

    if-eqz v1, :cond_4

    const-string v6, "task_tag"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_5

    :cond_4
    :goto_1
    move v2, v5

    goto :goto_0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/htc/fragment/widget/CarouselHost;->mTabPrefix:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/htc/fragment/widget/CarouselHost;->mTabPrefix:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :cond_6
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1
.end method

.method public getTabContentView()Landroid/widget/FrameLayout;
    .locals 3

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mTabContent:Lcom/htc/fragment/widget/CarouselContentGallery;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/fragment/widget/CarouselFragment;->getTabContentViewId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselContentGallery;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method getTabSpec(I)Lcom/htc/fragment/widget/CarouselHost$TabSpec;
    .locals 6

    const/4 v4, 0x0

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    iget-object v5, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v5}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/BinAdapter;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/BinAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    const-string v4, "task_tag"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselHost;->mTabPrefix:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselHost;->mTabPrefix:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

    invoke-virtual {v4}, Lcom/htc/fragment/widget/CarouselFragment;->getModel()Lcom/htc/fragment/widget/CarouselModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/fragment/widget/CarouselModel;->getTabSpecTable()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    goto :goto_0
.end method

.method getTabSpec(Ljava/lang/String;)Lcom/htc/fragment/widget/CarouselHost$TabSpec;
    .locals 1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mTabPrefix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mTabPrefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselFragment;->getModel()Lcom/htc/fragment/widget/CarouselModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselModel;->getTabSpecTable()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    return-object v0
.end method

.method isBusy()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragging:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mDropAnimationRunnable:Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->isStillRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselWidget;->isBusy()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method newTabSpec(Ljava/lang/String;)Lcom/htc/fragment/widget/CarouselHost$TabSpec;
    .locals 2

    new-instance v0, Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;-><init>(Lcom/htc/fragment/widget/CarouselHost;Ljava/lang/String;Lcom/htc/fragment/widget/CarouselHost$1;)V

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselHost;->attached:Z

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/fragment/widget/CarouselUtil;->isNoCube(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->setCurrentTabBeforeAttached:Ljava/lang/Object;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->setCurrentTabBeforeAttached:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->setCurrentTabBeforeAttached:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/htc/fragment/widget/CarouselHost;->setCurrentTabByTag(Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->setCurrentTabBeforeAttached:Ljava/lang/Object;

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->setCurrentTabBeforeAttached:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->setCurrentTabBeforeAttached:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/fragment/widget/CarouselHost;->setCurrentTabUtil(I)V

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselHost;->setOrientation()V

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->cancelDrag()V

    iget v2, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    if-gez v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x205006b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    :cond_0
    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselHost;->enableCustomView:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->customViewContainer:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselHost;->customViewContainer:Landroid/widget/FrameLayout;

    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v2, :cond_4

    move v2, v3

    :goto_0
    invoke-virtual {v4, v3, v3, v2, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :cond_1
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    const v2, 0x2020063

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselHost;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_2

    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v2, :cond_5

    move v2, v3

    :goto_1
    iget-boolean v4, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v4, :cond_6

    iget v4, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    :goto_2
    invoke-virtual {v1, v3, v3, v2, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    :cond_2
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v2, :cond_7

    move v2, v3

    :goto_3
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/16 v4, 0xe

    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v2, :cond_8

    move v2, v5

    :goto_4
    invoke-virtual {v0, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v4, 0xc

    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v2, :cond_9

    move v2, v5

    :goto_5
    invoke-virtual {v0, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v4, 0xf

    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v2, :cond_a

    move v2, v3

    :goto_6
    invoke-virtual {v0, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, 0xb

    iget-boolean v4, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v4, :cond_b

    :goto_7
    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2080158

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void

    :cond_4
    iget v2, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    goto :goto_0

    :cond_5
    iget v2, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    goto :goto_1

    :cond_6
    move v4, v3

    goto :goto_2

    :cond_7
    iget v2, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    mul-int/lit8 v2, v2, 0x2

    goto :goto_3

    :cond_8
    move v2, v3

    goto :goto_4

    :cond_9
    move v2, v3

    goto :goto_5

    :cond_a
    move v2, v5

    goto :goto_6

    :cond_b
    move v3, v5

    goto :goto_7
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselHost;->attached:Z

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    :cond_0
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/CarouselFragment;->setDragDropAnimationInitState()V

    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-boolean v3, p0, Lcom/htc/fragment/widget/CarouselHost;->mShouldThrowEvent:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    sub-float/2addr v3, v1

    iput v3, p0, Lcom/htc/fragment/widget/CarouselHost;->mCorOffsetX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    sub-float/2addr v3, v2

    iput v3, p0, Lcom/htc/fragment/widget/CarouselHost;->mCorOffsetY:F

    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    iget-boolean v3, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragging:Z

    goto :goto_0

    :pswitch_1
    iput v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mLastMotionX:F

    iput v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mLastMotionY:F

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/fragment/widget/CarouselHost;->mLastDropTarget:Lcom/htc/fragment/widget/DropTarget;

    goto :goto_1

    :pswitch_2
    iget-boolean v3, p0, Lcom/htc/fragment/widget/CarouselHost;->mShouldDrop:Z

    if-eqz v3, :cond_1

    invoke-direct {p0, v1, v2}, Lcom/htc/fragment/widget/CarouselHost;->drop(FF)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/fragment/widget/CarouselHost;->mShouldDrop:Z

    :cond_1
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselHost;->endDrag()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 9

    const/4 v6, 0x0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-super {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    invoke-super {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v7}, Lcom/htc/fragment/widget/CarouselWidget;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_2

    const/4 v5, 0x1

    :goto_0
    iget v7, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    if-gez v7, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x205006b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    :cond_0
    iget-boolean v7, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v7, :cond_4

    iget v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mPaddingLeft:I

    sub-int v7, v4, v7

    iget v8, p0, Lcom/htc/fragment/widget/CarouselHost;->mPaddingRight:I

    sub-int v1, v7, v8

    iget v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mPaddingTop:I

    sub-int v7, v3, v7

    iget v8, p0, Lcom/htc/fragment/widget/CarouselHost;->mPaddingBottom:I

    sub-int/2addr v7, v8

    iget-boolean v8, p0, Lcom/htc/fragment/widget/CarouselHost;->isFullScreen:Z

    if-eqz v8, :cond_3

    :cond_1
    :goto_1
    sub-int v0, v7, v6

    :goto_2
    iget-object v6, p0, Lcom/htc/fragment/widget/CarouselHost;->mTabContent:Lcom/htc/fragment/widget/CarouselContentGallery;

    invoke-virtual {v6}, Lcom/htc/fragment/widget/CarouselContentGallery;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/htc/fragment/widget/CarouselHost;->mTabContent:Lcom/htc/fragment/widget/CarouselContentGallery;

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Lcom/htc/fragment/widget/CarouselContentGallery;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_3
    iget-object v6, p0, Lcom/htc/fragment/widget/CarouselHost;->mTabContent:Lcom/htc/fragment/widget/CarouselContentGallery;

    invoke-virtual {p0, v6, v1, v0}, Lcom/htc/fragment/widget/CarouselHost;->measureChild(Landroid/view/View;II)V

    return-void

    :cond_2
    move v5, v6

    goto :goto_0

    :cond_3
    if-nez v5, :cond_1

    iget v6, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    goto :goto_1

    :cond_4
    iget v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mPaddingLeft:I

    sub-int v7, v4, v7

    iget v8, p0, Lcom/htc/fragment/widget/CarouselHost;->mPaddingRight:I

    sub-int/2addr v7, v8

    iget-boolean v8, p0, Lcom/htc/fragment/widget/CarouselHost;->isFullScreen:Z

    if-eqz v8, :cond_6

    :cond_5
    :goto_4
    sub-int v1, v7, v6

    iget v6, p0, Lcom/htc/fragment/widget/CarouselHost;->mPaddingTop:I

    sub-int v6, v3, v6

    iget v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mPaddingBottom:I

    sub-int v0, v6, v7

    goto :goto_2

    :cond_6
    if-nez v5, :cond_5

    iget v6, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    goto :goto_4

    :cond_7
    iget-object v6, p0, Lcom/htc/fragment/widget/CarouselHost;->mTabContent:Lcom/htc/fragment/widget/CarouselContentGallery;

    invoke-virtual {v6}, Lcom/htc/fragment/widget/CarouselContentGallery;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v6, p0, Lcom/htc/fragment/widget/CarouselHost;->mTabContent:Lcom/htc/fragment/widget/CarouselContentGallery;

    invoke-virtual {v6, v2}, Lcom/htc/fragment/widget/CarouselContentGallery;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselHost;->resetBound:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 24

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/fragment/widget/CarouselHost;->mShouldThrowEvent:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/fragment/widget/CarouselHost;->mDragging:Z

    if-nez v4, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v23

    packed-switch v11, :pswitch_data_0

    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    :pswitch_0
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/fragment/widget/CarouselHost;->mLastMotionX:F

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/fragment/widget/CarouselHost;->mLastMotionY:F

    goto :goto_1

    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetX:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetY:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/fragment/widget/CarouselHost;->mBitmapOffsetX:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/CarouselHost;->mBitmapOffsetY:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/fragment/widget/CarouselHost;->mLastMotionX:F

    sub-float v4, v4, v19

    int-to-float v5, v15

    sub-float/2addr v4, v5

    float-to-int v14, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/fragment/widget/CarouselHost;->mLastMotionY:F

    sub-float v4, v4, v20

    move/from16 v0, v16

    int-to-float v5, v0

    sub-float/2addr v4, v5

    float-to-int v0, v4

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/fragment/widget/CarouselHost;->mDragView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/fragment/widget/CarouselHost;->mDragView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/CarouselHost;->mRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    add-int/lit8 v4, v14, -0x1

    add-int/lit8 v5, v18, -0x1

    add-int v6, v14, v21

    add-int/lit8 v6, v6, 0x1

    add-int v7, v18, v13

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/fragment/widget/CarouselHost;->mLastMotionX:F

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/fragment/widget/CarouselHost;->mLastMotionY:F

    sub-float v4, v22, v19

    int-to-float v5, v15

    sub-float/2addr v4, v5

    float-to-int v14, v4

    sub-float v4, v23, v20

    move/from16 v0, v16

    int-to-float v5, v0

    sub-float/2addr v4, v5

    float-to-int v0, v4

    move/from16 v18, v0

    add-int/lit8 v4, v14, -0x1

    add-int/lit8 v5, v18, -0x1

    add-int v6, v14, v21

    add-int/lit8 v6, v6, 0x1

    add-int v7, v18, v13

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;->union(IIII)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/fragment/widget/CarouselHost;->mDropCoordinates:[I

    move/from16 v0, v22

    float-to-int v4, v0

    move/from16 v0, v23

    float-to-int v5, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v12}, Lcom/htc/fragment/widget/CarouselHost;->findDropTarget(II[I)Lcom/htc/fragment/widget/DropTarget;

    move-result-object v3

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/fragment/widget/CarouselHost;->mLastDropTarget:Lcom/htc/fragment/widget/DropTarget;

    if-ne v4, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/fragment/widget/CarouselHost;->mDragSource:Lcom/htc/fragment/widget/DragSource;

    const/4 v5, 0x0

    aget v5, v12, v5

    const/4 v6, 0x1

    aget v6, v12, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetX:F

    float-to-int v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetY:F

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/fragment/widget/CarouselHost;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v3 .. v9}, Lcom/htc/fragment/widget/DropTarget;->onDragOver(Lcom/htc/fragment/widget/DragSource;IIIILjava/lang/Object;)V

    :cond_2
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselHost;->invalidate(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/fragment/widget/CarouselHost;->mLastDropTarget:Lcom/htc/fragment/widget/DropTarget;

    goto/16 :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/fragment/widget/CarouselHost;->mLastDropTarget:Lcom/htc/fragment/widget/DropTarget;

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/fragment/widget/CarouselHost;->mLastDropTarget:Lcom/htc/fragment/widget/DropTarget;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/fragment/widget/CarouselHost;->mDragSource:Lcom/htc/fragment/widget/DragSource;

    const/4 v6, 0x0

    aget v6, v12, v6

    const/4 v7, 0x1

    aget v7, v12, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetX:F

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetY:F

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/fragment/widget/CarouselHost;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v4 .. v10}, Lcom/htc/fragment/widget/DropTarget;->onDragExit(Lcom/htc/fragment/widget/DragSource;IIIILjava/lang/Object;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/fragment/widget/CarouselHost;->mDragSource:Lcom/htc/fragment/widget/DragSource;

    const/4 v5, 0x0

    aget v5, v12, v5

    const/4 v6, 0x1

    aget v6, v12, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetX:F

    float-to-int v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetY:F

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/fragment/widget/CarouselHost;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v3 .. v9}, Lcom/htc/fragment/widget/DropTarget;->onDragEnter(Lcom/htc/fragment/widget/DragSource;IIIILjava/lang/Object;)V

    instance-of v4, v3, Lcom/htc/fragment/widget/CarouselWidget;

    if-eqz v4, :cond_2

    move-object v4, v3

    check-cast v4, Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v4}, Lcom/htc/fragment/widget/CarouselWidget;->invalidate()V

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/fragment/widget/CarouselHost;->mLastDropTarget:Lcom/htc/fragment/widget/DropTarget;

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/fragment/widget/CarouselHost;->mLastDropTarget:Lcom/htc/fragment/widget/DropTarget;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/fragment/widget/CarouselHost;->mDragSource:Lcom/htc/fragment/widget/DragSource;

    const/4 v6, 0x0

    aget v6, v12, v6

    const/4 v7, 0x1

    aget v7, v12, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetX:F

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetY:F

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/fragment/widget/CarouselHost;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v4 .. v10}, Lcom/htc/fragment/widget/DropTarget;->onDragExit(Lcom/htc/fragment/widget/DragSource;IIIILjava/lang/Object;)V

    goto :goto_2

    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/fragment/widget/CarouselHost;->mShouldDrop:Z

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/htc/fragment/widget/CarouselHost;->drop(FF)Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/htc/fragment/widget/CarouselHost;->mShouldDrop:Z

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselHost;->endDrag()V

    goto/16 :goto_1

    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselHost;->endDrag()V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .locals 1

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselWidget;->requestFocus()Z

    :cond_1
    return-void
.end method

.method pauseCurrentTab()V
    .locals 3

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/fragment/app/LocalFragmentManager;->getFragment(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Fragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {v1, v0}, Lcom/htc/fragment/app/LocalFragmentManager;->pauseFragment(Landroid/app/Fragment;)V

    :cond_0
    return-void
.end method

.method removeFragmentIfRunning(Lcom/htc/fragment/widget/CarouselHost$TabSpec;Lcom/htc/fragment/widget/TaskInfo;)V
    .locals 3

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/htc/fragment/widget/TaskInfo;->taskTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    #getter for: Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;
    invoke-static {p1}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/fragment/widget/CarouselHost$TabSpec;)Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;

    move-result-object v1

    check-cast v1, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;

    iget-object v2, p2, Lcom/htc/fragment/widget/TaskInfo;->intentUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->compareIntent(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, p2}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->sync(Lcom/htc/fragment/widget/TaskInfo;)V

    #getter for: Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;
    invoke-static {p1}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/fragment/widget/CarouselHost$TabSpec;)Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;->tabClosed()V

    #getter for: Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mTag:Ljava/lang/String;
    invoke-static {p1}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->access$2100(Lcom/htc/fragment/widget/CarouselHost$TabSpec;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p1

    #getter for: Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;
    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/fragment/widget/CarouselHost$TabSpec;)Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_2
    #getter for: Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;
    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/fragment/widget/CarouselHost$TabSpec;)Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;->getContentView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    if-nez v1, :cond_3

    const-string v1, "CarouselHost::setCurrentTabUtil(): Strange !, Current View is null "

    invoke-static {v1}, Lcom/htc/fragment/widget/CarouselLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    goto :goto_0
.end method

.method removeIndicator()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragView:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragView:Landroid/widget/FrameLayout;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragView:Landroid/widget/FrameLayout;

    const v2, 0x2020064

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/BinGridView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/fragment/widget/BinGridView;->endDragOneItem()V

    invoke-virtual {v0, v4}, Lcom/htc/fragment/widget/BinGridView;->setDrawNextItem(Z)V

    :cond_0
    iput-boolean v4, p0, Lcom/htc/fragment/widget/CarouselHost;->mShouldThrowEvent:Z

    iput-boolean v4, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragging:Z

    return-void
.end method

.method removeTab(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string v2, "Invalid tag. Can not delete"

    invoke-static {v2}, Lcom/htc/fragment/widget/CarouselLog;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getHostCount()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_2

    const-string v2, "Table number is one. Can not delete"

    invoke-static {v2}, Lcom/htc/fragment/widget/CarouselLog;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->setNextTab()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    :cond_3
    invoke-virtual {p0, p1}, Lcom/htc/fragment/widget/CarouselHost;->getTabSpec(Ljava/lang/String;)Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    move-result-object v2

    #getter for: Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;
    invoke-static {v2}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/fragment/widget/CarouselHost$TabSpec;)Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;

    move-result-object v0

    new-instance v1, Lcom/htc/fragment/widget/TaskInfo;

    invoke-direct {v1}, Lcom/htc/fragment/widget/TaskInfo;-><init>()V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/fragment/widget/TaskInfo;->intentUri:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;->sync(Lcom/htc/fragment/widget/TaskInfo;)V

    invoke-interface {v0}, Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;->tabClosed()V

    goto :goto_0
.end method

.method public removeTabByTag(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/fragment/widget/CarouselHost;->removeTab(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

    invoke-virtual {v0, p1}, Lcom/htc/fragment/widget/CarouselFragment;->removeTagFromDB(Ljava/lang/String;)V

    return-void
.end method

.method removeTipBubble()V
    .locals 3

    const-string v1, "Carousel"

    const-string v2, "removeTipBubble()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    const v1, 0x2020063

    invoke-virtual {p0, v1}, Lcom/htc/fragment/widget/CarouselHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method resumeCurrentTab()V
    .locals 3

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/fragment/app/LocalFragmentManager;->getFragment(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Fragment;->isResumed()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {v1, v0}, Lcom/htc/fragment/app/LocalFragmentManager;->resumeFragment(Landroid/app/Fragment;)V

    :cond_0
    return-void
.end method

.method public setAlternativeTabName(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

    invoke-virtual {v0, p1, p2}, Lcom/htc/fragment/widget/CarouselFragment;->setAlternativeTabName(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setAnimationMode(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mTabContent:Lcom/htc/fragment/widget/CarouselContentGallery;

    invoke-virtual {v0, p1}, Lcom/htc/fragment/widget/CarouselContentGallery;->setAnimationMode(I)V

    return-void
.end method

.method public setAnimationType(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mTabContent:Lcom/htc/fragment/widget/CarouselContentGallery;

    invoke-virtual {v0, p1}, Lcom/htc/fragment/widget/CarouselContentGallery;->setAnimationType(I)V

    return-void
.end method

.method setBackupCurrentTag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselHost;->mBackupCurrentTag:Ljava/lang/String;

    return-void
.end method

.method setCarousel(Lcom/htc/fragment/widget/CarouselFragment;)V
    .locals 2

    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/CarouselFragment;->getGId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mTabPrefix:Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mHookPanel:Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;

    invoke-virtual {v0, p1}, Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;->setCarousel(Lcom/htc/fragment/widget/CarouselFragment;)V

    return-void
.end method

.method public setCountText(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

    invoke-virtual {v0, p1, p2}, Lcom/htc/fragment/widget/CarouselFragment;->setCountText(Ljava/lang/String;Ljava/lang/CharSequence;)I

    return-void
.end method

.method public setCountVisibility(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

    invoke-virtual {v0, p1, p2}, Lcom/htc/fragment/widget/CarouselFragment;->setCountVisibility(Ljava/lang/String;Z)I

    return-void
.end method

.method public setCurrentTabByTag(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0, v1}, Lcom/htc/fragment/widget/CarouselHost;->setCurrentTabUtil(I)V

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselHost;->mBackupCurrentTag:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/htc/fragment/widget/CarouselHost;->getPositionForTag(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselHost;->setCurrentTabUtil(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/htc/fragment/widget/CarouselHost;->setCurrentTabUtil(I)V

    goto :goto_0
.end method

.method setCurrentTabUtil(I)V
    .locals 10

    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/htc/fragment/widget/CarouselUtil;->isNoCube(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-boolean v7, p0, Lcom/htc/fragment/widget/CarouselHost;->attached:Z

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mBackupCurrentTag:Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mBackupCurrentTag:Ljava/lang/String;

    iput-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->setCurrentTabBeforeAttached:Ljava/lang/Object;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->setCurrentTabBeforeAttached:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

    invoke-virtual {v7}, Lcom/htc/fragment/widget/CarouselFragment;->isDetached()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

    invoke-virtual {v7}, Lcom/htc/fragment/widget/CarouselFragment;->isAdded()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

    invoke-virtual {v7}, Lcom/htc/fragment/widget/CarouselFragment;->isRemoving()Z

    move-result v7

    if-nez v7, :cond_0

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getHostCount()I

    move-result v7

    if-ge p1, v7, :cond_0

    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/htc/fragment/widget/CarouselHost;->getPositionForTag(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_4

    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    iget-object v8, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/htc/fragment/app/LocalFragmentManager;->getFragment(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v7, p1}, Lcom/htc/fragment/widget/CarouselWidget;->setCurrentTabUtil(I)V

    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mTabContent:Lcom/htc/fragment/widget/CarouselContentGallery;

    invoke-virtual {v7, p1}, Lcom/htc/fragment/widget/CarouselContentGallery;->setCurrentTab(I)V

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->resumeCurrentTab()V

    const-string v7, "ani"

    const-string v8, "@setCurrentTabUtil(return), to real"

    invoke-static {v7, v8}, Lcom/htc/fragment/widget/CarouselLog;->dd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    check-cast v7, Lcom/htc/fragment/widget/CarouselHost$TabContainer;

    invoke-virtual {v7}, Lcom/htc/fragment/widget/CarouselHost$TabContainer;->switchToContentView()V

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    :cond_4
    const-string v7, "ani"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "@setCurrentTabUtil, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/fragment/widget/CarouselHost;->mTabContent:Lcom/htc/fragment/widget/CarouselContentGallery;

    invoke-virtual {v9}, Lcom/htc/fragment/widget/CarouselContentGallery;->animationStateToString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/fragment/widget/CarouselLog;->de(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mTabContent:Lcom/htc/fragment/widget/CarouselContentGallery;

    invoke-virtual {v7}, Lcom/htc/fragment/widget/CarouselContentGallery;->isUsingFakeView()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    check-cast v7, Lcom/htc/fragment/widget/CarouselHost$TabContainer;

    invoke-virtual {v7}, Lcom/htc/fragment/widget/CarouselHost$TabContainer;->switchToFakeView()V

    :cond_5
    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/htc/fragment/widget/CarouselHost;->getTabSpec(Ljava/lang/String;)Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    move-result-object v4

    if-nez v4, :cond_6

    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "bad ! spec is  null on the setCurrentTab"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_6
    #getter for: Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;
    invoke-static {v4}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/fragment/widget/CarouselHost$TabSpec;)Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;

    move-result-object v7

    if-nez v7, :cond_7

    :cond_7
    #getter for: Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;
    invoke-static {v4}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/fragment/widget/CarouselHost$TabSpec;)Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;

    move-result-object v7

    invoke-interface {v7}, Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;->tabClosed()V

    :cond_8
    invoke-virtual {p0, p1}, Lcom/htc/fragment/widget/CarouselHost;->getTabSpec(I)Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    move-result-object v5

    if-nez v5, :cond_9

    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "bad ! spec is  null on the setCurrentTab"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_9
    #getter for: Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;
    invoke-static {v5}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/fragment/widget/CarouselHost$TabSpec;)Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;

    move-result-object v7

    if-nez v7, :cond_a

    :cond_a
    invoke-virtual {v5}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v6

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    iput-object v6, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v7, p1}, Lcom/htc/fragment/widget/CarouselWidget;->setCurrentTabUtil(I)V

    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mTabContent:Lcom/htc/fragment/widget/CarouselContentGallery;

    invoke-virtual {v7, p1}, Lcom/htc/fragment/widget/CarouselContentGallery;->setCurrentTab(I)V

    #getter for: Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;
    invoke-static {v5}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/fragment/widget/CarouselHost$TabSpec;)Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;

    move-result-object v7

    invoke-interface {v7}, Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;->getContentView()Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    if-nez v7, :cond_b

    const-string v7, "CarouselHost::setCurrentTabUtil(): Strange !, Current View is null "

    invoke-static {v7}, Lcom/htc/fragment/widget/CarouselLog;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v7}, Lcom/htc/fragment/widget/CarouselWidget;->hasFocus()Z

    move-result v7

    if-nez v7, :cond_c

    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    :cond_c
    const-string v7, "ani"

    const-string v8, "@setCurrentTabUtil, to real"

    invoke-static {v7, v8}, Lcom/htc/fragment/widget/CarouselLog;->dd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    check-cast v7, Lcom/htc/fragment/widget/CarouselHost$TabContainer;

    invoke-virtual {v7}, Lcom/htc/fragment/widget/CarouselHost$TabContainer;->switchToContentView()V

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-eqz v3, :cond_d

    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {v7, v3}, Lcom/htc/fragment/app/LocalFragmentManager;->getFragment(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_d

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    :cond_d
    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    iget-object v8, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/htc/fragment/app/LocalFragmentManager;->getFragment(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_e

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    :cond_e
    if-eqz v2, :cond_f

    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {v7, v2}, Lcom/htc/fragment/app/LocalFragmentManager;->pauseFragment(Landroid/app/Fragment;)V

    :cond_f
    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

    invoke-virtual {v7}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->isResumed()Z

    move-result v7

    if-eqz v7, :cond_11

    if-eqz v1, :cond_10

    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {v7, v1}, Lcom/htc/fragment/app/LocalFragmentManager;->resumeFragment(Landroid/app/Fragment;)V

    :cond_10
    :goto_1
    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    iget-object v8, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/htc/fragment/app/LocalFragmentManager;->setCurrentId(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

    iget-object v8, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/htc/fragment/widget/CarouselFragment;->onCurrentTabChanged(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselHost;->invokeOnTabChangeListener()V

    goto/16 :goto_0

    :cond_11
    const-string v7, "The activity is not resumed when the setCurrentTabUtil is called"

    invoke-static {v7}, Lcom/htc/fragment/widget/CarouselLog;->w(Ljava/lang/String;)V

    goto :goto_1
.end method

.method setIsProviderAp(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/fragment/widget/CarouselHost;->mIsProviderAP:Z

    return-void
.end method

.method setNextTab()V
    .locals 3

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselHost;->getPositionForTag(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getHostCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselHost;->getTabSpec(I)Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mBackupCurrentTag:Ljava/lang/String;

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method setOnTabChangedListener(Lcom/htc/fragment/widget/CarouselHost$OnTabChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselHost;->mOnTabChangeListener:Lcom/htc/fragment/widget/CarouselHost$OnTabChangeListener;

    return-void
.end method

.method public setTabHintEnabled(Z)V
    .locals 0

    return-void
.end method

.method setup()V
    .locals 3

    const v0, 0x1020013

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/CarouselWidget;

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your TabHost must have a TabWidget whose id attribute is \'android.R.id.tabs\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0, p0}, Lcom/htc/fragment/widget/CarouselWidget;->setCarouselHost(Lcom/htc/fragment/widget/CarouselHost;)V

    const v0, 0x1020011

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/CarouselContentGallery;

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mTabContent:Lcom/htc/fragment/widget/CarouselContentGallery;

    new-instance v0, Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mHookPanel:Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mTabContent:Lcom/htc/fragment/widget/CarouselContentGallery;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mHookPanel:Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    iget-object v2, v2, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v0, v1, v2}, Lcom/htc/fragment/widget/CarouselContentGallery;->setup(Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;Lcom/htc/fragment/widget/FastScroller;)V

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mHookPanel:Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mHookPanel:Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselHost;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mTabContent:Lcom/htc/fragment/widget/CarouselContentGallery;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, p0, v0}, Lcom/htc/fragment/widget/CarouselHost;->printViewTree(Landroid/view/ViewGroup;I)V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your TabHost must have a FrameLayout whose id attribute is \'android.R.id.tabcontent\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method setup(Lcom/htc/fragment/app/LocalFragmentManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->setup()V

    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselHost;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    return-void
.end method

.method showTipBubble()V
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v2, "Carousel"

    const-string v5, "showTipBubble()"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x2020063

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselHost;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_2

    iget v2, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    if-gez v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x205006b

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    :cond_0
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v2, :cond_4

    move v2, v3

    :goto_0
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/16 v5, 0xe

    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v2, :cond_5

    move v2, v4

    :goto_1
    invoke-virtual {v0, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v5, 0xc

    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v2, :cond_6

    move v2, v4

    :goto_2
    invoke-virtual {v0, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v5, 0xf

    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v2, :cond_7

    move v2, v3

    :goto_3
    invoke-virtual {v0, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, 0xb

    iget-boolean v5, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v5, :cond_1

    move v4, v3

    :cond_1
    invoke-virtual {v0, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x2080158

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v1, :cond_2

    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v2, :cond_8

    move v2, v3

    :goto_4
    iget-boolean v4, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v4, :cond_9

    iget v4, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    :goto_5
    invoke-virtual {v1, v3, v3, v2, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_2
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    return-void

    :cond_4
    iget v2, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    mul-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_5
    move v2, v3

    goto :goto_1

    :cond_6
    move v2, v3

    goto :goto_2

    :cond_7
    move v2, v4

    goto :goto_3

    :cond_8
    iget v2, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    goto :goto_4

    :cond_9
    move v4, v3

    goto :goto_5
.end method

.method public startDrag(Landroid/view/View;Lcom/htc/fragment/widget/DragSource;Ljava/lang/Object;I)V
    .locals 14

    move-object/from16 v0, p2

    instance-of v12, v0, Lcom/htc/fragment/widget/BinGridView;

    if-eqz v12, :cond_3

    iget-object v12, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v12}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v12

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v12}, Lcom/htc/fragment/widget/CarouselWidget;->getFirstVisiblePosition()I

    move-result v5

    iget-object v12, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v12}, Lcom/htc/fragment/widget/CarouselWidget;->getLastVisiblePosition()I

    move-result v8

    iget-object v12, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    sub-int v13, v8, v5

    invoke-virtual {v12, v13}, Lcom/htc/fragment/widget/CarouselWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v12, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v12}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v12

    invoke-interface {v12}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    iget-boolean v12, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v12, :cond_2

    iget-object v12, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v12}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v7

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v12

    sub-int v13, v3, v8

    mul-int/2addr v13, v7

    add-int v1, v12, v13

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getWidth()I

    move-result v12

    sub-int/2addr v12, v1

    div-int/lit8 v13, v7, 0x2

    sub-int v4, v12, v13

    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselHost;->setDragBinGridViewToTrue()V

    iget-object v12, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v12}, Lcom/htc/fragment/widget/CarouselWidget;->getMaxCapacity()I

    move-result v12

    if-le v3, v12, :cond_0

    iget-object v12, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v12, v4}, Lcom/htc/fragment/widget/CarouselWidget;->scrollBy(I)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->removeTipBubble()V

    const/4 v12, 0x2

    new-array v10, v12, [I

    invoke-virtual {p1, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    iget v12, p0, Lcom/htc/fragment/widget/CarouselHost;->mLastMotionX:F

    const/4 v13, 0x0

    aget v13, v10, v13

    int-to-float v13, v13

    sub-float/2addr v12, v13

    iget v13, p0, Lcom/htc/fragment/widget/CarouselHost;->mCorOffsetX:F

    add-float/2addr v12, v13

    iput v12, p0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetX:F

    iget v12, p0, Lcom/htc/fragment/widget/CarouselHost;->mLastMotionY:F

    const/4 v13, 0x1

    aget v13, v10, v13

    int-to-float v13, v13

    sub-float/2addr v12, v13

    iget v13, p0, Lcom/htc/fragment/widget/CarouselHost;->mCorOffsetY:F

    add-float/2addr v12, v13

    iput v12, p0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetY:F

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    const/4 v12, 0x0

    invoke-virtual {p1, v12}, Landroid/view/View;->setPressed(Z)V

    const/4 v12, 0x0

    iput v12, p0, Lcom/htc/fragment/widget/CarouselHost;->mBitmapOffsetX:I

    const/4 v12, 0x0

    iput v12, p0, Lcom/htc/fragment/widget/CarouselHost;->mBitmapOffsetY:I

    if-nez p4, :cond_1

    const/4 v12, 0x4

    invoke-virtual {p1, v12}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselHost;->mOriginator:Landroid/view/View;

    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragSource:Lcom/htc/fragment/widget/DragSource;

    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragInfo:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/htc/fragment/widget/CarouselHost;->createDragView(Landroid/view/View;)V

    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragging:Z

    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/htc/fragment/widget/CarouselHost;->mShouldDrop:Z

    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/htc/fragment/widget/CarouselHost;->mShouldThrowEvent:Z

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->invalidate()V

    return-void

    :cond_2
    iget-object v12, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v12}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v6

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v12

    sub-int v13, v3, v8

    mul-int/2addr v13, v6

    add-int v1, v12, v13

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getHeight()I

    move-result v12

    sub-int/2addr v12, v1

    div-int/lit8 v13, v6, 0x2

    sub-int v4, v12, v13

    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselHost;->setDragBinGridViewToTrue()V

    iget-object v12, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v12}, Lcom/htc/fragment/widget/CarouselWidget;->getMaxCapacity()I

    move-result v12

    if-le v3, v12, :cond_0

    iget-object v12, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v12, v4}, Lcom/htc/fragment/widget/CarouselWidget;->scrollBy(I)V

    goto :goto_0

    :cond_3
    const v12, 0x2020064

    invoke-virtual {p0, v12}, Lcom/htc/fragment/widget/CarouselHost;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/fragment/widget/BinGridView;

    move-object/from16 v12, p3

    check-cast v12, Lcom/htc/fragment/widget/TaskInfo;

    iget v12, v12, Lcom/htc/fragment/widget/TaskInfo;->isRemovable:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_4

    const/4 v11, 0x1

    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/htc/fragment/widget/BinGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v12

    if-eqz v12, :cond_0

    if-eqz v11, :cond_0

    invoke-virtual {v2}, Lcom/htc/fragment/widget/BinGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v12

    invoke-interface {v12}, Landroid/widget/ListAdapter;->getCount()I

    move-result v12

    if-nez v12, :cond_5

    invoke-virtual {v2}, Lcom/htc/fragment/widget/BinGridView;->startDragOneItem()V

    goto/16 :goto_0

    :cond_4
    const/4 v11, 0x0

    goto :goto_1

    :cond_5
    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Lcom/htc/fragment/widget/BinGridView;->setDrawNextItem(Z)V

    goto/16 :goto_0
.end method

.method public stopTabByTag(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Removing the current tab!"

    invoke-static {v1}, Lcom/htc/fragment/widget/CarouselLog;->w(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/htc/fragment/widget/CarouselHost;->getTabSpec(Ljava/lang/String;)Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    move-result-object v0

    if-eqz v0, :cond_0

    #getter for: Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;
    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/fragment/widget/CarouselHost$TabSpec;)Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;->tabRemoved()V

    #getter for: Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;
    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/fragment/widget/CarouselHost$TabSpec;)Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;->getCacheView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/fragment/widget/CarouselHost$TabContainer;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/CarouselHost$TabContainer;->switchToFakeView()V

    goto :goto_0
.end method

.method switchPanelToPositive()V
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->viewSwitcher:Lcom/htc/fragment/widget/CarouselViewSwitcher;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->viewSwitcher:Lcom/htc/fragment/widget/CarouselViewSwitcher;

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/htc/fragment/widget/CarouselViewSwitcher;->switchPanelToPositive(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public switchPanelView()V
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->viewSwitcher:Lcom/htc/fragment/widget/CarouselViewSwitcher;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->viewSwitcher:Lcom/htc/fragment/widget/CarouselViewSwitcher;

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/htc/fragment/widget/CarouselViewSwitcher;->switchPanelView(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public useDefaultTabName(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/htc/fragment/widget/CarouselFragment;->setAlternativeTabName(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method
