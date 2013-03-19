.class Lcom/htc/music/LandingPageActivity$6;
.super Landroid/content/BroadcastReceiver;
.source "LandingPageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/LandingPageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/LandingPageActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/LandingPageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2139
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity$6;->this$0:Lcom/htc/music/LandingPageActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    .line 2142
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2143
    .local v0, action:Ljava/lang/String;
    const-string v2, "[LandingPage]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mStatusListener, onReceive, action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2144
    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2145
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity$6;->this$0:Lcom/htc/music/LandingPageActivity;

    #calls: Lcom/htc/music/LandingPageActivity;->hideRecentlyAlbumDialogs()V
    invoke-static {v2}, Lcom/htc/music/LandingPageActivity;->access$2300(Lcom/htc/music/LandingPageActivity;)V

    .line 2146
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity$6;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/music/LandingPageActivity;->access$2400(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2147
    new-instance v1, Lcom/htc/music/LandingPageActivity$BaseItem;

    invoke-direct {v1}, Lcom/htc/music/LandingPageActivity$BaseItem;-><init>()V

    .line 2148
    .local v1, addItem:Lcom/htc/music/LandingPageActivity$BaseItem;
    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Lcom/htc/music/LandingPageActivity$BaseItem;->setId(I)V

    .line 2149
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity$6;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/music/LandingPageActivity;->access$2400(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2151
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity$6;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mAdapter:Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;
    invoke-static {v2}, Lcom/htc/music/LandingPageActivity;->access$2200(Lcom/htc/music/LandingPageActivity;)Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2152
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity$6;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mAdapter:Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;
    invoke-static {v2}, Lcom/htc/music/LandingPageActivity;->access$2200(Lcom/htc/music/LandingPageActivity;)Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;->notifyDataSetChanged()V

    .line 2170
    .end local v1           #addItem:Lcom/htc/music/LandingPageActivity$BaseItem;
    :cond_0
    :goto_0
    return-void

    .line 2154
    :cond_1
    const-string v2, "com.htc.music.timeout"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2155
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity$6;->this$0:Lcom/htc/music/LandingPageActivity;

    invoke-static {v2}, Lcom/htc/music/online/Util;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2156
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity$6;->this$0:Lcom/htc/music/LandingPageActivity;

    invoke-static {v2}, Lcom/htc/music/online/Util;->is3GWap(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2157
    sput-boolean v5, Lcom/htc/music/util/MusicUtils;->mIs3GWap:Z

    goto :goto_0

    .line 2159
    :cond_2
    sput-boolean v5, Lcom/htc/music/util/MusicUtils;->mIsConnectionFailed:Z

    goto :goto_0

    .line 2164
    :cond_3
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity$6;->this$0:Lcom/htc/music/LandingPageActivity;

    iget-object v2, v2, Lcom/htc/music/LandingPageActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_0

    .line 2167
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity$6;->this$0:Lcom/htc/music/LandingPageActivity;

    const/4 v3, 0x0

    #calls: Lcom/htc/music/LandingPageActivity;->reloadRecentAlbum(Z)V
    invoke-static {v2, v3}, Lcom/htc/music/LandingPageActivity;->access$5000(Lcom/htc/music/LandingPageActivity;Z)V

    goto :goto_0
.end method
