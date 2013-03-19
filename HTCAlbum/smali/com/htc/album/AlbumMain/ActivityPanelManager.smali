.class public Lcom/htc/album/AlbumMain/ActivityPanelManager;
.super Ljava/lang/Object;
.source "ActivityPanelManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = null

.field public static final PANEL_STATE_PROCESSING:I = 0x0

.field public static final PANEL_STATE_PROCESS_END:I = 0x1

.field public static final PANEL_STATE_UNKNOWN:I = -0x1


# instance fields
.field private mActivePanelID:I

.field private mActivePanelState:I

.field private mActiveTabRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/album/AlbumMain/ActivityPanelManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/AlbumMain/ActivityPanelManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/htc/album/AlbumMain/ActivityPanelManager;->mActiveTabRes:I

    iput v0, p0, Lcom/htc/album/AlbumMain/ActivityPanelManager;->mActivePanelID:I

    iput v0, p0, Lcom/htc/album/AlbumMain/ActivityPanelManager;->mActivePanelState:I

    return-void
.end method


# virtual methods
.method public getActiveTab()I
    .locals 1

    iget v0, p0, Lcom/htc/album/AlbumMain/ActivityPanelManager;->mActiveTabRes:I

    return v0
.end method

.method public isActivePanel(I)Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/htc/album/AlbumMain/ActivityPanelManager;->mActivePanelID:I

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public setActiveTab(I)V
    .locals 3

    iput p1, p0, Lcom/htc/album/AlbumMain/ActivityPanelManager;->mActiveTabRes:I

    sget-object v0, Lcom/htc/album/AlbumMain/ActivityPanelManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ActivityPanelManager][setActiveTab]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/album/AlbumMain/ActivityPanelManager;->mActiveTabRes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEndProcessing(I)V
    .locals 3

    iget v0, p0, Lcom/htc/album/AlbumMain/ActivityPanelManager;->mActivePanelID:I

    if-eq v0, p1, :cond_0

    sget-object v0, Lcom/htc/album/AlbumMain/ActivityPanelManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ActivityPanelManager][setEndProcessing]: reject: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/album/AlbumMain/ActivityPanelManager;->mActivePanelID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/album/AlbumMain/ActivityPanelManager;->mActivePanelState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/album/AlbumMain/ActivityPanelManager;->mActivePanelState:I

    goto :goto_0
.end method

.method public setEnterProcessing(IZ)V
    .locals 3

    if-nez p2, :cond_0

    iget v0, p0, Lcom/htc/album/AlbumMain/ActivityPanelManager;->mActivePanelID:I

    if-eq v0, p1, :cond_0

    iget v0, p0, Lcom/htc/album/AlbumMain/ActivityPanelManager;->mActivePanelState:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/album/AlbumMain/ActivityPanelManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ActivityPanelManager][setEnterProcessing]: reject: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/album/AlbumMain/ActivityPanelManager;->mActivePanelID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/album/AlbumMain/ActivityPanelManager;->mActivePanelState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/htc/album/AlbumMain/ActivityPanelManager;->mActivePanelID:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/AlbumMain/ActivityPanelManager;->mActivePanelState:I

    goto :goto_0
.end method
