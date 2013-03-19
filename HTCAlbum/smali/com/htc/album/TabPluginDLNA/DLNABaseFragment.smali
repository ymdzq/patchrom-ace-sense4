.class public abstract Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;
.super Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;
.source "DLNABaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/TabPluginDLNA/DLNABaseFragment$1;,
        Lcom/htc/album/TabPluginDLNA/DLNABaseFragment$TVDisplayListener;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "DLNABaseFragment"


# instance fields
.field mDropOutputRequest:Z

.field mTVDisplayHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

.field protected mTVDisplayListener:Lcom/htc/album/TabPluginDLNA/DLNABaseFragment$TVDisplayListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;->mTVDisplayHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;->mTVDisplayListener:Lcom/htc/album/TabPluginDLNA/DLNABaseFragment$TVDisplayListener;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;->mDropOutputRequest:Z

    return-void
.end method

.method static synthetic access$100(Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;)Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;->requestTVDisplay()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment$TVDisplayListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment$TVDisplayListener;-><init>(Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;Lcom/htc/album/TabPluginDLNA/DLNABaseFragment$1;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;->mTVDisplayListener:Lcom/htc/album/TabPluginDLNA/DLNABaseFragment$TVDisplayListener;

    new-instance v0, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;->mTVDisplayListener:Lcom/htc/album/TabPluginDLNA/DLNABaseFragment$TVDisplayListener;

    invoke-direct {v0, v1, v2}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;-><init>(Landroid/content/Context;Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;->mTVDisplayHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;->mTVDisplayHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;->mTVDisplayHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->release()V

    :cond_0
    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;->mTVDisplayHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;->mTVDisplayListener:Lcom/htc/album/TabPluginDLNA/DLNABaseFragment$TVDisplayListener;

    invoke-super {p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;->setDLNAEnabled(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;->mDropOutputRequest:Z

    invoke-super {p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->onPause()V

    return-void
.end method

.method protected onProgressBackPressed()Z
    .locals 2

    invoke-super {p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->onProgressBackPressed()Z

    move-result v0

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return v0
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->onResume()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;->mDropOutputRequest:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;->setDLNAEnabled(Z)V

    return-void
.end method

.method protected requestTVDisplay()Z
    .locals 1

    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DISABLE_DLNA:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setDLNAEnabled(Z)V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "wireless_display"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/WirelessDisplayManager;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/htc/service/WirelessDisplayManager;->setDLNAPreloadEnable(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
