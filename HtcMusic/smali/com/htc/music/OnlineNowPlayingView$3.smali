.class Lcom/htc/music/OnlineNowPlayingView$3;
.super Ljava/lang/Object;
.source "OnlineNowPlayingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/OnlineNowPlayingView;->addToOnlineFavor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/OnlineNowPlayingView;

.field final synthetic val$albumname:Ljava/lang/String;

.field final synthetic val$songid:I


# direct methods
.method constructor <init>(Lcom/htc/music/OnlineNowPlayingView;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 272
    iput-object p1, p0, Lcom/htc/music/OnlineNowPlayingView$3;->this$0:Lcom/htc/music/OnlineNowPlayingView;

    iput p2, p0, Lcom/htc/music/OnlineNowPlayingView$3;->val$songid:I

    iput-object p3, p0, Lcom/htc/music/OnlineNowPlayingView$3;->val$albumname:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 274
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 275
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "requestActionType"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 276
    const-string v1, "songId"

    iget v2, p0, Lcom/htc/music/OnlineNowPlayingView$3;->val$songid:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 277
    const-string v1, "songName"

    iget-object v2, p0, Lcom/htc/music/OnlineNowPlayingView$3;->val$albumname:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object v1, p0, Lcom/htc/music/OnlineNowPlayingView$3;->this$0:Lcom/htc/music/OnlineNowPlayingView;

    #getter for: Lcom/htc/music/OnlineNowPlayingView;->mSinaRequestHandler:Lcom/htc/music/online/sinamusic/SinaRequestHandler;
    invoke-static {v1}, Lcom/htc/music/OnlineNowPlayingView;->access$200(Lcom/htc/music/OnlineNowPlayingView;)Lcom/htc/music/online/sinamusic/SinaRequestHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/music/online/sinamusic/SinaRequestHandler;->request(Landroid/os/Bundle;)V

    .line 279
    return-void
.end method
