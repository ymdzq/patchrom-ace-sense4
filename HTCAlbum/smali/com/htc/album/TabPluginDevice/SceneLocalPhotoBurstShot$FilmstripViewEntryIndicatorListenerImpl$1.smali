.class Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FilmstripViewEntryIndicatorListenerImpl$1;
.super Ljava/lang/Object;
.source "SceneLocalPhotoBurstShot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FilmstripViewEntryIndicatorListenerImpl;->onFilmstripViewEntryIndicatorShown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FilmstripViewEntryIndicatorListenerImpl;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FilmstripViewEntryIndicatorListenerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FilmstripViewEntryIndicatorListenerImpl$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FilmstripViewEntryIndicatorListenerImpl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FilmstripViewEntryIndicatorListenerImpl$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FilmstripViewEntryIndicatorListenerImpl;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FilmstripViewEntryIndicatorListenerImpl;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    const/4 v1, 0x0

    #calls: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->showThumbnailList(Z)V
    invoke-static {v0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->access$3800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;Z)V

    return-void
.end method
