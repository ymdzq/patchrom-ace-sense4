.class Lcom/htc/music/MediaPlaybackService$MultiPlayer$4;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


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
    .line 6560
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$4;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mediaplayer"

    .prologue
    .line 6563
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "onSeekComplete"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6564
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$4;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v1, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mSeekingForBuffer:Z
    invoke-static {v0, v1}, Lcom/htc/music/MediaPlaybackService;->access$9002(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 6565
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$4;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v1, "com.htc.music.asyncopencomplete"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/music/MediaPlaybackService;->access$700(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 6566
    return-void
.end method
