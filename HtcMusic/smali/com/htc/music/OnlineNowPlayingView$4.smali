.class Lcom/htc/music/OnlineNowPlayingView$4;
.super Ljava/lang/Object;
.source "OnlineNowPlayingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/OnlineNowPlayingView;->onActivityResult(IILandroid/content/Intent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/OnlineNowPlayingView;

.field final synthetic val$resultIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/htc/music/OnlineNowPlayingView;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 354
    iput-object p1, p0, Lcom/htc/music/OnlineNowPlayingView$4;->this$0:Lcom/htc/music/OnlineNowPlayingView;

    iput-object p2, p0, Lcom/htc/music/OnlineNowPlayingView$4;->val$resultIntent:Landroid/content/Intent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 356
    iget-object v1, p0, Lcom/htc/music/OnlineNowPlayingView$4;->val$resultIntent:Landroid/content/Intent;

    const-string v2, "SELECTED_ID"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 357
    .local v0, contactList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/htc/music/OnlineNowPlayingView$4;->this$0:Lcom/htc/music/OnlineNowPlayingView;

    iget-object v1, v1, Lcom/htc/music/NowPlayingViewHelper;->mRingtoneHelper:Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

    if-nez v1, :cond_0

    .line 358
    iget-object v1, p0, Lcom/htc/music/OnlineNowPlayingView$4;->this$0:Lcom/htc/music/OnlineNowPlayingView;

    new-instance v2, Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

    iget-object v3, p0, Lcom/htc/music/OnlineNowPlayingView$4;->this$0:Lcom/htc/music/OnlineNowPlayingView;

    iget-object v4, p0, Lcom/htc/music/OnlineNowPlayingView$4;->this$0:Lcom/htc/music/OnlineNowPlayingView;

    iget-object v4, v4, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-direct {v2, v3, v4}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;-><init>(Lcom/htc/music/NowPlayingViewHelper;Landroid/content/Context;)V

    iput-object v2, v1, Lcom/htc/music/NowPlayingViewHelper;->mRingtoneHelper:Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

    .line 359
    const-string v1, "[NowPlayingViewHelper]"

    const-string v2, "Ringtonehelper is null!! this should never happen!!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    :cond_0
    iget-object v1, p0, Lcom/htc/music/OnlineNowPlayingView$4;->this$0:Lcom/htc/music/OnlineNowPlayingView;

    iget-object v1, v1, Lcom/htc/music/NowPlayingViewHelper;->mRingtoneHelper:Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

    if-eqz v1, :cond_1

    .line 363
    iget-object v1, p0, Lcom/htc/music/OnlineNowPlayingView$4;->this$0:Lcom/htc/music/OnlineNowPlayingView;

    iget-object v1, v1, Lcom/htc/music/NowPlayingViewHelper;->mRingtoneHelper:Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;->hadnleContactRingtoneResult(Ljava/util/ArrayList;Z)V

    .line 366
    :cond_1
    iget-object v1, p0, Lcom/htc/music/OnlineNowPlayingView$4;->this$0:Lcom/htc/music/OnlineNowPlayingView;

    invoke-virtual {v1}, Lcom/htc/music/OnlineNowPlayingView;->showSetContactRingtoneToast()V

    .line 367
    return-void
.end method
