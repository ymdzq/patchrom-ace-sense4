.class public Lcom/htc/album/TabPluginDLNA/ActivityMainMediaList;
.super Lcom/htc/album/AlbumMain/MfMainActivityBase;
.source "ActivityMainMediaList.java"


# instance fields
.field private final DLNA_DMC_PHOTO:I

.field private final DLNA_DMC_VIDEO:I

.field private final DLNA_FULLSCREENVIEW:I

.field private final DLNA_GRIDVIEW:I

.field private final LOG_TAG:Ljava/lang/String;

.field private bUpdateDMR:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/htc/album/AlbumMain/MfMainActivityBase;-><init>()V

    const-string v0, "ActivityMainMediaList"

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainMediaList;->LOG_TAG:Ljava/lang/String;

    iput v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainMediaList;->DLNA_GRIDVIEW:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainMediaList;->DLNA_FULLSCREENVIEW:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainMediaList;->DLNA_DMC_PHOTO:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainMediaList;->DLNA_DMC_VIDEO:I

    iput-boolean v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainMediaList;->bUpdateDMR:Z

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onResumeFragment()V
    .locals 0

    return-void
.end method

.method public onStartFragment()V
    .locals 4

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ActivityMainMediaList;->getIntent()Landroid/content/Intent;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "dlna_intent"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-class v2, Lcom/htc/album/TabPluginDLNA/MfFragmentMainMediaList;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/htc/sunny2/common/HtcPaneManager;->PANE_LEFT:I

    invoke-virtual {p0, v2, v0, v3}, Lcom/htc/album/TabPluginDLNA/ActivityMainMediaList;->startFragmentAndStackUp(Ljava/lang/String;Landroid/os/Bundle;I)V

    return-void
.end method
