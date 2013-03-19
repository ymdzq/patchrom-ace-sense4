.class Lcom/htc/music/MediaPlaybackService$MultiPlayer$2;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/MediaPlaybackService$MultiPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;


# direct methods
.method constructor <init>(Lcom/htc/music/MediaPlaybackService$MultiPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 6507
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    const/4 v1, 0x1

    .line 6510
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mCurrentBuff:I
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$7900(Lcom/htc/music/MediaPlaybackService;)I

    move-result v0

    if-gtz v0, :cond_1

    .line 6511
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "no buffering when onPrepared,so cancel to play"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6523
    :cond_0
    :goto_0
    return-void

    .line 6514
    :cond_1
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mAsyncComplete:Z
    invoke-static {v0, v1}, Lcom/htc/music/MediaPlaybackService;->access$8402(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 6515
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mAutoControl:Z
    invoke-static {v0, v1}, Lcom/htc/music/MediaPlaybackService;->access$8902(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 6516
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mAsyncOpening:Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$7800(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6517
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->play()V

    .line 6518
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "onPrepared"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6519
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v1, "com.htc.music.asyncopencomplete"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/music/MediaPlaybackService;->access$700(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 6520
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v1, "com.htc.music.metachanged"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/music/MediaPlaybackService;->access$700(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V

    goto :goto_0
.end method
