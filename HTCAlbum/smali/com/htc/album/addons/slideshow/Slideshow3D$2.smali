.class Lcom/htc/album/addons/slideshow/Slideshow3D$2;
.super Ljava/lang/Object;
.source "Slideshow3D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/addons/slideshow/Slideshow3D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/slideshow/Slideshow3D;


# direct methods
.method constructor <init>(Lcom/htc/album/addons/slideshow/Slideshow3D;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D$2;->this$0:Lcom/htc/album/addons/slideshow/Slideshow3D;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D$2;->this$0:Lcom/htc/album/addons/slideshow/Slideshow3D;

    iget-boolean v0, v0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mStopAndLeave:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-boolean v0, Lcom/htc/album/addons/slideshow/SlideshowBase;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/htc/album/addons/slideshow/Slideshow3D;->LOG_TAG:Ljava/lang/String;

    const-string v1, "mNextImagerunnable called"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D$2;->this$0:Lcom/htc/album/addons/slideshow/Slideshow3D;

    iget-boolean v0, v0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mRepeat:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D$2;->this$0:Lcom/htc/album/addons/slideshow/Slideshow3D;

    iget v0, v0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mCurrentPosition:I

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D$2;->this$0:Lcom/htc/album/addons/slideshow/Slideshow3D;

    iget-object v1, v1, Lcom/htc/album/addons/slideshow/SlideshowBase;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D$2;->this$0:Lcom/htc/album/addons/slideshow/Slideshow3D;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mIsPlaying:Z

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D$2;->this$0:Lcom/htc/album/addons/slideshow/Slideshow3D;

    invoke-virtual {v0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->onControlbarPause()V

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D$2;->this$0:Lcom/htc/album/addons/slideshow/Slideshow3D;

    #calls: Lcom/htc/album/addons/slideshow/Slideshow3D;->loadNextImage()V
    invoke-static {v0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->access$000(Lcom/htc/album/addons/slideshow/Slideshow3D;)V

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D$2;->this$0:Lcom/htc/album/addons/slideshow/Slideshow3D;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/slideshow/Slideshow3D;->showControlBar(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D$2;->this$0:Lcom/htc/album/addons/slideshow/Slideshow3D;

    #calls: Lcom/htc/album/addons/slideshow/Slideshow3D;->loadNextImage()V
    invoke-static {v0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->access$000(Lcom/htc/album/addons/slideshow/Slideshow3D;)V

    goto :goto_0
.end method
