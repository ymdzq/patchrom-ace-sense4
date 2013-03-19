.class Lcom/htc/album/TabPluginDLNA/DLNABaseFragment$TVDisplayListener;
.super Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;
.source "DLNABaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TVDisplayListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;


# direct methods
.method private constructor <init>(Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment$TVDisplayListener;->this$0:Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;

    invoke-direct {p0}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;Lcom/htc/album/TabPluginDLNA/DLNABaseFragment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment$TVDisplayListener;-><init>(Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;)V

    return-void
.end method


# virtual methods
.method public getTVDisplayScene()Lcom/htc/sunny2/scene/GalleryBaseScene;
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment$TVDisplayListener;->this$0:Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;

    #getter for: Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;
    invoke-static {v3}, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;->access$100(Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;)Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v3, v1, Lcom/htc/sunny2/scene/GalleryBaseScene;

    if-eqz v3, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/htc/sunny2/scene/GalleryBaseScene;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/htc/sunny2/scene/GalleryBaseScene;->requestTVDisplay()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :catch_0
    move-exception v3

    :cond_0
    move-object v3, v2

    goto :goto_0
.end method

.method public invalidateMenu()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment$TVDisplayListener;->getTVDisplayScene()Lcom/htc/sunny2/scene/GalleryBaseScene;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment$TVDisplayListener;->this$0:Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onNoReadyDongle()V
    .locals 0

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment$TVDisplayListener;->invalidateMenu()V

    return-void
.end method

.method public onNoTVToPlay()V
    .locals 2

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment$TVDisplayListener;->this$0:Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;

    iget-boolean v1, v1, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;->mDropOutputRequest:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment$TVDisplayListener;->getTVDisplayScene()Lcom/htc/sunny2/scene/GalleryBaseScene;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onNoTVToPlay()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onReadyDongleFound(Lcom/htc/service/DongleInfo;)V
    .locals 0

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment$TVDisplayListener;->invalidateMenu()V

    return-void
.end method

.method public onTVOff()V
    .locals 0

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment$TVDisplayListener;->invalidateMenu()V

    return-void
.end method

.method public onTVOn()V
    .locals 0

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment$TVDisplayListener;->invalidateMenu()V

    return-void
.end method

.method public onTVReadyToPlay()V
    .locals 2

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment$TVDisplayListener;->this$0:Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;

    iget-boolean v1, v1, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;->mDropOutputRequest:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment$TVDisplayListener;->getTVDisplayScene()Lcom/htc/sunny2/scene/GalleryBaseScene;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onTVReadyToPlay()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
