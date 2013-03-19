.class Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D$1;
.super Lcom/htc/fusion/fx/MessageListener;
.source "SlideshowFusionScene2D.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/fusion/fx/MessageListener",
        "<",
        "Lcom/htc/fusion/fx/FxPlaybackInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;


# direct methods
.method constructor <init>(Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D$1;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/FxPlaybackInfo;)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D$1;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;

    #getter for: Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->access$000(Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "[HTCAlbum][SlideshowFusionScene2D][MessageListener][onMessageReceived] + "

    invoke-static {v0, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/htc/fusion/fx/FxPlaybackInfo;->name:Ljava/lang/String;

    const-string v2, "showStay"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p1, Lcom/htc/fusion/fx/FxPlaybackInfo;->playbackResult:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D$1;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mDynamicImageStay:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D$1;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;

    iget-object v2, v2, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mBitmapCurrent:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D$1;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;

    #getter for: Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->access$000(Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "[HTCAlbum][SlideshowFusionScene2D][MessageListener][onMessageReceived]mScene.playMarker + showStay"

    invoke-static {v0, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D$1;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v2, "showStay"

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/FxScene;->playMarker(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D$1;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;

    #getter for: Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->access$000(Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "[HTCAlbum][SlideshowFusionScene2D][MessageListener][onMessageReceived]mScene.playMarker - "

    invoke-static {v0, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D$1;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;

    iput-object v1, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mBitmapNew:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D$1;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;

    iget-object v2, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mDynamicImageCurrent:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    move-object v0, v1

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v2, v0}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D$1;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->mDynamicImageNew:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/Bitmap;)V

    const-string v0, "mode10"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SlideshowFusionScene2D][MessageListener][onMessageReceived]PLAYBACK_COMPLETED:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/htc/fusion/fx/FxPlaybackInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D$1;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;

    #getter for: Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;->access$000(Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HTCAlbum][SlideshowFusionScene2D][MessageListener][onMessageReceived] - "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/htc/fusion/fx/FxPlaybackInfo;

    invoke-virtual {p0, p1}, Lcom/htc/album/addons/slideshow/SlideshowFusionScene2D$1;->onMessageReceived(Lcom/htc/fusion/fx/FxPlaybackInfo;)V

    return-void
.end method
