.class Lcom/htc/music/HtcMusic$59;
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
.field final synthetic this$0:Lcom/htc/music/HtcMusic;


# direct methods
.method constructor <init>(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter

    .prologue
    .line 9487
    iput-object p1, p0, Lcom/htc/music/HtcMusic$59;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Landroid/content/Context;ILcom/htc/music/online/sinamusic/WrapperSongDetail;)V
    .locals 5
    .parameter "context"
    .parameter "songId"
    .parameter "songDetail"

    .prologue
    const/4 v4, 0x0

    .line 9492
    const-string v1, "[HtcMusic]"

    const-string v2, "[onSongLyricLoadingListener][onFinish]"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9493
    iget-object v1, p0, Lcom/htc/music/HtcMusic$59;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->getCurrentSongId()I
    invoke-static {v1}, Lcom/htc/music/HtcMusic;->access$6300(Lcom/htc/music/HtcMusic;)I

    move-result v1

    if-eq p2, v1, :cond_0

    .line 9494
    iget-object v1, p0, Lcom/htc/music/HtcMusic$59;->this$0:Lcom/htc/music/HtcMusic;

    #setter for: Lcom/htc/music/HtcMusic;->mIsLyricsLoading:Z
    invoke-static {v1, v4}, Lcom/htc/music/HtcMusic;->access$12202(Lcom/htc/music/HtcMusic;Z)Z

    .line 9516
    :goto_0
    return-void

    .line 9497
    :cond_0
    invoke-static {}, Lcom/htc/music/lyrics/LyricGenerator;->getCurrentLyrics()Lcom/htc/music/lyrics/Lyrics;

    move-result-object v0

    .line 9498
    .local v0, lyrics:Lcom/htc/music/lyrics/Lyrics;
    if-eqz v0, :cond_1

    .line 9499
    invoke-virtual {v0}, Lcom/htc/music/lyrics/Lyrics;->getCurrentSongId()I

    move-result v1

    iget-object v2, p0, Lcom/htc/music/HtcMusic$59;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->getCurrentSongId()I
    invoke-static {v2}, Lcom/htc/music/HtcMusic;->access$6300(Lcom/htc/music/HtcMusic;)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 9501
    iget-object v1, p0, Lcom/htc/music/HtcMusic$59;->this$0:Lcom/htc/music/HtcMusic;

    #setter for: Lcom/htc/music/HtcMusic;->mIsLyricsLoading:Z
    invoke-static {v1, v4}, Lcom/htc/music/HtcMusic;->access$12202(Lcom/htc/music/HtcMusic;Z)Z

    goto :goto_0

    .line 9505
    :cond_1
    invoke-virtual {p3}, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->getSongLyric()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/music/HtcMusic;->access$12302(Ljava/lang/String;)Ljava/lang/String;

    .line 9506
    invoke-static {}, Lcom/htc/music/HtcMusic;->access$12300()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 9507
    invoke-static {}, Lcom/htc/music/HtcMusic;->access$12400()Lcom/htc/music/online/sinamusic/MyLogger;

    move-result-object v1

    const-string v2, "Get Song Lyric is nulll"

    invoke-virtual {v1, v2}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 9509
    :cond_2
    invoke-static {}, Lcom/htc/music/HtcMusic;->access$12400()Lcom/htc/music/online/sinamusic/MyLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Query Online Succuss,mLyricStr.length:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/htc/music/HtcMusic;->access$12300()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 9510
    invoke-static {}, Lcom/htc/music/HtcMusic;->access$12300()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/music/lyrics/LyricGenerator;->genOnlineLyric(Ljava/lang/String;)Lcom/htc/music/lyrics/Lyrics;

    move-result-object v0

    .line 9511
    if-eqz v0, :cond_3

    .line 9512
    invoke-virtual {v0, p2}, Lcom/htc/music/lyrics/Lyrics;->setCurrentSongId(I)V

    .line 9514
    :cond_3
    iget-object v1, p0, Lcom/htc/music/HtcMusic$59;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->openLyrics(Lcom/htc/music/lyrics/Lyrics;)Z
    invoke-static {v1, v0}, Lcom/htc/music/HtcMusic;->access$3800(Lcom/htc/music/HtcMusic;Lcom/htc/music/lyrics/Lyrics;)Z

    .line 9515
    iget-object v1, p0, Lcom/htc/music/HtcMusic$59;->this$0:Lcom/htc/music/HtcMusic;

    #setter for: Lcom/htc/music/HtcMusic;->mIsLyricsLoading:Z
    invoke-static {v1, v4}, Lcom/htc/music/HtcMusic;->access$12202(Lcom/htc/music/HtcMusic;Z)Z

    goto :goto_0
.end method

.method public onReturnError(Lcom/htc/music/online/sinamusic/SnsException;)V
    .locals 2
    .parameter "err"

    .prologue
    .line 9521
    const-string v0, "[HtcMusic]"

    const-string v1, "[onSongLyricLoadingListener][onReturnError]"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9522
    iget-object v0, p0, Lcom/htc/music/HtcMusic$59;->this$0:Lcom/htc/music/HtcMusic;

    const/4 v1, 0x0

    #setter for: Lcom/htc/music/HtcMusic;->mIsLyricsLoading:Z
    invoke-static {v0, v1}, Lcom/htc/music/HtcMusic;->access$12202(Lcom/htc/music/HtcMusic;Z)Z

    .line 9523
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 9528
    iget-object v0, p0, Lcom/htc/music/HtcMusic$59;->this$0:Lcom/htc/music/HtcMusic;

    const/4 v1, 0x1

    #setter for: Lcom/htc/music/HtcMusic;->mIsLyricsLoading:Z
    invoke-static {v0, v1}, Lcom/htc/music/HtcMusic;->access$12202(Lcom/htc/music/HtcMusic;Z)Z

    .line 9529
    const-string v0, "[HtcMusic]"

    const-string v1, "[onSongLyricLoadingListener][onStart]"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9530
    return-void
.end method
