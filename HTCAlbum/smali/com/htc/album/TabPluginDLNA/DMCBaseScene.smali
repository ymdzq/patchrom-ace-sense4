.class public abstract Lcom/htc/album/TabPluginDLNA/DMCBaseScene;
.super Lcom/htc/sunny2/scene/GalleryBaseScene;
.source "DMCBaseScene.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/TabPluginDLNA/DMCBaseScene$DLNABroadcastReceiver;,
        Lcom/htc/album/TabPluginDLNA/DMCBaseScene$RendererListener;,
        Lcom/htc/album/TabPluginDLNA/DMCBaseScene$ControllerListener;,
        Lcom/htc/album/TabPluginDLNA/DMCBaseScene$ViewScrollStateChangedListener;,
        Lcom/htc/album/TabPluginDLNA/DMCBaseScene$FullscreenZoomListener;,
        Lcom/htc/album/TabPluginDLNA/DMCBaseScene$FilmstripItemSelectedListner;,
        Lcom/htc/album/TabPluginDLNA/DMCBaseScene$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ADAPTER:",
        "Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;",
        ">",
        "Lcom/htc/sunny2/scene/GalleryBaseScene",
        "<",
        "Lcom/htc/sunny2/fullfilmview/FullFilmView;",
        "TADAPTER;>;"
    }
.end annotation


# static fields
.field public static final ERROR_DISCOVER_TIMOUT_CODE:I = -0x4000

.field private static final FOOTER_BAR_ID:I = 0x1

.field public static final LOG_TAG:Ljava/lang/String; = "DLNABaseScene"

.field public static final MODE_NORMAL:I = 0x1

.field public static final MODE_SLIDESHOW:I = 0x2


# instance fields
.field private final DEBUG:Z

.field protected mAdapterBinded:Z

.field protected mAdapterReady:Z

.field private mControllerListener:Lcom/htc/album/TabPluginDLNA/DMCBaseScene$ControllerListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/album/TabPluginDLNA/DMCBaseScene",
            "<TADAPTER;>.Controller",
            "Listener;"
        }
    .end annotation
.end field

.field protected mControllerName:Ljava/lang/String;

.field protected mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

.field mDLNAServiceStatusListener:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;

.field protected mDMCExtras:Landroid/os/Bundle;

.field protected mFromGallery:Z

.field private mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

.field protected mIsRepeated:Z

.field protected mMsgBuffering:Ljava/lang/String;

.field protected mMsgCannotPlay:Ljava/lang/String;

.field protected mMsgPauseNotSupport:Ljava/lang/String;

.field protected mMsgSendingContent:Ljava/lang/String;

.field protected mMsgTimeout:Ljava/lang/String;

.field private mOnItemClickListener:Lcom/htc/album/TabPluginDLNA/DMCBaseScene$OnItemClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/album/TabPluginDLNA/DMCBaseScene",
            "<TADAPTER;>.OnItemClick",
            "Listener;"
        }
    .end annotation
.end field

.field protected mPlayingIndex:J

.field private mReceiver:Lcom/htc/album/TabPluginDLNA/DMCBaseScene$DLNABroadcastReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/album/TabPluginDLNA/DMCBaseScene",
            "<TADAPTER;>.D",
            "LNABroadcastReceiver;"
        }
    .end annotation
.end field

.field protected mRendererID:Ljava/lang/String;

.field private mRendererListener:Lcom/htc/album/TabPluginDLNA/DMCBaseScene$RendererListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/album/TabPluginDLNA/DMCBaseScene",
            "<TADAPTER;>.Renderer",
            "Listener;"
        }
    .end annotation
.end field

.field protected mRendererName:Ljava/lang/String;

.field protected mRendererReady:Z

.field protected mRunningMode:I

.field protected mSkipPlayIndexChanged:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;-><init>()V

    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->DEBUG:Z

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mControllerName:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mMsgBuffering:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mMsgSendingContent:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mMsgTimeout:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mMsgCannotPlay:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mMsgPauseNotSupport:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mRendererName:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mRendererID:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mIsRepeated:Z

    iput-boolean v3, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mFromGallery:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mPlayingIndex:J

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mRunningMode:I

    iput-boolean v3, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mSkipPlayIndexChanged:Z

    iput-boolean v3, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mAdapterReady:Z

    iput-boolean v3, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mAdapterBinded:Z

    iput-boolean v3, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mRendererReady:Z

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mDMCExtras:Landroid/os/Bundle;

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mControllerListener:Lcom/htc/album/TabPluginDLNA/DMCBaseScene$ControllerListener;

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mRendererListener:Lcom/htc/album/TabPluginDLNA/DMCBaseScene$RendererListener;

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mReceiver:Lcom/htc/album/TabPluginDLNA/DMCBaseScene$DLNABroadcastReceiver;

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    new-instance v0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene$OnItemClickListener;

    invoke-direct {v0, p0, v2}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene$OnItemClickListener;-><init>(Lcom/htc/album/TabPluginDLNA/DMCBaseScene;Lcom/htc/album/TabPluginDLNA/DMCBaseScene$1;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mOnItemClickListener:Lcom/htc/album/TabPluginDLNA/DMCBaseScene$OnItemClickListener;

    new-instance v0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene$1;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene$1;-><init>(Lcom/htc/album/TabPluginDLNA/DMCBaseScene;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mDLNAServiceStatusListener:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a016f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mControllerName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a015e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mMsgBuffering:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a015f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mMsgSendingContent:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0160

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mMsgTimeout:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a016c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mMsgCannotPlay:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0162

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mMsgPauseNotSupport:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/album/TabPluginDLNA/DMCBaseScene;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/album/TabPluginDLNA/DMCBaseScene;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->doClose()V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/album/TabPluginDLNA/DMCBaseScene;)Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/album/TabPluginDLNA/DMCBaseScene;)Lcom/htc/sunnyCore/view/SView;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/album/TabPluginDLNA/DMCBaseScene;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method private doClose()V
    .locals 2

    const-string v0, "DLNABaseScene"

    const-string v1, "[doClose]"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->powerOff()V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/htc/album/TabPluginDLNA/DLNAHelper;->setDLNAPlayingState(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->gotoThumbnailSense()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private doRepeat()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "DLNABaseScene"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[doRepeat] Repeate state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mIsRepeated:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-boolean v3, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mIsRepeated:Z

    if-nez v3, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mIsRepeated:Z

    iget-boolean v1, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mIsRepeated:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setRepeat(I)V

    :goto_1
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->invalidateControlBars()V

    :goto_2
    return-void

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setRepeat(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "DLNABaseScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[doRepeat]: NG ! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private getNotificationInfo()Lcom/htc/dlnainterface/DLNAStatusBarData;
    .locals 2

    new-instance v0, Lcom/htc/dlnainterface/DLNAStatusBarData;

    invoke-direct {v0}, Lcom/htc/dlnainterface/DLNAStatusBarData;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Lcom/htc/dlnainterface/DLNAStatusBarData;->nFilterType:I

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->getLaunchAction()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/dlnainterface/DLNAStatusBarData;->szActionLaunch:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mControllerName:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/dlnainterface/DLNAStatusBarData;->szControllerName:Ljava/lang/String;

    const-string v1, "HtcAlbum"

    iput-object v1, v0, Lcom/htc/dlnainterface/DLNAStatusBarData;->szAppName:Ljava/lang/String;

    return-object v0
.end method

.method private isDMCPlaying()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->isPlaying()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onErrorHandle(ILjava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x0

    const-string v2, "DLNABaseScene"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onErrorHandle]: Error Code : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", reason = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v2, :cond_0

    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    :goto_1
    :sswitch_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0

    :cond_1
    sparse-switch p1, :sswitch_data_0

    const-string v1, "DLNABaseScene"

    const-string v2, "[onErrorHandle] error Code not in Range !"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_1
    invoke-virtual {p0, v5, v1}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_1

    :sswitch_2
    const/4 v2, 0x2

    invoke-virtual {p0, v2, v1}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_1

    :sswitch_3
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mMsgCannotPlay:Ljava/lang/String;

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :sswitch_4
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mMsgPauseNotSupport:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x4000 -> :sswitch_1
        -0x13e -> :sswitch_0
        -0x13a -> :sswitch_4
        -0x134 -> :sswitch_3
        -0x12d -> :sswitch_2
        -0x12c -> :sswitch_1
        0x2c0 -> :sswitch_3
        0x2ca -> :sswitch_3
        0x2cc -> :sswitch_3
    .end sparse-switch
.end method

.method private requestSetAdapter()V
    .locals 2

    iget-boolean v1, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mAdapterBinded:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mRendererReady:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mAdapterReady:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->getStartupIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    invoke-super {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onNotifyUpdateComplete()V

    goto :goto_0
.end method

.method private saveData()V
    .locals 4

    :try_start_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "Render"

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mRendererID:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "dmc_repeat"

    iget-boolean v3, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mIsRepeated:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->onSaveData(Landroid/content/SharedPreferences$Editor;)V

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method protected LaunchDetails(Lcom/htc/dlnainterface/DLNAContentItemDetails;)V
    .locals 20

    if-nez p1, :cond_1

    const-string v2, "DLNABaseScene"

    const-string v3, "[LaunchDetails] Item detail null..."

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v2, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "DLNABaseScene"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LaunchDetails]: duration:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentDuration:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "DLNABaseScene"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LaunchDetails]: filename:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->fileName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "DLNABaseScene"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LaunchDetails]: nameDMS:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->nameDMS:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "DLNABaseScene"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LaunchDetails]: trackname:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentTitle:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "DLNABaseScene"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LaunchDetails]: artistname:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentArtist:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "DLNABaseScene"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LaunchDetails]: albumname:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentAlbum:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "DLNABaseScene"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LaunchDetails]: genre:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentGenre:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "DLNABaseScene"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LaunchDetails]: composer:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentComposer:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "DLNABaseScene"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LaunchDetails]: location:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentPath:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "DLNABaseScene"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LaunchDetails]: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentBitRate:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "DLNABaseScene"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LaunchDetails]: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentDate:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "DLNABaseScene"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LaunchDetails]: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentDiscNumber:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "DLNABaseScene"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LaunchDetails]: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentFps:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "DLNABaseScene"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LaunchDetails]: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentResolution:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "DLNABaseScene"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LaunchDetails]: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentSize:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "DLNABaseScene"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LaunchDetails]: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentStatus:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "DLNABaseScene"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LaunchDetails]: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentTitle:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "DLNABaseScene"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LaunchDetails]: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentTrackNumber:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "DLNABaseScene"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LaunchDetails]: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentType:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "DLNABaseScene"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LaunchDetails]: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->thumbnailPath:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-instance v1, Lcom/htc/album/TabPluginDLNA/DetailDlgParams;

    invoke-direct {v1}, Lcom/htc/album/TabPluginDLNA/DetailDlgParams;-><init>()V

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentPath:Ljava/lang/String;

    if-eqz v2, :cond_3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentPath:Ljava/lang/String;

    :goto_1
    new-instance v19, Landroid/content/Intent;

    invoke-direct/range {v19 .. v19}, Landroid/content/Intent;-><init>()V

    const-string v2, "HdcDMC"

    const-string v3, "remote"

    const-string v5, "image"

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentDate:Ljava/lang/String;

    if-eqz v6, :cond_4

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentDate:Ljava/lang/String;

    :goto_2
    move-object/from16 v0, p1

    iget-wide v7, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentSize:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_5

    move-object/from16 v0, p1

    iget-wide v7, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentSize:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    :goto_3
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentResolution:Ljava/lang/String;

    if-eqz v8, :cond_6

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentResolution:Ljava/lang/String;

    :goto_4
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentType:Ljava/lang/String;

    if-eqz v9, :cond_7

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentType:Ljava/lang/String;

    :goto_5
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentStatus:Ljava/lang/String;

    if-eqz v10, :cond_8

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentStatus:Ljava/lang/String;

    :goto_6
    const-string v11, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    const-string v12, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentDuration:J

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-lez v13, :cond_9

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentDuration:J

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    :goto_7
    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentFps:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_a

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentFps:J

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    :goto_8
    move-object/from16 v0, p1

    iget-wide v15, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentBitRate:J

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-lez v15, :cond_b

    move-object/from16 v0, p1

    iget-wide v15, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentBitRate:J

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    :goto_9
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->thumbnailPath:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_c

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->thumbnailPath:Ljava/lang/String;

    move-object/from16 v16, v0

    :goto_a
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->fileName:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_d

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->fileName:Ljava/lang/String;

    move-object/from16 v17, v0

    :goto_b
    const-string v18, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    invoke-virtual/range {v1 .. v18}, Lcom/htc/album/TabPluginDLNA/DetailDlgParams;->CreateExtraParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v19

    if-eqz v19, :cond_0

    const-string v2, "fullscreen"

    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v2, 0x400

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_3
    const-string v4, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    goto/16 :goto_1

    :cond_4
    const-string v6, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    goto/16 :goto_2

    :cond_5
    const-string v7, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    goto/16 :goto_3

    :cond_6
    const-string v8, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    goto/16 :goto_4

    :cond_7
    const-string v9, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    goto/16 :goto_5

    :cond_8
    const-string v10, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    goto/16 :goto_6

    :cond_9
    const-string v13, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    goto :goto_7

    :cond_a
    const-string v14, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    goto :goto_8

    :cond_b
    const-string v15, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    goto :goto_9

    :cond_c
    const-string v16, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    goto :goto_a

    :cond_d
    const-string v17, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    goto :goto_b
.end method

.method protected connectDLNAService()V
    .locals 2

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mDLNAServiceStatusListener:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;

    invoke-virtual {v0, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->connect(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;)Z

    :cond_0
    return-void
.end method

.method protected abstract createAdapter(Landroid/os/Bundle;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")TADAPTER;"
        }
    .end annotation
.end method

.method protected defaultControlBarOn()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected disconnectDLNAService()V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->disconnect()V

    :cond_0
    return-void
.end method

.method protected doPlay()V
    .locals 5

    const v1, 0x220150

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->onRemoveMessage(I)V

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v0

    int-to-long v1, v0

    iget-wide v3, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mPlayingIndex:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->playItemAt(I)V

    iget v1, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mRunningMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v1}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->startPlay()V

    goto :goto_0
.end method

.method protected doSimulateScreenTouched(IZ)V
    .locals 4

    const/16 v3, 0x4e3c

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v1, :cond_0

    const-string v1, "DLNABaseScene"

    const-string v2, "[doSimulateScreenTouched]mSceneControl is null"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v3}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->onRemoveMessage(I)V

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->isControlBarShowing()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x0

    const/16 v2, 0x1388

    invoke-virtual {p0, v3, v1, v2}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->onPostMessage(ILjava/lang/Object;I)V

    :cond_1
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->invalidateOptionsMenu()V

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->toggleControlBarsVisibility()V

    goto :goto_0
.end method

.method public enableFullScreen()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public enableProgressLoading()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public enableRightFooter()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract getBackIntent()Landroid/content/Intent;
.end method

.method protected abstract getFullFilmViewExtras()Landroid/os/Bundle;
.end method

.method public getHeaderSubtitle()Ljava/lang/String;
    .locals 8

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v3}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getState()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v0, :cond_1

    const-string v3, "DLNABaseScene"

    const-string v4, "[getHeaderSubtitle] adapter is null"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return-object v2

    :sswitch_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mMsgBuffering:Ljava/lang/String;

    goto :goto_0

    :sswitch_1
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mMsgSendingContent:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mMsgTimeout:Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v3, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mRendererName:Ljava/lang/String;

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0a0153

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mRendererName:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x68 -> :sswitch_2
        0x6a -> :sswitch_1
    .end sparse-switch
.end method

.method protected abstract getLaunchAction()Ljava/lang/String;
.end method

.method protected declared-synchronized getStartupIndex()I
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "itemIndex"

    iget-wide v4, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mPlayingIndex:J

    long-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    monitor-exit p0

    return v1

    :catch_0
    move-exception v0

    const/4 v1, -0x1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public gotoThumbnailSense()V
    .locals 7

    const-string v3, "DLNABaseScene"

    const-string v4, "[gotoThumbnailSense]: Local Mode"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->unregisterReceiver()V

    :try_start_0
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->requestLaunchGallery()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v4, -0x1

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string v6, "itemIndex"

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v3, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v3

    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->getBackIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_0

    const/high16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "DLNABaseScene"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[gotoThumbnailSense] Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected loadData()V
    .locals 4

    :try_start_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "from_gallery"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mFromGallery:Z

    iget-boolean v2, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mFromGallery:Z

    if-eqz v2, :cond_0

    const-string v2, "Render"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mRendererID:Ljava/lang/String;

    :goto_0
    const-string v2, "dmc_repeat"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mIsRepeated:Z

    iget-boolean v2, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mFromGallery:Z

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->onLoadData(Landroid/content/Intent;Landroid/content/SharedPreferences;Z)V

    :goto_1
    return-void

    :cond_0
    const-string v2, "Render"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mRendererID:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public onActionBarBackPressed()V
    .locals 0

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->gotoThumbnailSense()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const-string v1, "DLNABaseScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onActivityResult]: resultCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", requestCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    if-ne v1, p2, :cond_2

    const/16 v1, 0x1398

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    if-eqz v1, :cond_2

    const-string v1, "DMR"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "DLNABaseScene"

    const-string v2, "[onActivityResult]: Selecr DMR is Null !"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->doClose()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mRendererID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "DLNABaseScene"

    const-string v2, "[onActivityResult]: Select DMR is the same."

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "DLNABaseScene"

    const-string v2, "[onActivityResult]: Selecr DMR is different with previous."

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->getNotificationInfo()Lcom/htc/dlnainterface/DLNAStatusBarData;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setRenderer(Ljava/lang/String;Lcom/htc/dlnainterface/DLNAStatusBarData;)Z

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 1

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->gotoThumbnailSense()V

    const/4 v0, 0x1

    return v0
.end method

.method public onBindAdapter()V
    .locals 5

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mAdapterBinded:Z

    invoke-super {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onBindAdapter()V

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->getStartupIndex()I

    move-result v0

    const-string v1, "DLNABaseScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onBindAdapter] Start Index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v1, v2, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setMediaListIHT(Lcom/htc/sunnyCore/IMediaList;I)V

    iget-boolean v1, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mFromGallery:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->setDataSource(I)V

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->playItemAt(I)V

    :cond_0
    iget-boolean v1, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mIsRepeated:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v1, v4}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setRepeat(I)V

    :goto_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->invalidateOptionsMenu()V

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->invalidateControlBars()V

    const/16 v1, 0x2724

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->onRemoveMessage(I)V

    const/16 v1, 0x2728

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->onPostMessage(I)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setRepeat(I)V

    goto :goto_0
.end method

.method public onBroadcastMediaConnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastMediaDisconnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastReceive(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onBubbleDismissed()V
    .locals 3

    const/16 v0, 0x4e3c

    const/4 v1, 0x0

    const/16 v2, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->onPostMessage(ILjava/lang/Object;I)V

    return-void
.end method

.method public onBubblePopped()V
    .locals 1

    const/16 v0, 0x4e3c

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->onRemoveMessage(I)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v1}, Lcom/htc/album/modules/ui/ControlBarManager;->getFooterBar()Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v0

    check-cast v0, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;->doCenterControlPanel()V

    const-string v1, "DLNABaseScene"

    const-string v2, "[onConfigurationChanged]: ..."

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onControlButtonClick(Lcom/htc/album/modules/ui/widget/ControlButton;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onControlButtonClick(Lcom/htc/album/modules/ui/widget/ControlButton;)V

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->onPlayPrevious()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->onPlayNext()V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->requestPause()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mRunningMode:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->startPlay()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mRunningMode:I

    goto :goto_0

    :sswitch_3
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->doClose()V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/htc/album/TabPluginDLNA/DLNAHelper;->launchSelectPlayer(Landroid/app/Activity;Z)V

    goto :goto_0

    :sswitch_5
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->doRepeat()V

    goto :goto_0

    :sswitch_6
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->onRequestDetails()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_6
        0xe -> :sswitch_5
        0xf -> :sswitch_1
        0x24 -> :sswitch_2
        0x27 -> :sswitch_0
        0x2a -> :sswitch_3
        0x2b -> :sswitch_4
    .end sparse-switch
.end method

.method public onCreateFooterBar(I)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    .locals 7

    const/4 v2, 0x0

    const-string v3, "DLNABaseScene"

    const-string v4, "[onCreateFooterBar] + "

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    const-string v2, "DLNABaseScene"

    const-string v3, "[onCreateFooterBar]can\'t get context"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x3

    invoke-static {v1, v3}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->makeFooter(Landroid/content/Context;I)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v0

    check-cast v0, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;

    const/16 v3, 0x27

    const v4, 0x20800c0

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/PlayerControllerButton;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/album/modules/ui/widget/ControlButton;->show()V

    const/16 v3, 0x24

    const v4, 0x20800b6

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/PlayerControllerButton;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/album/modules/ui/widget/ControlButton;->show()V

    const/16 v3, 0xf

    const v4, 0x20800b4

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/PlayerControllerButton;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/album/modules/ui/widget/ControlButton;->show()V

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;->doCenterControlPanel()V

    goto :goto_0
.end method

.method public onCreateScene()Lcom/htc/sunny2/fullfilmview/FullFilmView;
    .locals 10

    const/4 v6, 0x0

    iget-boolean v7, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "DLNABaseScene"

    const-string v8, "[onCreateScene] + "

    invoke-static {v7, v8}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v7, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v7, "DLNABaseScene"

    const-string v8, "[onCreateScene] -: Activity is null"

    invoke-static {v7, v8}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v6

    :cond_1
    :goto_0
    return-object v3

    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget-object v7, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunnyCore/SunnyContext;

    move-result-object v7

    invoke-direct {v2, v1, v7}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V

    new-instance v4, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    iget-object v7, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunnyCore/SunnyContext;

    move-result-object v7

    invoke-direct {v4, v1, v7}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V

    new-instance v3, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget-object v7, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunnyCore/SunnyContext;

    move-result-object v7

    invoke-direct {v3, v1, v7, v2, v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;)V

    new-instance v7, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-direct {v7, v1}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->getFullFilmViewExtras()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_3

    const-string v7, "FULL_FILM_FLAG"

    const/4 v8, 0x1

    invoke-virtual {v5, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_3
    iget-object v7, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v7, v1, v5}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->init(Landroid/content/Context;Landroid/os/Bundle;)V

    iget-object v7, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v7, v3}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->setUpdateListener(Lcom/htc/sunnyCore/Preparator$UpdateListener;)V

    iget-object v7, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v3, v7}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setPreparation(Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;)V

    new-instance v7, Lcom/htc/album/TabPluginDLNA/DMCBaseScene$FullscreenZoomListener;

    invoke-direct {v7, p0, v6}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene$FullscreenZoomListener;-><init>(Lcom/htc/album/TabPluginDLNA/DMCBaseScene;Lcom/htc/album/TabPluginDLNA/DMCBaseScene$1;)V

    invoke-virtual {v3, v7}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setPanZoomListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;)V

    new-instance v7, Lcom/htc/album/TabPluginDLNA/DMCBaseScene$ViewScrollStateChangedListener;

    invoke-direct {v7, p0, v6}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene$ViewScrollStateChangedListener;-><init>(Lcom/htc/album/TabPluginDLNA/DMCBaseScene;Lcom/htc/album/TabPluginDLNA/DMCBaseScene$1;)V

    invoke-virtual {v3, v7}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setOnScrollListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnScrollListener;)V

    new-instance v7, Lcom/htc/album/TabPluginDLNA/DMCBaseScene$FilmstripItemSelectedListner;

    invoke-direct {v7, p0, v6}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene$FilmstripItemSelectedListner;-><init>(Lcom/htc/album/TabPluginDLNA/DMCBaseScene;Lcom/htc/album/TabPluginDLNA/DMCBaseScene$1;)V

    invoke-virtual {v3, v7}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setOnItemSelectedListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemSelectedListener;)V

    iget-object v7, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mOnItemClickListener:Lcom/htc/album/TabPluginDLNA/DMCBaseScene$OnItemClickListener;

    invoke-virtual {v3, v7}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setOnItemClickListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemClickListener;)V

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->disableGesture()V

    new-instance v7, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-direct {v7, v1, v8, v9}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;-><init>(Landroid/content/Context;II)V

    iput-object v7, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    new-instance v7, Lcom/htc/album/TabPluginDLNA/DMCBaseScene$ControllerListener;

    invoke-direct {v7, p0, v6}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene$ControllerListener;-><init>(Lcom/htc/album/TabPluginDLNA/DMCBaseScene;Lcom/htc/album/TabPluginDLNA/DMCBaseScene$1;)V

    iput-object v7, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mControllerListener:Lcom/htc/album/TabPluginDLNA/DMCBaseScene$ControllerListener;

    new-instance v7, Lcom/htc/album/TabPluginDLNA/DMCBaseScene$RendererListener;

    invoke-direct {v7, p0, v6}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene$RendererListener;-><init>(Lcom/htc/album/TabPluginDLNA/DMCBaseScene;Lcom/htc/album/TabPluginDLNA/DMCBaseScene$1;)V

    iput-object v7, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mRendererListener:Lcom/htc/album/TabPluginDLNA/DMCBaseScene$RendererListener;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->registerReceiver()V

    iget-boolean v6, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->DEBUG:Z

    if-eqz v6, :cond_1

    const-string v6, "DLNABaseScene"

    const-string v7, "[onCreateScene] - "

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public bridge synthetic onCreateScene()Lcom/htc/sunnyCore/view/SView;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->onCreateScene()Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v0

    return-object v0
.end method

.method public onDLNAServiceConnected()V
    .locals 3

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mControllerListener:Lcom/htc/album/TabPluginDLNA/DMCBaseScene$ControllerListener;

    invoke-virtual {v0, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setControllerStatusListener(Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;)V

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mRendererListener:Lcom/htc/album/TabPluginDLNA/DMCBaseScene$RendererListener;

    invoke-virtual {v0, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setRendererStatusListener(Lcom/htc/dlnasharedmodule/HtcDLNARendererStatusListener;)V

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mRendererID:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mRendererID:Ljava/lang/String;

    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->getNotificationInfo()Lcom/htc/dlnainterface/DLNAStatusBarData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setRenderer(Ljava/lang/String;Lcom/htc/dlnainterface/DLNAStatusBarData;)Z

    :goto_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    :goto_2
    iput v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mRunningMode:I

    const-string v0, "DLNABaseScene"

    const-string v1, "[GalleryDLNA][onDLNAServiceConnected]"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->getNotificationInfo()Lcom/htc/dlnainterface/DLNAStatusBarData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setRendererAsReadyDongle(Lcom/htc/dlnainterface/DLNAStatusBarData;)Z

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_2
.end method

.method public onDLNAServiceDisconnected()V
    .locals 0

    return-void
.end method

.method public onDestroyScene()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->unregisterReceiver()V

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setPanZoomListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;)V

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setOnScrollListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnScrollListener;)V

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setOnItemSelectedListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setOnItemClickListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemClickListener;)V

    invoke-super {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onDestroyScene()V

    return-void
.end method

.method public onEnableActionBarAppButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onEnableActionBarBackButton()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onEnterScene(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onEnterScene(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->defaultControlBarOn()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->createFooterBar(IZ)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->setEnableControlBarAnimation(Z)V

    return-void
.end method

.method protected onItemInfoChanged(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;)V
    .locals 10

    const/4 v9, -0x1

    iget-object v5, p1, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mRendererName:Ljava/lang/String;

    iput-object v5, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mRendererName:Ljava/lang/String;

    iget-wide v1, p1, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mIndex:J

    const-wide/16 v5, 0x1

    sub-long v5, v1, v5

    long-to-int v3, v5

    if-eq v9, v3, :cond_0

    const-wide/16 v5, -0x1

    :try_start_0
    iget-wide v7, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mPlayingIndex:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mAdapterBinded:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v5, "itemIndex"

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-ne v9, v4, :cond_0

    const-string v5, "itemIndex"

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const v5, 0x220170

    const/4 v6, 0x0

    const/16 v7, 0x32

    invoke-virtual {p0, v5, v6, v7}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->onPostMessage(ILjava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    iget-boolean v5, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mSkipPlayIndexChanged:Z

    if-nez v5, :cond_1

    iget-wide v5, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mPlayingIndex:J

    int-to-long v7, v3

    cmp-long v5, v5, v7

    if-eqz v5, :cond_1

    int-to-long v5, v3

    invoke-virtual {p0, v5, v6}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->onPlayIndexChanged(J)V

    :cond_1
    int-to-long v5, v3

    iput-wide v5, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mPlayingIndex:J

    :try_start_1
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->invalidateOptionsMenu()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v5

    goto :goto_1

    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method public onLeaveScene()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "DLNABaseScene"

    const-string v2, "[onLeaveScene] + "

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0, v3, v3, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setPosition(FFF)V

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setAlpha(F)V

    invoke-super {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onLeaveScene()V

    iget-boolean v1, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "DLNABaseScene"

    const-string v2, "[onLeaveScene] - "

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected abstract onLoadData(Landroid/content/Intent;Landroid/content/SharedPreferences;Z)V
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 8

    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onMessage(Landroid/os/Message;)Z

    move-result v5

    :goto_0
    return v5

    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->hideControlBars()V

    :goto_1
    const/4 v5, 0x1

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->showControlBars()V

    const/16 v5, 0x4e3c

    const/4 v6, 0x0

    const/16 v7, 0x1388

    invoke-virtual {p0, v5, v6, v7}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_1

    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->onDLNAServiceConnected()V

    goto :goto_1

    :sswitch_3
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->onDLNAServiceDisconnected()V

    goto :goto_1

    :sswitch_4
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->onRendererConnected(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->onItemInfoChanged(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;)V

    goto :goto_1

    :sswitch_6
    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v5}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->onStateChanged(I)V

    goto :goto_1

    :sswitch_7
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->doPlay()V

    goto :goto_1

    :sswitch_8
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v3}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->onErrorHandle(ILjava/lang/String;)V

    goto :goto_1

    :sswitch_9
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->requestSetAdapter()V

    goto :goto_1

    :sswitch_a
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->onScrollStateChanged(I)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x4e3c -> :sswitch_0
        0x4e48 -> :sswitch_1
        0x4f4f -> :sswitch_a
        0x220010 -> :sswitch_2
        0x220020 -> :sswitch_3
        0x220050 -> :sswitch_4
        0x220070 -> :sswitch_5
        0x220080 -> :sswitch_6
        0x220140 -> :sswitch_8
        0x220150 -> :sswitch_7
        0x220170 -> :sswitch_9
    .end sparse-switch
.end method

.method public onNewAdapter(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onNewAdapter(Landroid/os/Bundle;)V

    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mDMCExtras:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mDMCExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mDMCExtras:Landroid/os/Bundle;

    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->loadData()V

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mDMCExtras:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->createAdapter(Landroid/os/Bundle;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v0, p0}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->addSceneDataChangeNotify(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;)V

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->onLoadData()V

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->connectDLNAService()V

    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->saveData()V

    const/16 v0, 0x2724

    const/4 v1, 0x0

    const/16 v2, 0x258

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->onPostMessage(ILjava/lang/Object;I)V

    return-void
.end method

.method public onNotifyUpdateComplete()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mAdapterReady:Z

    const-string v0, "DLNABaseScene"

    const-string v1, "[onNotifyUpdateComplete] Adapter ready!!"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->requestSetAdapter()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :sswitch_0
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->doClose()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/album/TabPluginDLNA/DLNAHelper;->turnOnTV(Landroid/content/Context;)Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->turnOffTV()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_0
        0x7f0a0181 -> :sswitch_1
        0x7f0a0182 -> :sswitch_2
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->purgeTextureMapsForMemory(Z)Z

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isFullScreenAndZoomed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->unzoomCenter()V

    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->resumePreparator(Z)V

    :cond_1
    invoke-super {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onPause()V

    return-void
.end method

.method protected onPlayIndexChanged(J)V
    .locals 2

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setSelection(I)V

    :cond_0
    return-void
.end method

.method protected onPlayNext()V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->playNext()V

    return-void
.end method

.method protected onPlayPrevious()V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->playPrevious()V

    return-void
.end method

.method public onPrepareAnimation(I)Z
    .locals 1

    const/16 v0, 0x4e3c

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->onRemoveMessage(I)V

    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onPrepareAnimation(I)Z

    move-result v0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v2, 0x2a

    const v3, 0x7f0a0152

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-static {v0}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Cancel_Dark_Rest(Landroid/content/Context;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-static {v0, p1}, Lcom/htc/album/TabPluginDLNA/DLNAHelper;->addTVDisplayMenu(Landroid/content/Context;Landroid/view/Menu;)V

    const/4 v2, 0x1

    return v2
.end method

.method public onRefreshFooterBar(Lcom/htc/album/modules/ui/widget/GalleryFooterBar;)V
    .locals 9

    const/16 v8, 0xe

    const/4 v1, 0x1

    const/4 v5, 0x0

    move-object v0, p1

    check-cast v0, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;

    iget-object v6, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v6}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getState()I

    move-result v4

    if-eqz v4, :cond_0

    if-eq v4, v1, :cond_0

    const/4 v6, 0x2

    if-eq v4, v6, :cond_0

    const/16 v6, 0x68

    if-ne v4, v6, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {v0, v1}, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;->setControlPanelEnabled(Z)V

    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->isDMCPlaying()Z

    move-result v2

    const/16 v6, 0x24

    invoke-virtual {v0, v6}, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;->findRimButton(I)Lcom/htc/widget/HtcRimButton;

    move-result-object v7

    if-eqz v2, :cond_2

    const v6, 0x20800b6

    :goto_1
    invoke-virtual {v7, v6}, Lcom/htc/widget/HtcRimButton;->setIconResource(I)V

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;->getMoreButton()Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/album/modules/ui/widget/ControlButton;->clearBubble()V

    const/16 v6, 0xb

    const v7, 0x7f0a0145

    invoke-virtual {v3, v6, v5, v7}, Lcom/htc/album/modules/ui/widget/ControlButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    iget-boolean v6, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mIsRepeated:Z

    if-eqz v6, :cond_3

    const v6, 0x7f0a0015

    invoke-virtual {v3, v8, v5, v6}, Lcom/htc/album/modules/ui/widget/ControlButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    :goto_2
    const/16 v6, 0x2b

    const v7, 0x7f0a00d8

    invoke-virtual {v3, v6, v5, v7}, Lcom/htc/album/modules/ui/widget/ControlButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    return-void

    :cond_1
    move v1, v5

    goto :goto_0

    :cond_2
    const v6, 0x20800bb

    goto :goto_1

    :cond_3
    const v6, 0x7f0a0014

    invoke-virtual {v3, v8, v5, v6}, Lcom/htc/album/modules/ui/widget/ControlButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    goto :goto_2
.end method

.method public onRendererConnected(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mRendererReady:Z

    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mRendererID:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mAdapterBinded:Z

    if-eqz v0, :cond_1

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mPlayingIndex:J

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->doPlay()V

    :goto_1
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->saveData()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->requestSetAdapter()V

    goto :goto_1
.end method

.method protected onRequestDetails()V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getItemDetails()Lcom/htc/dlnainterface/DLNAContentItemDetails;

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onResume()V

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->resumePreparator(Z)V

    :cond_0
    return-void
.end method

.method protected abstract onSaveData(Landroid/content/SharedPreferences$Editor;)V
.end method

.method protected onScrollStateChanged(I)V
    .locals 3

    const v2, 0x220150

    const/4 v1, 0x1

    if-nez p1, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mSkipPlayIndexChanged:Z

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->doPlay()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne p1, v1, :cond_2

    invoke-virtual {p0, v2}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->onRemoveMessage(I)V

    iput-boolean v1, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mSkipPlayIndexChanged:Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->onScrollStateScroll()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getViewState()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v2}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->onRemoveMessage(I)V

    :goto_1
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mSkipPlayIndexChanged:Z

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->doPlay()V

    goto :goto_1
.end method

.method protected onScrollStateScroll()V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->hideControlBars()V

    const v0, 0x220150

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->onRemoveMessage(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mSkipPlayIndexChanged:Z

    return-void
.end method

.method public onSendToForeground(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onSendToForeground(Landroid/os/Bundle;)V

    const/16 v0, 0x4e48

    const/4 v1, 0x0

    const/16 v2, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->onPostMessage(ILjava/lang/Object;I)V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onStart()V

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->connectDLNAService()V

    return-void
.end method

.method public onStateChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "DLNABaseScene"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onStateChanged] play state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->invalidateControlBars()V

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->invalidateOptionsMenu()V

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->playItemAt(I)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mRunningMode:I

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x64 -> :sswitch_0
        0x68 -> :sswitch_0
        0x6a -> :sswitch_0
        0x3e8 -> :sswitch_1
    .end sparse-switch
.end method

.method public onStop()V
    .locals 0

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->disconnectDLNAService()V

    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->saveData()V

    invoke-super {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onStop()V

    return-void
.end method

.method public onTVReadyToPlay()V
    .locals 2

    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->getNotificationInfo()Lcom/htc/dlnainterface/DLNAStatusBarData;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v1, v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setRendererAsReadyDongle(Lcom/htc/dlnainterface/DLNAStatusBarData;)Z

    return-void
.end method

.method public onUnbindAdapter()V
    .locals 2

    iget-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DLNABaseScene"

    const-string v1, "[onUnbindAdapter] +  "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/16 v0, 0x4e3c

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->onRemoveMessage(I)V

    const/16 v0, 0x4e48

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->onRemoveMessage(I)V

    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->saveData()V

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setMediaListIHT(Lcom/htc/sunnyCore/IMediaList;)V

    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->disconnectDLNAService()V

    invoke-super {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onUnbindAdapter()V

    iget-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "DLNABaseScene"

    const-string v1, "[onUnbindAdapter] - "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onUpdateActionBarSecondaryTitle()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->getHeaderSubtitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onUpdateActionBarTitle()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->getHeaderTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract playItemAt(I)V
.end method

.method final registerReceiver()V
    .locals 3

    new-instance v1, Lcom/htc/album/TabPluginDLNA/DMCBaseScene$DLNABroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene$DLNABroadcastReceiver;-><init>(Lcom/htc/album/TabPluginDLNA/DMCBaseScene;Lcom/htc/album/TabPluginDLNA/DMCBaseScene$1;)V

    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mReceiver:Lcom/htc/album/TabPluginDLNA/DMCBaseScene$DLNABroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.htc.dlnamiddlelayer.action.dmc_destroy_notify"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mReceiver:Lcom/htc/album/TabPluginDLNA/DMCBaseScene$DLNABroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public requestFooterBar()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected requestLaunchGallery()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mFromGallery:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected requestPlay()V
    .locals 2

    const v1, 0x220150

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->onRemoveMessage(I)V

    const/16 v0, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->onPostMessage(II)V

    return-void
.end method

.method public requestTVDisplay()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected abstract setDataSource(I)V
.end method

.method protected showDialog(ILandroid/os/Bundle;)Z
    .locals 8

    const v7, 0x2040174

    const/16 v6, 0x2728

    const/16 v5, 0x2724

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    const v4, 0x7f0a015a

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez p1, :cond_0

    invoke-virtual {p0, v5}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->onRemoveMessage(I)V

    invoke-virtual {p0, v6}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->onPostMessage(I)V

    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v4, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a016a

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/htc/album/TabPluginDLNA/DMCBaseScene$2;

    invoke-direct {v5, p0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene$2;-><init>(Lcom/htc/album/TabPluginDLNA/DMCBaseScene;)V

    invoke-virtual {v4, v7, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog;->show()V

    :goto_0
    return v2

    :cond_0
    const/4 v4, 0x2

    if-ne p1, v4, :cond_1

    invoke-virtual {p0, v5}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->onRemoveMessage(I)V

    invoke-virtual {p0, v6}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->onPostMessage(I)V

    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v4, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a0169

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/htc/album/TabPluginDLNA/DMCBaseScene$3;

    invoke-direct {v5, p0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene$3;-><init>(Lcom/htc/album/TabPluginDLNA/DMCBaseScene;)V

    invoke-virtual {v4, v7, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method protected turnOffTV()V
    .locals 0

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->unregisterReceiver()V

    invoke-super {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->turnOffTV()V

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->gotoThumbnailSense()V

    return-void
.end method

.method final unregisterReceiver()V
    .locals 2

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mReceiver:Lcom/htc/album/TabPluginDLNA/DMCBaseScene$DLNABroadcastReceiver;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mReceiver:Lcom/htc/album/TabPluginDLNA/DMCBaseScene$DLNABroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mReceiver:Lcom/htc/album/TabPluginDLNA/DMCBaseScene$DLNABroadcastReceiver;

    goto :goto_0
.end method
