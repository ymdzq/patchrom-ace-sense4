.class Lcom/htc/music/HtcMusic$22;
.super Ljava/lang/Object;
.source "HtcMusic.java"

# interfaces
.implements Lcom/htc/music/online/util/AsyncSongDetailGetter$OnSongDetailLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/HtcMusic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field dialog:Lcom/htc/app/HtcProgressDialog;

.field final synthetic this$0:Lcom/htc/music/HtcMusic;


# direct methods
.method constructor <init>(Lcom/htc/music/HtcMusic;)V
    .locals 1
    .parameter

    .prologue
    .line 2969
    iput-object p1, p0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2971
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/HtcMusic$22;->dialog:Lcom/htc/app/HtcProgressDialog;

    return-void
.end method


# virtual methods
.method public onFinish(Landroid/content/Context;ILcom/htc/music/online/sinamusic/WrapperSongDetail;)V
    .locals 1
    .parameter "context"
    .parameter "songId"
    .parameter "songDetail"

    .prologue
    .line 2975
    iget-object v0, p0, Lcom/htc/music/HtcMusic$22;->dialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_0

    .line 2976
    iget-object v0, p0, Lcom/htc/music/HtcMusic$22;->dialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 2978
    :cond_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    invoke-static {v0, p3}, Lcom/htc/music/online/Util;->showSongDetail(Landroid/app/Activity;Lcom/htc/music/online/sinamusic/WrapperSongDetail;)V

    .line 2979
    return-void
.end method

.method public onReturnError(Lcom/htc/music/online/sinamusic/SnsException;)V
    .locals 1
    .parameter "err"

    .prologue
    .line 2984
    iget-object v0, p0, Lcom/htc/music/HtcMusic$22;->dialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_0

    .line 2985
    iget-object v0, p0, Lcom/htc/music/HtcMusic$22;->dialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 2987
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 2991
    iget-object v0, p0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v1, p0, Lcom/htc/music/HtcMusic$22;->this$0:Lcom/htc/music/HtcMusic;

    const v2, 0x204026b

    invoke-virtual {v1, v2}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/online/Util;->getProgressDialog(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/HtcMusic$22;->dialog:Lcom/htc/app/HtcProgressDialog;

    .line 2992
    iget-object v0, p0, Lcom/htc/music/HtcMusic$22;->dialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_0

    .line 2993
    iget-object v0, p0, Lcom/htc/music/HtcMusic$22;->dialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 2996
    :cond_0
    return-void
.end method
