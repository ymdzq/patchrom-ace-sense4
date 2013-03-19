.class Lcom/htc/music/online/util/AsyncSongDetailGetter$AsyncDetailGetTask;
.super Landroid/os/AsyncTask;
.source "AsyncSongDetailGetter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/online/util/AsyncSongDetailGetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncDetailGetTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Lcom/htc/music/online/sinamusic/WrapperSongDetail;",
        ">;"
    }
.end annotation


# instance fields
.field mListener:Lcom/htc/music/online/util/AsyncSongDetailGetter$OnSongDetailLoadingListener;

.field private mSongId:I

.field final synthetic this$0:Lcom/htc/music/online/util/AsyncSongDetailGetter;


# direct methods
.method public constructor <init>(Lcom/htc/music/online/util/AsyncSongDetailGetter;Lcom/htc/music/online/util/AsyncSongDetailGetter$OnSongDetailLoadingListener;)V
    .locals 0
    .parameter
    .parameter "listener"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/htc/music/online/util/AsyncSongDetailGetter$AsyncDetailGetTask;->this$0:Lcom/htc/music/online/util/AsyncSongDetailGetter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 33
    iput-object p2, p0, Lcom/htc/music/online/util/AsyncSongDetailGetter$AsyncDetailGetTask;->mListener:Lcom/htc/music/online/util/AsyncSongDetailGetter$OnSongDetailLoadingListener;

    .line 34
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Lcom/htc/music/online/sinamusic/WrapperSongDetail;
    .locals 4
    .parameter "params"

    .prologue
    .line 46
    const/4 v3, 0x0

    aget-object v3, p1, v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/htc/music/online/util/AsyncSongDetailGetter$AsyncDetailGetTask;->mSongId:I

    .line 48
    iget-object v3, p0, Lcom/htc/music/online/util/AsyncSongDetailGetter$AsyncDetailGetTask;->this$0:Lcom/htc/music/online/util/AsyncSongDetailGetter;

    #getter for: Lcom/htc/music/online/util/AsyncSongDetailGetter;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/music/online/util/AsyncSongDetailGetter;->access$000(Lcom/htc/music/online/util/AsyncSongDetailGetter;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/music/online/sinamusic/SinaFactory;->getEngine(Landroid/content/Context;)Lcom/htc/music/online/sinamusic/ISinaEngine;

    move-result-object v1

    .line 49
    .local v1, engine:Lcom/htc/music/online/sinamusic/ISinaEngine;
    const/4 v2, 0x0

    .line 51
    .local v2, songDetail:Lcom/htc/music/online/sinamusic/WrapperSongDetail;
    :try_start_0
    iget v3, p0, Lcom/htc/music/online/util/AsyncSongDetailGetter$AsyncDetailGetTask;->mSongId:I

    invoke-interface {v1, v3}, Lcom/htc/music/online/sinamusic/ISinaEngine;->getSongDetail(I)Lcom/htc/music/online/sinamusic/WrapperSongDetail;
    :try_end_0
    .catch Lcom/htc/music/online/sinamusic/SnsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v3, v2

    .line 59
    :goto_0
    return-object v3

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, e:Lcom/htc/music/online/sinamusic/SnsException;
    invoke-virtual {v0}, Lcom/htc/music/online/sinamusic/SnsException;->printErrorInfo()V

    .line 54
    iget-object v3, p0, Lcom/htc/music/online/util/AsyncSongDetailGetter$AsyncDetailGetTask;->mListener:Lcom/htc/music/online/util/AsyncSongDetailGetter$OnSongDetailLoadingListener;

    if-eqz v3, :cond_0

    .line 55
    iget-object v3, p0, Lcom/htc/music/online/util/AsyncSongDetailGetter$AsyncDetailGetTask;->mListener:Lcom/htc/music/online/util/AsyncSongDetailGetter$OnSongDetailLoadingListener;

    invoke-interface {v3, v0}, Lcom/htc/music/online/util/AsyncSongDetailGetter$OnSongDetailLoadingListener;->onReturnError(Lcom/htc/music/online/sinamusic/SnsException;)V

    .line 57
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/htc/music/online/util/AsyncSongDetailGetter$AsyncDetailGetTask;->doInBackground([Ljava/lang/Object;)Lcom/htc/music/online/sinamusic/WrapperSongDetail;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/htc/music/online/sinamusic/WrapperSongDetail;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 63
    if-nez p1, :cond_1

    .line 64
    const-string v0, "AsyncSongDetailGetter"

    const-string v1, "result is null in AsyncSongDetailGetter.onPostExecute"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/htc/music/online/util/AsyncSongDetailGetter$AsyncDetailGetTask;->mListener:Lcom/htc/music/online/util/AsyncSongDetailGetter$OnSongDetailLoadingListener;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/htc/music/online/util/AsyncSongDetailGetter$AsyncDetailGetTask;->mListener:Lcom/htc/music/online/util/AsyncSongDetailGetter$OnSongDetailLoadingListener;

    iget-object v1, p0, Lcom/htc/music/online/util/AsyncSongDetailGetter$AsyncDetailGetTask;->this$0:Lcom/htc/music/online/util/AsyncSongDetailGetter;

    #getter for: Lcom/htc/music/online/util/AsyncSongDetailGetter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/music/online/util/AsyncSongDetailGetter;->access$000(Lcom/htc/music/online/util/AsyncSongDetailGetter;)Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/htc/music/online/util/AsyncSongDetailGetter$AsyncDetailGetTask;->mSongId:I

    invoke-interface {v0, v1, v2, p1}, Lcom/htc/music/online/util/AsyncSongDetailGetter$OnSongDetailLoadingListener;->onFinish(Landroid/content/Context;ILcom/htc/music/online/sinamusic/WrapperSongDetail;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    check-cast p1, Lcom/htc/music/online/sinamusic/WrapperSongDetail;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/music/online/util/AsyncSongDetailGetter$AsyncDetailGetTask;->onPostExecute(Lcom/htc/music/online/sinamusic/WrapperSongDetail;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/music/online/util/AsyncSongDetailGetter$AsyncDetailGetTask;->mListener:Lcom/htc/music/online/util/AsyncSongDetailGetter$OnSongDetailLoadingListener;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/htc/music/online/util/AsyncSongDetailGetter$AsyncDetailGetTask;->mListener:Lcom/htc/music/online/util/AsyncSongDetailGetter$OnSongDetailLoadingListener;

    invoke-interface {v0}, Lcom/htc/music/online/util/AsyncSongDetailGetter$OnSongDetailLoadingListener;->onStart()V

    .line 42
    :cond_0
    return-void
.end method
