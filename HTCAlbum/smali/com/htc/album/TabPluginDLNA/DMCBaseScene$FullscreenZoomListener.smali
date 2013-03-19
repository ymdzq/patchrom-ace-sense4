.class Lcom/htc/album/TabPluginDLNA/DMCBaseScene$FullscreenZoomListener;
.super Ljava/lang/Object;
.source "DMCBaseScene.java"

# interfaces
.implements Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDLNA/DMCBaseScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FullscreenZoomListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDLNA/DMCBaseScene;


# direct methods
.method private constructor <init>(Lcom/htc/album/TabPluginDLNA/DMCBaseScene;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDLNA/DMCBaseScene;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/TabPluginDLNA/DMCBaseScene;Lcom/htc/album/TabPluginDLNA/DMCBaseScene$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene$FullscreenZoomListener;-><init>(Lcom/htc/album/TabPluginDLNA/DMCBaseScene;)V

    return-void
.end method


# virtual methods
.method public onAlignBeginIRT()V
    .locals 0

    return-void
.end method

.method public onAlignEndIRT()V
    .locals 0

    return-void
.end method

.method public onAnimationBeginIRT()V
    .locals 0

    return-void
.end method

.method public onAnimationEndIRT()V
    .locals 0

    return-void
.end method

.method public onEnterImageIRT(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene$FullscreenZoomListener;->this$0:Lcom/htc/album/TabPluginDLNA/DMCBaseScene;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->requestPlay()V

    return-void
.end method

.method public onFlingBeginIRT()V
    .locals 0

    return-void
.end method

.method public onFlingEndIRT()V
    .locals 0

    return-void
.end method

.method public onImageBoundsUpdateIRT(IIIIIF)V
    .locals 0

    return-void
.end method

.method public onLeaveImageIRT()V
    .locals 0

    return-void
.end method

.method public onPanBeginIRT()V
    .locals 0

    return-void
.end method

.method public onPanEndIRT()V
    .locals 0

    return-void
.end method

.method public onZoomBeginIRT()V
    .locals 0

    return-void
.end method

.method public onZoomEndIRT()V
    .locals 0

    return-void
.end method
