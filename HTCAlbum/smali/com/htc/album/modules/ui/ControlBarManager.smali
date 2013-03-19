.class public Lcom/htc/album/modules/ui/ControlBarManager;
.super Ljava/lang/Object;
.source "ControlBarManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;
    }
.end annotation


# static fields
.field public static final ANIMATION_FADEIN:I = 0x1

.field public static final ANIMATION_FADEOUT:I = 0x2

.field private static final ANIMATION_NONE:I = 0x0

.field public static final FOOTER_BAR:I = 0x2

.field public static final HEADER_BAR:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "ControlBarManager"


# instance fields
.field private mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

.field private mContext:Landroid/content/Context;

.field private final mCreateFooterAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

.field private mEnableAnimation:Z

.field private mEnableFooterRight:Z

.field private mEnableInvalidateWhenShow:Z

.field private mHandler:Landroid/os/Handler;

.field private mHeaderStatusListener:Lcom/htc/album/modules/ui/widget/IControlBarHeaderListener;

.field private final mHideControlBarsAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

.field private final mHideFooterBarAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

.field private final mHideHeaderBarAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

.field private mHost:Lcom/htc/album/modules/ui/IControlBarHost;

.field private mHostBar:Lcom/htc/album/modules/ui/widget/GalleryHostBar;

.field private mIdentifier:Ljava/lang/String;

.field private final mInvalidateControlBarsAction:Ljava/lang/Runnable;

.field private mLifeCycle:I

.field private mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

.field private final mShowControlBarsAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

.field private final mToggleControlBarsAction:Ljava/lang/Runnable;

.field private mUiThread:Ljava/lang/Thread;

.field private mWorkaroundFooterParent:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/htc/album/modules/ui/IControlBarHost;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x2

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHostBar:Lcom/htc/album/modules/ui/widget/GalleryHostBar;

    iput-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    iput-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    iput-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mWorkaroundFooterParent:Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mContext:Landroid/content/Context;

    iput-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHandler:Landroid/os/Handler;

    iput-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHost:Lcom/htc/album/modules/ui/IControlBarHost;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mEnableInvalidateWhenShow:Z

    iput-boolean v4, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mEnableAnimation:Z

    iput-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mUiThread:Ljava/lang/Thread;

    iput-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHeaderStatusListener:Lcom/htc/album/modules/ui/widget/IControlBarHeaderListener;

    const-string v1, ""

    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mIdentifier:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mEnableFooterRight:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mLifeCycle:I

    new-instance v1, Lcom/htc/album/modules/ui/ControlBarManager$1;

    invoke-direct {v1, p0}, Lcom/htc/album/modules/ui/ControlBarManager$1;-><init>(Lcom/htc/album/modules/ui/ControlBarManager;)V

    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mToggleControlBarsAction:Ljava/lang/Runnable;

    new-instance v1, Lcom/htc/album/modules/ui/ControlBarManager$2;

    invoke-direct {v1, p0}, Lcom/htc/album/modules/ui/ControlBarManager$2;-><init>(Lcom/htc/album/modules/ui/ControlBarManager;)V

    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mShowControlBarsAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    new-instance v1, Lcom/htc/album/modules/ui/ControlBarManager$3;

    invoke-direct {v1, p0}, Lcom/htc/album/modules/ui/ControlBarManager$3;-><init>(Lcom/htc/album/modules/ui/ControlBarManager;)V

    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHideControlBarsAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    new-instance v1, Lcom/htc/album/modules/ui/ControlBarManager$4;

    invoke-direct {v1, p0}, Lcom/htc/album/modules/ui/ControlBarManager$4;-><init>(Lcom/htc/album/modules/ui/ControlBarManager;)V

    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHideHeaderBarAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    new-instance v1, Lcom/htc/album/modules/ui/ControlBarManager$5;

    invoke-direct {v1, p0}, Lcom/htc/album/modules/ui/ControlBarManager$5;-><init>(Lcom/htc/album/modules/ui/ControlBarManager;)V

    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHideFooterBarAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    new-instance v1, Lcom/htc/album/modules/ui/ControlBarManager$6;

    invoke-direct {v1, p0}, Lcom/htc/album/modules/ui/ControlBarManager$6;-><init>(Lcom/htc/album/modules/ui/ControlBarManager;)V

    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mInvalidateControlBarsAction:Ljava/lang/Runnable;

    new-instance v1, Lcom/htc/album/modules/ui/ControlBarManager$7;

    invoke-direct {v1, p0}, Lcom/htc/album/modules/ui/ControlBarManager$7;-><init>(Lcom/htc/album/modules/ui/ControlBarManager;)V

    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mCreateFooterAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    iput-object p1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHandler:Landroid/os/Handler;

    :cond_0
    iput-object p3, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHost:Lcom/htc/album/modules/ui/IControlBarHost;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mUiThread:Ljava/lang/Thread;

    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mWorkaroundFooterParent:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mWorkaroundFooterParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mWorkaroundFooterParent:Landroid/widget/RelativeLayout;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setId(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/htc/album/modules/ui/IControlBarHost;Z)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x2

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHostBar:Lcom/htc/album/modules/ui/widget/GalleryHostBar;

    iput-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    iput-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    iput-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mWorkaroundFooterParent:Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mContext:Landroid/content/Context;

    iput-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHandler:Landroid/os/Handler;

    iput-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHost:Lcom/htc/album/modules/ui/IControlBarHost;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mEnableInvalidateWhenShow:Z

    iput-boolean v4, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mEnableAnimation:Z

    iput-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mUiThread:Ljava/lang/Thread;

    iput-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHeaderStatusListener:Lcom/htc/album/modules/ui/widget/IControlBarHeaderListener;

    const-string v1, ""

    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mIdentifier:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mEnableFooterRight:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mLifeCycle:I

    new-instance v1, Lcom/htc/album/modules/ui/ControlBarManager$1;

    invoke-direct {v1, p0}, Lcom/htc/album/modules/ui/ControlBarManager$1;-><init>(Lcom/htc/album/modules/ui/ControlBarManager;)V

    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mToggleControlBarsAction:Ljava/lang/Runnable;

    new-instance v1, Lcom/htc/album/modules/ui/ControlBarManager$2;

    invoke-direct {v1, p0}, Lcom/htc/album/modules/ui/ControlBarManager$2;-><init>(Lcom/htc/album/modules/ui/ControlBarManager;)V

    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mShowControlBarsAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    new-instance v1, Lcom/htc/album/modules/ui/ControlBarManager$3;

    invoke-direct {v1, p0}, Lcom/htc/album/modules/ui/ControlBarManager$3;-><init>(Lcom/htc/album/modules/ui/ControlBarManager;)V

    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHideControlBarsAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    new-instance v1, Lcom/htc/album/modules/ui/ControlBarManager$4;

    invoke-direct {v1, p0}, Lcom/htc/album/modules/ui/ControlBarManager$4;-><init>(Lcom/htc/album/modules/ui/ControlBarManager;)V

    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHideHeaderBarAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    new-instance v1, Lcom/htc/album/modules/ui/ControlBarManager$5;

    invoke-direct {v1, p0}, Lcom/htc/album/modules/ui/ControlBarManager$5;-><init>(Lcom/htc/album/modules/ui/ControlBarManager;)V

    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHideFooterBarAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    new-instance v1, Lcom/htc/album/modules/ui/ControlBarManager$6;

    invoke-direct {v1, p0}, Lcom/htc/album/modules/ui/ControlBarManager$6;-><init>(Lcom/htc/album/modules/ui/ControlBarManager;)V

    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mInvalidateControlBarsAction:Ljava/lang/Runnable;

    new-instance v1, Lcom/htc/album/modules/ui/ControlBarManager$7;

    invoke-direct {v1, p0}, Lcom/htc/album/modules/ui/ControlBarManager$7;-><init>(Lcom/htc/album/modules/ui/ControlBarManager;)V

    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mCreateFooterAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    iput-object p1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHandler:Landroid/os/Handler;

    :cond_0
    iput-object p3, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHost:Lcom/htc/album/modules/ui/IControlBarHost;

    iput-boolean p4, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mEnableFooterRight:Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mUiThread:Ljava/lang/Thread;

    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mWorkaroundFooterParent:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-boolean v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mEnableFooterRight:Z

    if-eqz v1, :cond_1

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_1
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mWorkaroundFooterParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mWorkaroundFooterParent:Landroid/widget/RelativeLayout;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setId(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/modules/ui/ControlBarManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/album/modules/ui/ControlBarManager;->doToggleControlBarsVisibility()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/album/modules/ui/ControlBarManager;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/htc/album/modules/ui/ControlBarManager;->doShowControlBars(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/album/modules/ui/ControlBarManager;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/htc/album/modules/ui/ControlBarManager;->doHideControlBars(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/album/modules/ui/ControlBarManager;Landroid/view/animation/Animation;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/album/modules/ui/ControlBarManager;->doHideHeaderControlBar(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/album/modules/ui/ControlBarManager;Landroid/view/animation/Animation;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/album/modules/ui/ControlBarManager;->doHideFooterControlBar(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/album/modules/ui/ControlBarManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/album/modules/ui/ControlBarManager;->doInvalidateControlBars()V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/album/modules/ui/ControlBarManager;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/htc/album/modules/ui/ControlBarManager;->doCreateFooterBar(IZ)V

    return-void
.end method

.method private createAnimation(II)Landroid/view/animation/Animation;
    .locals 5

    const/4 v4, 0x2

    const/4 v0, 0x0

    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ControlBarManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ControlBarManager][createAnimation]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    packed-switch p2, :pswitch_data_0

    :cond_1
    :goto_0
    return-object v0

    :pswitch_0
    if-ne v4, p1, :cond_1

    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    const/16 v3, 0x121

    iget-boolean v4, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mEnableFooterRight:Z

    invoke-static {v1, v2, v3, v4}, Lcom/htc/album/Animation/animationSetFadeInOutDropList;->create(Landroid/content/Context;Landroid/view/View;IZ)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    if-ne v4, p1, :cond_1

    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    const/16 v3, 0x122

    iget-boolean v4, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mEnableFooterRight:Z

    invoke-static {v1, v2, v3, v4}, Lcom/htc/album/Animation/animationSetFadeInOutDropList;->create(Landroid/content/Context;Landroid/view/View;IZ)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private doCreateFooterBar(IZ)V
    .locals 7

    iget-object v3, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHost:Lcom/htc/album/modules/ui/IControlBarHost;

    iget-object v5, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    if-eqz v5, :cond_0

    if-eqz v3, :cond_0

    const/4 v5, -0x1

    if-ne v5, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v3}, Lcom/htc/album/modules/ui/IControlBarHost;->requestFooterBar()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    invoke-virtual {v5, p1}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getControlBar(I)Lcom/htc/album/modules/ui/widget/BaseControlBar;

    move-result-object v2

    check-cast v2, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    if-nez v2, :cond_2

    invoke-interface {v3, p1}, Lcom/htc/album/modules/ui/IControlBarHost;->onCreateFooterBar(I)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v5, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    invoke-virtual {v5, p1, v2}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->addControlBar(ILcom/htc/album/modules/ui/widget/BaseControlBar;)V

    :cond_2
    iget-object v5, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    invoke-virtual {v5, p1}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->switchControlBar(I)V

    if-eqz p2, :cond_3

    invoke-interface {v3, v2}, Lcom/htc/album/modules/ui/IControlBarHost;->onRefreshFooterBar(Lcom/htc/album/modules/ui/widget/GalleryFooterBar;)V

    :cond_3
    iget-object v5, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    invoke-virtual {v5}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v5, 0x1

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v6

    if-ne v5, v6, :cond_0

    :cond_4
    const/4 v4, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_5

    const/16 v4, 0x8

    const/4 v1, 0x0

    :cond_5
    const/4 v5, 0x2

    invoke-direct {p0, v5, v4, v1}, Lcom/htc/album/modules/ui/ControlBarManager;->setControlBarVisibility(III)V

    goto :goto_0
.end method

.method private doCreateFooterContainer(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHost:Lcom/htc/album/modules/ui/IControlBarHost;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v0}, Lcom/htc/album/modules/ui/IControlBarHost;->requestFooterBar()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mWorkaroundFooterParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mWorkaroundFooterParent:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    new-instance v3, Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    iget-object v4, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mContext:Landroid/content/Context;

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    iget-object v3, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    invoke-virtual {v3, v0}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->setOnControlBarClickListener(Lcom/htc/album/modules/ui/widget/ControlBarContainer$OnControlBarClickListener;)V

    iget-object v3, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->setDrawingCacheEnabled(Z)V

    iget-object v3, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    iget-object v4, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mWorkaroundFooterParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->attachTo(Landroid/view/ViewGroup;)V

    if-eqz p2, :cond_3

    instance-of v3, p2, Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_3

    move-object v2, p2

    check-cast v2, Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0xe

    iget-object v4, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mWorkaroundFooterParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getId()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_3
    iget-object v3, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->setVisibility(I)V

    goto :goto_0
.end method

.method private doHideControlBars(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    invoke-direct {p0, v1, v1}, Lcom/htc/album/modules/ui/ControlBarManager;->createAnimation(II)Landroid/view/animation/Animation;

    move-result-object p2

    :cond_0
    invoke-direct {p0, v1, v2, p2}, Lcom/htc/album/modules/ui/ControlBarManager;->setControlBarVisibility(IILandroid/view/animation/Animation;)V

    :cond_1
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    if-eqz v0, :cond_2

    const-string v0, "ControlBarManager"

    const-string v1, "[HTCAlbum][ControlBarManager][doHideControlBars]: "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    invoke-interface {v0, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private doHideFooterControlBar(Landroid/view/animation/Animation;)V
    .locals 2

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    invoke-direct {p0, v1, v1}, Lcom/htc/album/modules/ui/ControlBarManager;->createAnimation(II)Landroid/view/animation/Animation;

    move-result-object p1

    :cond_0
    const/16 v0, 0x8

    invoke-direct {p0, v1, v0, p1}, Lcom/htc/album/modules/ui/ControlBarManager;->setControlBarVisibility(IILandroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method

.method private doHideHeaderControlBar(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private doInvalidateControlBars()V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/album/modules/ui/ControlBarManager;->isControlBarShowing()Z

    move-result v0

    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    invoke-virtual {v1}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getFocusedBarId()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/htc/album/modules/ui/ControlBarManager;->doInvalidateFooterBar(IZ)V

    :cond_0
    return-void
.end method

.method private doInvalidateFooterBar(IZ)V
    .locals 3

    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHost:Lcom/htc/album/modules/ui/IControlBarHost;

    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    const/4 v2, -0x1

    if-ne v2, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v1}, Lcom/htc/album/modules/ui/IControlBarHost;->requestFooterBar()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    invoke-virtual {v2, p1}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getControlBar(I)Lcom/htc/album/modules/ui/widget/BaseControlBar;

    move-result-object v0

    check-cast v0, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    if-nez v0, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/htc/album/modules/ui/ControlBarManager;->doCreateFooterBar(IZ)V

    goto :goto_0

    :cond_2
    invoke-interface {v1, v0}, Lcom/htc/album/modules/ui/IControlBarHost;->onRefreshFooterBar(Lcom/htc/album/modules/ui/widget/GalleryFooterBar;)V

    goto :goto_0
.end method

.method private doShowControlBars(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    if-eqz v0, :cond_2

    if-nez p2, :cond_1

    invoke-direct {p0, v3, v2}, Lcom/htc/album/modules/ui/ControlBarManager;->createAnimation(II)Landroid/view/animation/Animation;

    move-result-object p2

    :cond_1
    invoke-direct {p0, v3, v1, p2}, Lcom/htc/album/modules/ui/ControlBarManager;->setControlBarVisibility(IILandroid/view/animation/Animation;)V

    :cond_2
    iget-boolean v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mEnableInvalidateWhenShow:Z

    if-ne v2, v0, :cond_3

    invoke-direct {p0}, Lcom/htc/album/modules/ui/ControlBarManager;->doInvalidateControlBars()V

    :cond_3
    return-void
.end method

.method private doToggleControlBarsVisibility()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, v2, v2}, Lcom/htc/album/modules/ui/ControlBarManager;->doHideControlBars(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v2, v2}, Lcom/htc/album/modules/ui/ControlBarManager;->doShowControlBars(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    invoke-virtual {v1}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0, v2, v2}, Lcom/htc/album/modules/ui/ControlBarManager;->doHideControlBars(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v2, v2}, Lcom/htc/album/modules/ui/ControlBarManager;->doShowControlBars(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private setControlBarVisibility(III)V
    .locals 1

    invoke-direct {p0, p1, p3}, Lcom/htc/album/modules/ui/ControlBarManager;->createAnimation(II)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/album/modules/ui/ControlBarManager;->setControlBarVisibility(IILandroid/view/animation/Animation;)V

    return-void
.end method

.method private setControlBarVisibility(IILandroid/view/animation/Animation;)V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    :goto_1
    return-void

    :pswitch_0
    iget-object v3, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    goto :goto_0

    :cond_1
    instance-of v3, p3, Landroid/view/animation/AlphaAnimation;

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getVisibility()I

    move-result v3

    if-ne v3, p2, :cond_2

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "ControlBarManager"

    const-string v4, "[HTCAlbum][ControlBarManager][setControlBarVisibility]: cancel previous anim..."

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/animation/Animation;->cancel()V

    :cond_2
    invoke-virtual {v0}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getVisibility()I

    move-result v3

    if-ne v3, p2, :cond_3

    const-string v3, "ControlBarManager"

    const-string v4, "[HTCAlbum][ControlBarManager][setControlBarVisibility]: skip same visibility..."

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-boolean v3, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mEnableAnimation:Z

    if-eqz v3, :cond_6

    if-eqz p3, :cond_5

    const/4 v3, 0x3

    iget v4, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mLifeCycle:I

    if-ne v3, v4, :cond_4

    sparse-switch p2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v3, "ControlBarManager"

    const-string v4, "[HTCAlbum][ControlBarManager][setControlBarVisibility]: VISIBLE "

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->setVisibility(I)V

    goto :goto_1

    :sswitch_1
    const-string v3, "ControlBarManager"

    const-string v4, "[HTCAlbum][ControlBarManager][setControlBarVisibility]: GONE "

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->setVisibility(I)V

    goto :goto_1

    :cond_4
    const-string v3, "ControlBarManager"

    const-string v4, "[HTCAlbum][ControlBarManager][setControlBarVisibility]: startAnimation... "

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_2
    sparse-switch p2, :sswitch_data_1

    goto :goto_1

    :sswitch_2
    const-string v3, "ControlBarManager"

    const-string v4, "[HTCAlbum][ControlBarManager][setControlBarVisibility]: VISIBLE"

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->setVisibility(I)V

    goto :goto_1

    :cond_5
    const-string v3, "ControlBarManager"

    const-string v4, "[HTCAlbum][ControlBarManager][setControlBarVisibility]: no anim... "

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    sparse-switch p2, :sswitch_data_2

    goto/16 :goto_1

    :sswitch_3
    const-string v3, "ControlBarManager"

    const-string v4, "[HTCAlbum][ControlBarManager][setControlBarVisibility]: VISIBLE "

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->setVisibility(I)V

    goto/16 :goto_1

    :sswitch_4
    const-string v3, "ControlBarManager"

    const-string v4, "[HTCAlbum][ControlBarManager][setControlBarVisibility]: GONE "

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->setVisibility(I)V

    goto/16 :goto_1

    :sswitch_5
    if-eqz p3, :cond_7

    iget-boolean v3, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mEnableAnimation:Z

    if-nez v3, :cond_8

    :cond_7
    const-string v3, "ControlBarManager"

    const-string v4, "[HTCAlbum][ControlBarManager][setControlBarVisibility]: GONE "

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->setVisibility(I)V

    goto/16 :goto_1

    :cond_8
    move-object v2, v0

    new-instance v3, Lcom/htc/album/modules/ui/ControlBarManager$8;

    invoke-direct {v3, p0, v2}, Lcom/htc/album/modules/ui/ControlBarManager$8;-><init>(Lcom/htc/album/modules/ui/ControlBarManager;Landroid/view/View;)V

    invoke-virtual {p3, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_2
        0x8 -> :sswitch_5
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x0 -> :sswitch_3
        0x8 -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method public attach(Landroid/view/ViewGroup;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/album/modules/ui/ControlBarManager;->attach(Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method public attach(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/htc/album/modules/ui/ControlBarManager;->doCreateFooterContainer(Landroid/view/ViewGroup;Landroid/view/View;)V

    goto :goto_0
.end method

.method public attachActionBar(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    return-void
.end method

.method public attachHostBar(Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;)V
    .locals 1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHostBar:Lcom/htc/album/modules/ui/widget/GalleryHostBar;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/album/modules/ui/widget/GalleryHostBar;

    invoke-direct {v0, p1}, Lcom/htc/album/modules/ui/widget/GalleryHostBar;-><init>(Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;)V

    iput-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHostBar:Lcom/htc/album/modules/ui/widget/GalleryHostBar;

    goto :goto_0
.end method

.method public createControlBar(II)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Lcom/htc/album/modules/ui/ControlBarManager;->createFooterBar(IZ)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public createControlBar(IIZ)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0, p2, p3}, Lcom/htc/album/modules/ui/ControlBarManager;->createFooterBar(IZ)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final createControlBars(II)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Lcom/htc/album/modules/ui/ControlBarManager;->createControlBar(II)V

    return-void
.end method

.method public createFooterBar(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mCreateFooterAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    invoke-virtual {v0, p2}, Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;->setVisible(Z)V

    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mCreateFooterAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    invoke-virtual {v0, p1}, Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;->setId(I)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mUiThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mCreateFooterAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mCreateFooterAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;->run()V

    goto :goto_0
.end method

.method public detach()V
    .locals 2

    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->clearAnimation()V

    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->detach()V

    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mWorkaroundFooterParent:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mWorkaroundFooterParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mWorkaroundFooterParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mWorkaroundFooterParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHostBar:Lcom/htc/album/modules/ui/widget/GalleryHostBar;

    return-void
.end method

.method public final getFooterBar()Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    invoke-virtual {v1}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getFocusedControlBar()Lcom/htc/album/modules/ui/widget/BaseControlBar;

    move-result-object v0

    check-cast v0, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    :cond_0
    return-object v0
.end method

.method public final getFooterContainer()Lcom/htc/album/modules/ui/widget/ControlBarContainer;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    return-object v0
.end method

.method public getHostBar()Lcom/htc/album/modules/ui/widget/GalleryHostBar;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHostBar:Lcom/htc/album/modules/ui/widget/GalleryHostBar;

    return-object v0
.end method

.method public final hideControlBar(I)V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/album/modules/ui/ControlBarManager;->setControlBarVisibility(III)V

    return-void
.end method

.method public final hideControlBars()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/htc/album/modules/ui/ControlBarManager;->hideControlBars(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    return-void
.end method

.method public final hideControlBars(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 3

    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHideControlBarsAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    invoke-virtual {v1, p1}, Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;->setHeaderBarAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHideControlBarsAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    invoke-virtual {v1, p2}, Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;->setFooterBarAnimation(Landroid/view/animation/Animation;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mUiThread:Ljava/lang/Thread;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHideControlBarsAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHideControlBarsAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    invoke-virtual {v1}, Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;->run()V

    goto :goto_0
.end method

.method public final hideFooterControlBar(Landroid/view/animation/Animation;)V
    .locals 3

    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHideFooterBarAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    invoke-virtual {v1, p1}, Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;->setFooterBarAnimation(Landroid/view/animation/Animation;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mUiThread:Ljava/lang/Thread;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHideFooterBarAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHideFooterBarAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    invoke-virtual {v1}, Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;->run()V

    goto :goto_0
.end method

.method public final hideHeaderControlBar(Landroid/view/animation/Animation;)V
    .locals 3

    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHideHeaderBarAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    invoke-virtual {v1, p1}, Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;->setHeaderBarAnimation(Landroid/view/animation/Animation;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mUiThread:Ljava/lang/Thread;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHideHeaderBarAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHideHeaderBarAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    invoke-virtual {v1}, Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;->run()V

    goto :goto_0
.end method

.method public final invalidateControlBars()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mUiThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mInvalidateControlBarsAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mInvalidateControlBarsAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public isControlBarShowing()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    invoke-virtual {v2}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mLifeCycle:I

    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mLifeCycle:I

    return-void
.end method

.method public setEnableAnimation(Z)V
    .locals 0

    return-void
.end method

.method public setEnableInvalidateWhenShow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mEnableInvalidateWhenShow:Z

    return-void
.end method

.method public setHeaderControlStatusListener(Lcom/htc/album/modules/ui/widget/IControlBarHeaderListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHeaderStatusListener:Lcom/htc/album/modules/ui/widget/IControlBarHeaderListener;

    return-void
.end method

.method public setIdentifier(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mIdentifier:Ljava/lang/String;

    return-void
.end method

.method public final showControlBar(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/album/modules/ui/ControlBarManager;->setControlBarVisibility(III)V

    return-void
.end method

.method public final showControlBars()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/htc/album/modules/ui/ControlBarManager;->showControlBars(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    return-void
.end method

.method public final showControlBars(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 3

    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mShowControlBarsAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    invoke-virtual {v1, p2}, Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;->setFooterBarAnimation(Landroid/view/animation/Animation;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mUiThread:Ljava/lang/Thread;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mShowControlBarsAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mShowControlBarsAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    invoke-virtual {v1}, Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;->run()V

    goto :goto_0
.end method

.method public final toggleControlBarsVisibility()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mUiThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mToggleControlBarsAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mToggleControlBarsAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
