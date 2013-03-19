.class Lcom/htc/music/NowPlayingViewHelper$15;
.super Landroid/content/BroadcastReceiver;
.source "NowPlayingViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/NowPlayingViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/NowPlayingViewHelper;


# direct methods
.method constructor <init>(Lcom/htc/music/NowPlayingViewHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 2549
    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper$15;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 2552
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.htc.music.metachanged"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2553
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper$15;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v2}, Lcom/htc/music/NowPlayingViewHelper;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2554
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper$15;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v2}, Lcom/htc/music/NowPlayingViewHelper;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    .line 2587
    :cond_0
    :goto_0
    return-void

    .line 2556
    :cond_1
    const-string v2, "[NowPlayingViewHelper]"

    const-string v3, "Got META_CHANGED, List View is null!!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2557
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.htc.music.queuechanged"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2558
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper$15;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mDeletedOneRow:Z
    invoke-static {v2}, Lcom/htc/music/NowPlayingViewHelper;->access$300(Lcom/htc/music/NowPlayingViewHelper;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2562
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper$15;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #setter for: Lcom/htc/music/NowPlayingViewHelper;->mDeletedOneRow:Z
    invoke-static {v2, v4}, Lcom/htc/music/NowPlayingViewHelper;->access$302(Lcom/htc/music/NowPlayingViewHelper;Z)Z

    goto :goto_0

    .line 2566
    :cond_3
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper$15;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    iget-object v2, v2, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 2569
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper$15;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v2}, Lcom/htc/music/NowPlayingViewHelper;->createNowPlayingCursor()Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;

    move-result-object v0

    .line 2572
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_4

    .line 2574
    const-string v2, "[NowPlayingViewHelper]"

    const-string v3, "can\'t find any row in now playing list!!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2580
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper$15;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    const v3, 0x7f070037

    invoke-virtual {v2, v3}, Lcom/htc/music/NowPlayingViewHelper;->showEmptyView(I)V

    .line 2582
    :cond_4
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper$15;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    iget-object v2, v2, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    if-eqz v2, :cond_0

    .line 2583
    const-string v2, "NOT_NOTIFY"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 2584
    .local v1, notNotify:Z
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper$15;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    iget-object v2, v2, Lcom/htc/music/NowPlayingViewHelper;->mLocalAdapter:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;

    invoke-virtual {v2, v0, v1}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->changeCursor(Landroid/database/Cursor;Z)V

    goto :goto_0
.end method
