.class Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$5$1$1$1;
.super Ljava/lang/Object;
.source "SceneLocalPhotoThumbnail.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$5$1$1;->onAnimationStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$5$1$1;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$5$1$1;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$5$1$1$1;->this$3:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$5$1$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$5$1$1$1;->this$3:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$5$1$1;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$5$1$1;->this$2:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$5$1;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$5$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$5;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$5;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    const/4 v1, 0x1

    #calls: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->changeSenseMode(I)V
    invoke-static {v0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->access$1700(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;I)V

    return-void
.end method
