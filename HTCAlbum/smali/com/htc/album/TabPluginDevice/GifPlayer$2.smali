.class Lcom/htc/album/TabPluginDevice/GifPlayer$2;
.super Ljava/lang/Object;
.source "GifPlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/TabPluginDevice/GifPlayer;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/GifPlayer;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/GifPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$2;->this$0:Lcom/htc/album/TabPluginDevice/GifPlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$2;->this$0:Lcom/htc/album/TabPluginDevice/GifPlayer;

    #getter for: Lcom/htc/album/TabPluginDevice/GifPlayer;->mGifPresenter:Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/GifPlayer;->access$000(Lcom/htc/album/TabPluginDevice/GifPlayer;)Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$2;->this$0:Lcom/htc/album/TabPluginDevice/GifPlayer;

    #getter for: Lcom/htc/album/TabPluginDevice/GifPlayer;->mGifPresenter:Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/GifPlayer;->access$000(Lcom/htc/album/TabPluginDevice/GifPlayer;)Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$2;->this$0:Lcom/htc/album/TabPluginDevice/GifPlayer;

    #getter for: Lcom/htc/album/TabPluginDevice/GifPlayer;->mGifPresenter:Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/GifPlayer;->access$000(Lcom/htc/album/TabPluginDevice/GifPlayer;)Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->Pause()V

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$2;->this$0:Lcom/htc/album/TabPluginDevice/GifPlayer;

    #getter for: Lcom/htc/album/TabPluginDevice/GifPlayer;->mImageView:Lcom/htc/album/TabPluginDevice/GifPlayer$ImageGifView;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/GifPlayer;->access$100(Lcom/htc/album/TabPluginDevice/GifPlayer;)Lcom/htc/album/TabPluginDevice/GifPlayer$ImageGifView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/GifPlayer$ImageGifView;->showIndicator(Z)V

    :goto_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$2;->this$0:Lcom/htc/album/TabPluginDevice/GifPlayer;

    #getter for: Lcom/htc/album/TabPluginDevice/GifPlayer;->mImageView:Lcom/htc/album/TabPluginDevice/GifPlayer$ImageGifView;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/GifPlayer;->access$100(Lcom/htc/album/TabPluginDevice/GifPlayer;)Lcom/htc/album/TabPluginDevice/GifPlayer$ImageGifView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/GifPlayer$ImageGifView;->invalidate()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$2;->this$0:Lcom/htc/album/TabPluginDevice/GifPlayer;

    #getter for: Lcom/htc/album/TabPluginDevice/GifPlayer;->mGifPresenter:Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/GifPlayer;->access$000(Lcom/htc/album/TabPluginDevice/GifPlayer;)Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->Play()V

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$2;->this$0:Lcom/htc/album/TabPluginDevice/GifPlayer;

    #getter for: Lcom/htc/album/TabPluginDevice/GifPlayer;->mImageView:Lcom/htc/album/TabPluginDevice/GifPlayer$ImageGifView;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/GifPlayer;->access$100(Lcom/htc/album/TabPluginDevice/GifPlayer;)Lcom/htc/album/TabPluginDevice/GifPlayer$ImageGifView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/GifPlayer$ImageGifView;->showIndicator(Z)V

    goto :goto_0
.end method
