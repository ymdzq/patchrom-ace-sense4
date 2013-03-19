.class Lcom/htc/album/addons/slideshow/SlideshowBase$9;
.super Ljava/lang/Object;
.source "SlideshowBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/addons/slideshow/SlideshowBase;->updateControlBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/slideshow/SlideshowBase;


# direct methods
.method constructor <init>(Lcom/htc/album/addons/slideshow/SlideshowBase;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase$9;->this$0:Lcom/htc/album/addons/slideshow/SlideshowBase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase$9;->this$0:Lcom/htc/album/addons/slideshow/SlideshowBase;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/htc/album/addons/slideshow/SlideshowBase;->mIsControlShowing:Z

    sget-object v1, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "][updateControlBar]run + , mIsControlShowing =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowBase$9;->this$0:Lcom/htc/album/addons/slideshow/SlideshowBase;

    iget-boolean v3, v3, Lcom/htc/album/addons/slideshow/SlideshowBase;->mIsControlShowing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase$9;->this$0:Lcom/htc/album/addons/slideshow/SlideshowBase;

    #getter for: Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;
    invoke-static {v1}, Lcom/htc/album/addons/slideshow/SlideshowBase;->access$300(Lcom/htc/album/addons/slideshow/SlideshowBase;)Lcom/htc/album/modules/ui/ControlBarManager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase$9;->this$0:Lcom/htc/album/addons/slideshow/SlideshowBase;

    iget-boolean v1, v1, Lcom/htc/album/addons/slideshow/SlideshowBase;->mWasControlShowing:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase$9;->this$0:Lcom/htc/album/addons/slideshow/SlideshowBase;

    #getter for: Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;
    invoke-static {v1}, Lcom/htc/album/addons/slideshow/SlideshowBase;->access$400(Lcom/htc/album/addons/slideshow/SlideshowBase;)Lcom/htc/album/modules/ui/ControlBarManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/album/modules/ui/ControlBarManager;->setEnableAnimation(Z)V

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase$9;->this$0:Lcom/htc/album/addons/slideshow/SlideshowBase;

    #getter for: Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;
    invoke-static {v1}, Lcom/htc/album/addons/slideshow/SlideshowBase;->access$500(Lcom/htc/album/addons/slideshow/SlideshowBase;)Lcom/htc/album/modules/ui/ControlBarManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/album/modules/ui/ControlBarManager;->showControlBars()V

    :goto_0
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase$9;->this$0:Lcom/htc/album/addons/slideshow/SlideshowBase;

    #getter for: Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;
    invoke-static {v1}, Lcom/htc/album/addons/slideshow/SlideshowBase;->access$700(Lcom/htc/album/addons/slideshow/SlideshowBase;)Lcom/htc/album/modules/ui/ControlBarManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/album/modules/ui/ControlBarManager;->getFooterContainer()Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    move-result-object v0

    if-eqz v0, :cond_4

    const v1, 0x3f666666

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->setAlpha(F)V

    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase$9;->this$0:Lcom/htc/album/addons/slideshow/SlideshowBase;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase$9;->this$0:Lcom/htc/album/addons/slideshow/SlideshowBase;

    invoke-virtual {v1}, Lcom/htc/album/addons/slideshow/SlideshowBase;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase$9;->this$0:Lcom/htc/album/addons/slideshow/SlideshowBase;

    invoke-virtual {v1}, Lcom/htc/album/addons/slideshow/SlideshowBase;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase$9;->this$0:Lcom/htc/album/addons/slideshow/SlideshowBase;

    invoke-virtual {v1}, Lcom/htc/album/addons/slideshow/SlideshowBase;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase$9;->this$0:Lcom/htc/album/addons/slideshow/SlideshowBase;

    iget-object v1, v1, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase$9;->this$0:Lcom/htc/album/addons/slideshow/SlideshowBase;

    invoke-virtual {v1}, Lcom/htc/album/addons/slideshow/SlideshowBase;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase$9;->this$0:Lcom/htc/album/addons/slideshow/SlideshowBase;

    iget-object v1, v1, Lcom/htc/album/addons/slideshow/SlideshowBase;->mSlideShowController:Lcom/htc/album/addons/slideshow/SlideShowController;

    invoke-virtual {v1}, Lcom/htc/album/addons/slideshow/SlideShowController;->show()V

    :cond_2
    sget-object v1, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "][updateControlBar]run - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowBase$9;->this$0:Lcom/htc/album/addons/slideshow/SlideshowBase;

    #getter for: Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;
    invoke-static {v1}, Lcom/htc/album/addons/slideshow/SlideshowBase;->access$600(Lcom/htc/album/addons/slideshow/SlideshowBase;)Lcom/htc/album/modules/ui/ControlBarManager;

    move-result-object v1

    invoke-virtual {v1, v5, v5}, Lcom/htc/album/modules/ui/ControlBarManager;->showControlBars(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/album/addons/slideshow/SlideshowBase;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "][updateControlBar]footerContainer is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
