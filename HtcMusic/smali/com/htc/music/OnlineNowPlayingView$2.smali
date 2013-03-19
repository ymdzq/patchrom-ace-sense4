.class Lcom/htc/music/OnlineNowPlayingView$2;
.super Ljava/lang/Object;
.source "OnlineNowPlayingView.java"

# interfaces
.implements Lcom/htc/music/online/util/AsyncSongDetailGetter$OnSongDetailLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/OnlineNowPlayingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field dialog:Lcom/htc/app/HtcProgressDialog;

.field final synthetic this$0:Lcom/htc/music/OnlineNowPlayingView;


# direct methods
.method constructor <init>(Lcom/htc/music/OnlineNowPlayingView;)V
    .locals 1
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/htc/music/OnlineNowPlayingView$2;->this$0:Lcom/htc/music/OnlineNowPlayingView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/OnlineNowPlayingView$2;->dialog:Lcom/htc/app/HtcProgressDialog;

    return-void
.end method


# virtual methods
.method public onFinish(Landroid/content/Context;ILcom/htc/music/online/sinamusic/WrapperSongDetail;)V
    .locals 1
    .parameter "context"
    .parameter "songId"
    .parameter "songDetail"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/htc/music/OnlineNowPlayingView$2;->dialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/htc/music/OnlineNowPlayingView$2;->dialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/htc/music/OnlineNowPlayingView$2;->this$0:Lcom/htc/music/OnlineNowPlayingView;

    iget-object v0, v0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-static {v0, p3}, Lcom/htc/music/online/Util;->showSongDetail(Landroid/app/Activity;Lcom/htc/music/online/sinamusic/WrapperSongDetail;)V

    .line 221
    return-void
.end method

.method public onReturnError(Lcom/htc/music/online/sinamusic/SnsException;)V
    .locals 1
    .parameter "err"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/htc/music/OnlineNowPlayingView$2;->dialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/htc/music/OnlineNowPlayingView$2;->dialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 229
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 233
    iget-object v0, p0, Lcom/htc/music/OnlineNowPlayingView$2;->this$0:Lcom/htc/music/OnlineNowPlayingView;

    iget-object v0, v0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    iget-object v1, p0, Lcom/htc/music/OnlineNowPlayingView$2;->this$0:Lcom/htc/music/OnlineNowPlayingView;

    iget-object v1, v1, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const v2, 0x204026b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/online/Util;->getProgressDialog(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/OnlineNowPlayingView$2;->dialog:Lcom/htc/app/HtcProgressDialog;

    .line 234
    iget-object v0, p0, Lcom/htc/music/OnlineNowPlayingView$2;->dialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/htc/music/OnlineNowPlayingView$2;->dialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 238
    :cond_0
    return-void
.end method
