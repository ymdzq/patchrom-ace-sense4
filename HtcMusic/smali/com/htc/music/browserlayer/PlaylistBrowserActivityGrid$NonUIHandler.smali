.class final Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$NonUIHandler;
.super Landroid/os/Handler;
.source "PlaylistBrowserActivityGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NonUIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;


# direct methods
.method public constructor <init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 926
    iput-object p1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    .line 927
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 928
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 933
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 939
    :goto_0
    return-void

    .line 935
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    iget-object v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    iget-object v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    #getter for: Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mCurrentOnlineMusicGetter:Lcom/htc/music/online/OnlineMusicGetter;
    invoke-static {v2}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->access$1600(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/music/online/OnlineMusicGetter;

    move-result-object v2

    #calls: Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getAllOnlineMusic(Lcom/htc/music/online/OnlineMusicGetter;)Ljava/util/ArrayList;
    invoke-static {v1, v2}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->access$1800(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;Lcom/htc/music/online/OnlineMusicGetter;)Ljava/util/ArrayList;

    move-result-object v1

    #setter for: Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mAllOnlineMusic:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->access$1702(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 936
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    #calls: Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->afterGetAllOnlineMusicInNonUI()V
    invoke-static {v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->access$1900(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)V

    goto :goto_0

    .line 933
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
