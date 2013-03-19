.class Lcom/htc/music/HtcMusic$27;
.super Landroid/content/BroadcastReceiver;
.source "HtcMusic.java"


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
    .line 4881
    iput-object p1, p0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 28
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 4885
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v24

    const-string v25, "com.htc.music.asyncopen"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 4886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    #setter for: Lcom/htc/music/HtcMusic;->mIsOnlineLoading:Z
    invoke-static/range {v24 .. v25}, Lcom/htc/music/HtcMusic;->access$6002(Lcom/htc/music/HtcMusic;Z)Z

    .line 4889
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/HtcMusic;->mUINotInit:Z
    invoke-static/range {v24 .. v24}, Lcom/htc/music/HtcMusic;->access$6100(Lcom/htc/music/HtcMusic;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 5282
    :cond_1
    :goto_0
    return-void

    .line 4891
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 4892
    .local v3, action:Ljava/lang/String;
    const-string v24, "com.htc.music.metachanged"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_9

    .line 4893
    const-string v24, "[HtcMusic]"

    const-string v25, "==========META_CHANGED"

    invoke-static/range {v24 .. v25}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4896
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/HtcMusic;->access$5700(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;

    move-result-object v24

    const/16 v25, 0x7

    invoke-virtual/range {v24 .. v25}, Lcom/htc/music/HtcMusic$NonUiHandler;->sendEmptyMessage(I)Z

    .line 4898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    #calls: Lcom/htc/music/HtcMusic;->setPauseButtonImage()V
    invoke-static/range {v24 .. v24}, Lcom/htc/music/HtcMusic;->access$6200(Lcom/htc/music/HtcMusic;)V

    .line 4899
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v24, v0

    if-eqz v24, :cond_3

    .line 4901
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v24

    if-eqz v24, :cond_6

    .line 4902
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    const-wide/16 v25, 0x1

    #calls: Lcom/htc/music/HtcMusic;->queueNextRefresh(J)V
    invoke-static/range {v24 .. v26}, Lcom/htc/music/HtcMusic;->access$4100(Lcom/htc/music/HtcMusic;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4917
    :cond_3
    :goto_1
    invoke-static {}, Lcom/htc/music/lyrics/LyricGenerator;->getCurrentLyrics()Lcom/htc/music/lyrics/Lyrics;

    move-result-object v13

    .line 4918
    .local v13, lyrics:Lcom/htc/music/lyrics/Lyrics;
    if-eqz v13, :cond_7

    invoke-virtual {v13}, Lcom/htc/music/lyrics/Lyrics;->getCurrentSongId()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v25, v0

    #calls: Lcom/htc/music/HtcMusic;->getCurrentSongId()I
    invoke-static/range {v25 .. v25}, Lcom/htc/music/HtcMusic;->access$6300(Lcom/htc/music/HtcMusic;)I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_7

    .line 4923
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    #calls: Lcom/htc/music/HtcMusic;->openLyrics(Lcom/htc/music/lyrics/Lyrics;)Z
    invoke-static {v0, v13}, Lcom/htc/music/HtcMusic;->access$3800(Lcom/htc/music/HtcMusic;Lcom/htc/music/lyrics/Lyrics;)Z

    .line 4929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    move/from16 v24, v0

    if-eqz v24, :cond_5

    .line 4931
    const/4 v14, 0x0

    .line 4932
    .local v14, nSelectPos:I
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4

    .line 4933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/htc/music/IMediaPlaybackService;->getAlbumQueuePosition()I

    move-result v14

    .line 4934
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/HtcMusic;->access$6400(Lcom/htc/music/HtcMusic;)Lcom/htc/music/GliderAdapter;

    move-result-object v24

    if-eqz v24, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1

    .line 4936
    if-ltz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/HtcMusic;->access$6400(Lcom/htc/music/HtcMusic;)Lcom/htc/music/GliderAdapter;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/htc/music/GliderAdapter;->getItemCount()I

    move-result v24

    move/from16 v0, v24

    if-ge v14, v0, :cond_8

    .line 4938
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v14, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setSelection(IZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    .line 4949
    .end local v14           #nSelectPos:I
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/HtcMusic;->mDownloadAlbumArtDialog:Landroid/app/Dialog;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/HtcMusic;->access$6500(Lcom/htc/music/HtcMusic;)Landroid/app/Dialog;

    move-result-object v24

    if-eqz v24, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/HtcMusic;->mDownloadAlbumArtDialog:Landroid/app/Dialog;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/HtcMusic;->access$6500(Lcom/htc/music/HtcMusic;)Landroid/app/Dialog;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/app/Dialog;->isShowing()Z

    move-result v24

    if-eqz v24, :cond_1

    .line 4951
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v25, v0

    #getter for: Lcom/htc/music/HtcMusic;->mDownloadAlbumArtDialog:Landroid/app/Dialog;
    invoke-static/range {v25 .. v25}, Lcom/htc/music/HtcMusic;->access$6500(Lcom/htc/music/HtcMusic;)Landroid/app/Dialog;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/htc/music/HtcMusic;->syncUpdateCurrentAlbumAndRefreshDialog(Landroid/app/Dialog;)V

    goto/16 :goto_0

    .line 4904
    .end local v13           #lyrics:Lcom/htc/music/lyrics/Lyrics;
    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    #calls: Lcom/htc/music/HtcMusic;->refreshNow()J
    invoke-static/range {v24 .. v24}, Lcom/htc/music/HtcMusic;->access$1500(Lcom/htc/music/HtcMusic;)J
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 4905
    :catch_0
    move-exception v24

    goto/16 :goto_1

    .line 4921
    .restart local v13       #lyrics:Lcom/htc/music/lyrics/Lyrics;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    #calls: Lcom/htc/music/HtcMusic;->getLyricsForCurrentMusic()Lcom/htc/music/lyrics/Lyrics;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/HtcMusic;->access$3700(Lcom/htc/music/HtcMusic;)Lcom/htc/music/lyrics/Lyrics;

    move-result-object v13

    goto/16 :goto_2

    .line 4940
    .restart local v14       #nSelectPos:I
    :cond_8
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setSelection(IZ)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 4942
    :catch_1
    move-exception v8

    .line 4943
    .local v8, e:Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 4944
    .end local v8           #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v10

    .line 4945
    .local v10, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v10}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_3

    .line 4952
    .end local v10           #ex:Ljava/lang/NullPointerException;
    .end local v13           #lyrics:Lcom/htc/music/lyrics/Lyrics;
    .end local v14           #nSelectPos:I
    :cond_9
    const-string v24, "com.htc.music.playbackcomplete"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_a

    .line 4953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    #setter for: Lcom/htc/music/HtcMusic;->mPaused:Z
    invoke-static/range {v24 .. v25}, Lcom/htc/music/HtcMusic;->access$6602(Lcom/htc/music/HtcMusic;Z)Z

    .line 4954
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    #calls: Lcom/htc/music/HtcMusic;->setPauseButtonImage()V
    invoke-static/range {v24 .. v24}, Lcom/htc/music/HtcMusic;->access$6200(Lcom/htc/music/HtcMusic;)V

    goto/16 :goto_0

    .line 4957
    :cond_a
    const-string v24, "com.htc.music.asyncopen"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_b

    .line 4958
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    #calls: Lcom/htc/music/HtcMusic;->isOnlineMode()Z
    invoke-static/range {v24 .. v24}, Lcom/htc/music/HtcMusic;->access$4900(Lcom/htc/music/HtcMusic;)Z

    move-result v24

    if-eqz v24, :cond_1

    .line 4959
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    #setter for: Lcom/htc/music/HtcMusic;->mIsOnlineLoading:Z
    invoke-static/range {v24 .. v25}, Lcom/htc/music/HtcMusic;->access$6002(Lcom/htc/music/HtcMusic;Z)Z

    .line 4960
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    #calls: Lcom/htc/music/HtcMusic;->showDownloadProgressDialog(Z)V
    invoke-static/range {v24 .. v25}, Lcom/htc/music/HtcMusic;->access$6700(Lcom/htc/music/HtcMusic;Z)V

    .line 4961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/HtcMusic;->mProgress:Lcom/htc/widget/HtcSeekBar;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/HtcMusic;->access$6800(Lcom/htc/music/HtcMusic;)Lcom/htc/widget/HtcSeekBar;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/htc/widget/HtcSeekBar;->setEnabled(Z)V

    .line 4962
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/HtcMusic;->mPauseButton:Lcom/htc/widget/HtcRimImageButton;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/HtcMusic;->access$3500(Lcom/htc/music/HtcMusic;)Lcom/htc/widget/HtcRimImageButton;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/htc/widget/HtcRimImageButton;->setEnabled(Z)V

    .line 4963
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/htc/music/online/Util;->checkNetworkAvailableWithDialog(Landroid/content/Context;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v25

    #setter for: Lcom/htc/music/HtcMusic;->mNoNetworkDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static/range {v24 .. v25}, Lcom/htc/music/HtcMusic;->access$6902(Lcom/htc/music/HtcMusic;Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;

    .line 4964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/HtcMusic;->mNoNetworkDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/HtcMusic;->access$6900(Lcom/htc/music/HtcMusic;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v24

    if-eqz v24, :cond_1

    .line 4965
    const/16 v24, 0x1

    invoke-static/range {v24 .. v24}, Lcom/htc/music/HtcMusic;->access$7002(Z)Z

    .line 4966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    #calls: Lcom/htc/music/HtcMusic;->showDownloadProgressDialog(Z)V
    invoke-static/range {v24 .. v25}, Lcom/htc/music/HtcMusic;->access$6700(Lcom/htc/music/HtcMusic;Z)V

    goto/16 :goto_0

    .line 4969
    :cond_b
    const-string v24, "com.htc.music.timeout"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_e

    .line 4970
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    #calls: Lcom/htc/music/HtcMusic;->isOnlineMode()Z
    invoke-static/range {v24 .. v24}, Lcom/htc/music/HtcMusic;->access$4900(Lcom/htc/music/HtcMusic;)Z

    move-result v24

    if-eqz v24, :cond_1

    .line 4971
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/htc/music/online/Util;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v24

    if-eqz v24, :cond_c

    .line 4972
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/htc/music/online/Util;->is3GWap(Landroid/content/Context;)Z

    move-result v24

    if-eqz v24, :cond_d

    .line 4973
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    #calls: Lcom/htc/music/HtcMusic;->WapNetworkAction()V
    invoke-static/range {v24 .. v24}, Lcom/htc/music/HtcMusic;->access$7100(Lcom/htc/music/HtcMusic;)V

    .line 4978
    :cond_c
    :goto_4
    const/16 v24, 0x0

    sput-boolean v24, Lcom/htc/music/util/MusicUtils;->mIsConnectionFailed:Z

    .line 4979
    const/16 v24, 0x0

    sput-boolean v24, Lcom/htc/music/util/MusicUtils;->mIs3GWap:Z

    goto/16 :goto_0

    .line 4975
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    #calls: Lcom/htc/music/HtcMusic;->timeoutAction()V
    invoke-static/range {v24 .. v24}, Lcom/htc/music/HtcMusic;->access$7200(Lcom/htc/music/HtcMusic;)V

    goto :goto_4

    .line 4982
    :cond_e
    const-string v24, "com.htc.music.bufferring"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_10

    .line 4983
    const-string v24, "displayProgress"

    const/16 v25, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 4984
    .local v7, displayProgress:Z
    if-eqz v7, :cond_f

    .line 4985
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    #calls: Lcom/htc/music/HtcMusic;->showDownloadProgressDialog(Z)V
    invoke-static/range {v24 .. v25}, Lcom/htc/music/HtcMusic;->access$6700(Lcom/htc/music/HtcMusic;Z)V

    .line 4989
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    #calls: Lcom/htc/music/HtcMusic;->refreshNow()J
    invoke-static/range {v24 .. v24}, Lcom/htc/music/HtcMusic;->access$1500(Lcom/htc/music/HtcMusic;)J

    goto/16 :goto_0

    .line 4987
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    #calls: Lcom/htc/music/HtcMusic;->showDownloadProgressDialog(Z)V
    invoke-static/range {v24 .. v25}, Lcom/htc/music/HtcMusic;->access$6700(Lcom/htc/music/HtcMusic;Z)V

    goto :goto_5

    .line 4991
    .end local v7           #displayProgress:Z
    :cond_10
    const-string v24, "com.htc.music.asyncopencomplete"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_11

    .line 4992
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    #calls: Lcom/htc/music/HtcMusic;->isOnlineMode()Z
    invoke-static/range {v24 .. v24}, Lcom/htc/music/HtcMusic;->access$4900(Lcom/htc/music/HtcMusic;)Z

    move-result v24

    if-eqz v24, :cond_1

    .line 4993
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    #setter for: Lcom/htc/music/HtcMusic;->mIsOnlineLoading:Z
    invoke-static/range {v24 .. v25}, Lcom/htc/music/HtcMusic;->access$6002(Lcom/htc/music/HtcMusic;Z)Z

    .line 4994
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    #calls: Lcom/htc/music/HtcMusic;->showDownloadProgressDialog(Z)V
    invoke-static/range {v24 .. v25}, Lcom/htc/music/HtcMusic;->access$6700(Lcom/htc/music/HtcMusic;Z)V

    .line 4995
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/HtcMusic;->mProgress:Lcom/htc/widget/HtcSeekBar;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/HtcMusic;->access$6800(Lcom/htc/music/HtcMusic;)Lcom/htc/widget/HtcSeekBar;

    move-result-object v24

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Lcom/htc/widget/HtcSeekBar;->setEnabled(Z)V

    .line 4996
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/HtcMusic;->mPauseButton:Lcom/htc/widget/HtcRimImageButton;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/HtcMusic;->access$3500(Lcom/htc/music/HtcMusic;)Lcom/htc/widget/HtcRimImageButton;

    move-result-object v24

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Lcom/htc/widget/HtcRimImageButton;->setEnabled(Z)V

    .line 4997
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    #calls: Lcom/htc/music/HtcMusic;->setPauseButtonImage()V
    invoke-static/range {v24 .. v24}, Lcom/htc/music/HtcMusic;->access$6200(Lcom/htc/music/HtcMusic;)V

    .line 4998
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1

    .line 5000
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/htc/music/IMediaPlaybackService;->duration()J

    move-result-wide v25

    #setter for: Lcom/htc/music/HtcMusic;->mDuration:J
    invoke-static/range {v24 .. v26}, Lcom/htc/music/HtcMusic;->access$1402(Lcom/htc/music/HtcMusic;J)J

    .line 5001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    #calls: Lcom/htc/music/HtcMusic;->refreshNow()J
    invoke-static/range {v24 .. v24}, Lcom/htc/music/HtcMusic;->access$1500(Lcom/htc/music/HtcMusic;)J

    move-result-wide v15

    .line 5002
    .local v15, next:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-wide v1, v15

    #calls: Lcom/htc/music/HtcMusic;->queueNextRefresh(J)V
    invoke-static {v0, v1, v2}, Lcom/htc/music/HtcMusic;->access$4100(Lcom/htc/music/HtcMusic;J)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 5003
    .end local v15           #next:J
    :catch_3
    move-exception v8

    .line 5004
    .restart local v8       #e:Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 5010
    .end local v8           #e:Landroid/os/RemoteException;
    :cond_11
    const-string v24, "com.htc.music.playstatechanged"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_17

    .line 5012
    const-string v24, "extrastate"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 5013
    .local v11, extraState:Ljava/lang/String;
    if-eqz v11, :cond_14

    .line 5014
    const-string v24, "[HtcMusic]"

    const-string v25, "==========PLAYSTATE_CHANGED extraState"

    invoke-static/range {v24 .. v25}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5015
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    #calls: Lcom/htc/music/HtcMusic;->buildTitleInfo(Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v24 .. v25}, Lcom/htc/music/HtcMusic;->access$7300(Lcom/htc/music/HtcMusic;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 5017
    .local v21, szTitleInfo:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_12

    .line 5018
    const-string v24, "buffering"

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_13

    .line 5019
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v25, v0

    const v26, 0x7f0701d7

    invoke-virtual/range {v25 .. v26}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v25

    #calls: Lcom/htc/music/HtcMusic;->buildTitleInfo(Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v24 .. v25}, Lcom/htc/music/HtcMusic;->access$7300(Lcom/htc/music/HtcMusic;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 5025
    :cond_12
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/ActionBarText;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/HtcMusic;->access$7400(Lcom/htc/music/HtcMusic;)Lcom/htc/widget/ActionBarText;

    move-result-object v24

    if-eqz v24, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/HtcMusic;->mQueueInfo:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/HtcMusic;->access$7500(Lcom/htc/music/HtcMusic;)Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_1

    .line 5027
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    #calls: Lcom/htc/music/HtcMusic;->setSecondaryTitle(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/music/HtcMusic;->access$7600(Lcom/htc/music/HtcMusic;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5020
    :cond_13
    const-string v24, "waiting"

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_12

    .line 5021
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v25, v0

    const v26, 0x7f0701d8

    invoke-virtual/range {v25 .. v26}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v25

    #calls: Lcom/htc/music/HtcMusic;->buildTitleInfo(Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v24 .. v25}, Lcom/htc/music/HtcMusic;->access$7300(Lcom/htc/music/HtcMusic;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    goto :goto_6

    .line 5032
    .end local v21           #szTitleInfo:Ljava/lang/String;
    :cond_14
    const-string v24, "[HtcMusic]"

    const-string v25, "==========PLAYSTATE_CHANGED"

    invoke-static/range {v24 .. v25}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5034
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    #calls: Lcom/htc/music/HtcMusic;->setPauseButtonImage()V
    invoke-static/range {v24 .. v24}, Lcom/htc/music/HtcMusic;->access$6200(Lcom/htc/music/HtcMusic;)V

    .line 5036
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1

    .line 5039
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/HtcMusic;->mDuration:J
    invoke-static/range {v24 .. v24}, Lcom/htc/music/HtcMusic;->access$1400(Lcom/htc/music/HtcMusic;)J

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-gez v24, :cond_15

    .line 5040
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/htc/music/IMediaPlaybackService;->duration()J

    move-result-wide v25

    #setter for: Lcom/htc/music/HtcMusic;->mDuration:J
    invoke-static/range {v24 .. v26}, Lcom/htc/music/HtcMusic;->access$1402(Lcom/htc/music/HtcMusic;J)J

    .line 5043
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v24

    if-eqz v24, :cond_16

    .line 5044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    #setter for: Lcom/htc/music/HtcMusic;->mPaused:Z
    invoke-static/range {v24 .. v25}, Lcom/htc/music/HtcMusic;->access$6602(Lcom/htc/music/HtcMusic;Z)Z

    .line 5045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    #calls: Lcom/htc/music/HtcMusic;->refreshNow()J
    invoke-static/range {v24 .. v24}, Lcom/htc/music/HtcMusic;->access$1500(Lcom/htc/music/HtcMusic;)J

    move-result-wide v15

    .line 5046
    .restart local v15       #next:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-wide v1, v15

    #calls: Lcom/htc/music/HtcMusic;->queueNextRefresh(J)V
    invoke-static {v0, v1, v2}, Lcom/htc/music/HtcMusic;->access$4100(Lcom/htc/music/HtcMusic;J)V

    goto/16 :goto_0

    .line 5051
    .end local v15           #next:J
    :catch_4
    move-exception v24

    goto/16 :goto_0

    .line 5048
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    #setter for: Lcom/htc/music/HtcMusic;->mPaused:Z
    invoke-static/range {v24 .. v25}, Lcom/htc/music/HtcMusic;->access$6602(Lcom/htc/music/HtcMusic;Z)Z

    .line 5049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    #calls: Lcom/htc/music/HtcMusic;->refreshNow()J
    invoke-static/range {v24 .. v24}, Lcom/htc/music/HtcMusic;->access$1500(Lcom/htc/music/HtcMusic;)J
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_0

    .line 5055
    .end local v11           #extraState:Ljava/lang/String;
    :cond_17
    const-string v24, "com.htc.music.rotateleft"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1c

    .line 5056
    const-string v24, "[HtcMusic]"

    const-string v25, "==========ANIMATION_MOVE_PREV"

    invoke-static/range {v24 .. v25}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5057
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1b

    .line 5059
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/HtcMusic;->mGliderState:I
    invoke-static/range {v24 .. v24}, Lcom/htc/music/HtcMusic;->access$7700(Lcom/htc/music/HtcMusic;)I

    move-result v24

    const/16 v25, 0x12

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-object/from16 v24, v0

    if-eqz v24, :cond_18

    const/4 v4, 0x1

    .line 5060
    .local v4, bAnimated:Z
    :goto_7
    if-nez v4, :cond_19

    .line 5061
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/htc/music/IMediaPlaybackService;->startAnimation()V

    .line 5062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/htc/music/IMediaPlaybackService;->endAnimation()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_0

    .line 5075
    .end local v4           #bAnimated:Z
    :catch_5
    move-exception v8

    .line 5076
    .restart local v8       #e:Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 5059
    .end local v8           #e:Landroid/os/RemoteException;
    :cond_18
    const/4 v4, 0x0

    goto :goto_7

    .line 5066
    .restart local v4       #bAnimated:Z
    :cond_19
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/htc/music/IMediaPlaybackService;->startAnimation()V

    .line 5067
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/htc/music/IMediaPlaybackService;->getAlbumQueueSize()I

    move-result v12

    .line 5068
    .local v12, len:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/htc/music/IMediaPlaybackService;->getAlbumQueuePosition()I

    move-result v17

    .line 5069
    .local v17, pos:I
    add-int/lit8 v24, v12, -0x1

    move/from16 v0, v17

    move/from16 v1, v24

    if-ne v0, v1, :cond_1a

    .line 5070
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-object/from16 v24, v0

    add-int/lit8 v25, v12, -0x1

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setSelection(IZ)V

    .line 5071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/htc/music/IMediaPlaybackService;->endAnimation()V

    goto/16 :goto_0

    .line 5073
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->scrollTo(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_0

    .line 5079
    .end local v4           #bAnimated:Z
    .end local v12           #len:I
    .end local v17           #pos:I
    :cond_1b
    const-string v24, "[HtcMusic]"

    const-string v25, "Bad! Service is null at aniamtion"

    invoke-static/range {v24 .. v25}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5081
    :cond_1c
    const-string v24, "com.htc.music.rotateright"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_21

    .line 5082
    const-string v24, "[HtcMusic]"

    const-string v25, "==========ANIMATION_MOVE_NEXT"

    invoke-static/range {v24 .. v25}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v24, v0

    if-eqz v24, :cond_20

    .line 5085
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/HtcMusic;->mGliderState:I
    invoke-static/range {v24 .. v24}, Lcom/htc/music/HtcMusic;->access$7700(Lcom/htc/music/HtcMusic;)I

    move-result v24

    const/16 v25, 0x12

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1d

    const/4 v4, 0x1

    .line 5086
    .restart local v4       #bAnimated:Z
    :goto_8
    if-nez v4, :cond_1e

    .line 5087
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/htc/music/IMediaPlaybackService;->startAnimation()V

    .line 5088
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/htc/music/IMediaPlaybackService;->endAnimation()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_6

    goto/16 :goto_0

    .line 5101
    .end local v4           #bAnimated:Z
    :catch_6
    move-exception v8

    .line 5102
    .restart local v8       #e:Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 5085
    .end local v8           #e:Landroid/os/RemoteException;
    :cond_1d
    const/4 v4, 0x0

    goto :goto_8

    .line 5092
    .restart local v4       #bAnimated:Z
    :cond_1e
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/htc/music/IMediaPlaybackService;->startAnimation()V

    .line 5093
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/htc/music/IMediaPlaybackService;->getAlbumQueuePosition()I

    move-result v17

    .line 5094
    .restart local v17       #pos:I
    if-nez v17, :cond_1f

    .line 5095
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v17

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setSelection(IZ)V

    .line 5096
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/htc/music/IMediaPlaybackService;->endAnimation()V

    goto/16 :goto_0

    .line 5098
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->scrollTo(I)V

    .line 5099
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/htc/sunny2/widget/presentation/SPresentation;->enabledTouchEvent(Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_6

    goto/16 :goto_0

    .line 5105
    .end local v4           #bAnimated:Z
    .end local v17           #pos:I
    :cond_20
    const-string v24, "[HtcMusic]"

    const-string v25, "Bad! Service is null at aniamtion"

    invoke-static/range {v24 .. v25}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5107
    :cond_21
    const-string v24, "com.htc.music.rotatecircle_next"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_22

    .line 5109
    const-string v24, "[HtcMusic]"

    const-string v25, "==========ANIMATION_ROTATE_SELF_NEXT"

    invoke-static/range {v24 .. v25}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    #calls: Lcom/htc/music/HtcMusic;->onAnimationRotateSelf(Z)V
    invoke-static/range {v24 .. v25}, Lcom/htc/music/HtcMusic;->access$7800(Lcom/htc/music/HtcMusic;Z)V

    goto/16 :goto_0

    .line 5111
    :cond_22
    const-string v24, "com.htc.music.rotatecircle_previous"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_23

    .line 5113
    const-string v24, "[HtcMusic]"

    const-string v25, "==========ANIMATION_ROTATE_SELF_PREV"

    invoke-static/range {v24 .. v25}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    #calls: Lcom/htc/music/HtcMusic;->onAnimationRotateSelf(Z)V
    invoke-static/range {v24 .. v25}, Lcom/htc/music/HtcMusic;->access$7800(Lcom/htc/music/HtcMusic;Z)V

    goto/16 :goto_0

    .line 5115
    :cond_23
    const-string v24, "com.htc.music.rotatequickly"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_24

    .line 5116
    const-string v24, "[HtcMusic]"

    const-string v25, "==========ANIMATION_ROTATE_CIRCLE_QUICK"

    invoke-static/range {v24 .. v25}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5117
    :cond_24
    const-string v24, "com.htc.music.queuechanged"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_27

    .line 5118
    const-string v24, "[HtcMusic]"

    const-string v25, "==========QUEUE_CHANGED"

    invoke-static/range {v24 .. v25}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/HtcMusic;->access$5700(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;

    move-result-object v24

    if-eqz v24, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/HtcMusic;->access$5700(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;

    move-result-object v24

    const/16 v25, 0xa

    invoke-virtual/range {v24 .. v25}, Lcom/htc/music/HtcMusic$NonUiHandler;->hasMessages(I)Z

    move-result v24

    if-eqz v24, :cond_25

    .line 5121
    const-string v24, "[HtcMusic]"

    const-string v25, "remove message PLAY_ALBUM since QUEUE_CHANGED"

    invoke-static/range {v24 .. v25}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/HtcMusic;->access$5700(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;

    move-result-object v24

    const/16 v25, 0xa

    invoke-virtual/range {v24 .. v25}, Lcom/htc/music/HtcMusic$NonUiHandler;->removeMessages(I)V

    .line 5125
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v24, v0

    if-eqz v24, :cond_26

    .line 5127
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/htc/music/IMediaPlaybackService;->getQueueSize()I

    move-result v18

    .line 5128
    .local v18, queueSize:I
    if-gtz v18, :cond_26

    .line 5129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/HtcMusic;->access$5700(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;

    move-result-object v24

    if-eqz v24, :cond_26

    .line 5130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/HtcMusic;->access$5700(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;

    move-result-object v24

    const/16 v25, 0x6

    invoke-virtual/range {v24 .. v25}, Lcom/htc/music/HtcMusic$NonUiHandler;->removeMessages(I)V

    .line 5131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/HtcMusic;->access$5700(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;

    move-result-object v24

    const/16 v25, 0x6

    invoke-virtual/range {v24 .. v25}, Lcom/htc/music/HtcMusic$NonUiHandler;->sendEmptyMessage(I)Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_7

    .line 5140
    .end local v18           #queueSize:I
    :cond_26
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    #calls: Lcom/htc/music/HtcMusic;->updateGlider()V
    invoke-static/range {v24 .. v24}, Lcom/htc/music/HtcMusic;->access$7900(Lcom/htc/music/HtcMusic;)V

    .line 5141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/HtcMusic;->access$5700(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;

    move-result-object v24

    const/16 v25, 0x7

    invoke-virtual/range {v24 .. v25}, Lcom/htc/music/HtcMusic$NonUiHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 5135
    :catch_7
    move-exception v8

    .line 5136
    .restart local v8       #e:Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_9

    .line 5142
    .end local v8           #e:Landroid/os/RemoteException;
    :cond_27
    const-string v24, "com.htc.music.shuffle"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_28

    .line 5143
    const-string v24, "[HtcMusic]"

    const-string v25, "==========ANIMATION_SHUFFLE "

    invoke-static/range {v24 .. v25}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1

    .line 5146
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1

    .line 5147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/htc/music/IMediaPlaybackService;->startAnimation()V

    .line 5148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v25, v0

    #calls: Lcom/htc/music/HtcMusic;->getAlbumQueuePosition()I
    invoke-static/range {v25 .. v25}, Lcom/htc/music/HtcMusic;->access$8000(Lcom/htc/music/HtcMusic;)I

    move-result v25

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setSelection(IZ)V

    .line 5150
    const/16 v24, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/htc/music/IMediaPlaybackService;->getAnimationStatus()Z

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1

    .line 5151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/htc/music/IMediaPlaybackService;->endAnimation()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_8

    goto/16 :goto_0

    .line 5153
    :catch_8
    move-exception v8

    .line 5154
    .restart local v8       #e:Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 5157
    .end local v8           #e:Landroid/os/RemoteException;
    :cond_28
    const-string v24, "com.htc.music.refresh"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_29

    .line 5158
    const-string v24, "[HtcMusic]"

    const-string v25, "==========ANIMATION_REFRESH "

    invoke-static/range {v24 .. v25}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    #calls: Lcom/htc/music/HtcMusic;->animationRefresh()V
    invoke-static/range {v24 .. v24}, Lcom/htc/music/HtcMusic;->access$4000(Lcom/htc/music/HtcMusic;)V

    .line 5160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/HtcMusic;->access$5700(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;

    move-result-object v24

    const/16 v25, 0x7

    invoke-virtual/range {v24 .. v25}, Lcom/htc/music/HtcMusic$NonUiHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 5161
    :cond_29
    const-string v24, "com.htc.music.changeart"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_30

    .line 5162
    const-string v24, "[HtcMusic]"

    const-string v25, "==========ANIMATION_CHANGE_ART "

    invoke-static/range {v24 .. v25}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1

    .line 5165
    const/16 v24, 0x0

    :try_start_c
    invoke-static/range {v24 .. v24}, Lcom/htc/music/util/ProjectSettings;->getEnablePlugin(Landroid/content/Context;)Z

    move-result v24

    if-eqz v24, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z

    move-result v24

    if-eqz v24, :cond_2e

    .line 5167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/htc/music/IMediaPlaybackService;->getAlbumArtPath()Ljava/lang/String;

    move-result-object v23

    .line 5169
    .local v23, temp:Ljava/lang/String;
    const-string v24, "[HtcMusic]"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "getAlbumArt path:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5170
    const-string v24, "[HtcMusic]"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "mLastPluginArtPath = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v26, v0

    #getter for: Lcom/htc/music/HtcMusic;->mLastPluginArtPath:Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Lcom/htc/music/HtcMusic;->access$8100(Lcom/htc/music/HtcMusic;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5172
    const/4 v5, 0x1

    .line 5173
    .local v5, changed:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/HtcMusic;->mLastPluginArtPath:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/HtcMusic;->access$8100(Lcom/htc/music/HtcMusic;)Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_2a

    if-eqz v23, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/HtcMusic;->mLastPluginArtPath:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/HtcMusic;->access$8100(Lcom/htc/music/HtcMusic;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2a

    .line 5175
    const/4 v5, 0x0

    .line 5178
    :cond_2a
    if-eqz v5, :cond_1

    .line 5179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    #setter for: Lcom/htc/music/HtcMusic;->mLastPluginArtPath:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/music/HtcMusic;->access$8102(Lcom/htc/music/HtcMusic;Ljava/lang/String;)Ljava/lang/String;

    .line 5180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/htc/music/IMediaPlaybackService;->getAlbumQueuePosition()I

    move-result v14

    .line 5182
    .restart local v14       #nSelectPos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/HtcMusic;->access$6400(Lcom/htc/music/HtcMusic;)Lcom/htc/music/GliderAdapter;

    move-result-object v24

    if-eqz v24, :cond_2c

    .line 5184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/htc/music/IMediaPlaybackService;->isDmcOrPushMode()Z

    move-result v24

    if-eqz v24, :cond_2b

    .line 5185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/HtcMusic;->access$6400(Lcom/htc/music/HtcMusic;)Lcom/htc/music/GliderAdapter;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/htc/music/GliderAdapter;->clearAllCache()V

    .line 5186
    const/4 v14, 0x0

    .line 5188
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/HtcMusic;->access$6400(Lcom/htc/music/HtcMusic;)Lcom/htc/music/GliderAdapter;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Lcom/htc/music/GliderAdapter;->requestAllBitmap(I)V

    .line 5191
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-object/from16 v24, v0

    if-eqz v24, :cond_2d

    .line 5192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v14, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setSelection(IZ)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_9

    goto/16 :goto_0

    .line 5210
    .end local v5           #changed:Z
    .end local v14           #nSelectPos:I
    .end local v23           #temp:Ljava/lang/String;
    :catch_9
    move-exception v8

    .line 5211
    .restart local v8       #e:Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 5194
    .end local v8           #e:Landroid/os/RemoteException;
    .restart local v5       #changed:Z
    .restart local v14       #nSelectPos:I
    .restart local v23       #temp:Ljava/lang/String;
    :cond_2d
    :try_start_d
    const-string v24, "[HtcMusic]"

    const-string v25, "mPresentation is null when ANIMATION_CHANGE_ART"

    invoke-static/range {v24 .. v25}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5200
    .end local v5           #changed:Z
    .end local v14           #nSelectPos:I
    .end local v23           #temp:Ljava/lang/String;
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/htc/music/IMediaPlaybackService;->getAlbumQueuePosition()I

    move-result v19

    .line 5203
    .local v19, selectedPos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-object/from16 v24, v0

    if-eqz v24, :cond_2f

    .line 5204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v19

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setSelection(IZ)V

    goto/16 :goto_0

    .line 5206
    :cond_2f
    const-string v24, "[HtcMusic]"

    const-string v25, "mPresentation is null when ANIMATION_CHANGE_ART"

    invoke-static/range {v24 .. v25}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_9

    goto/16 :goto_0

    .line 5214
    .end local v19           #selectedPos:I
    :cond_30
    const-string v24, "com.htc.music.onerror"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_36

    .line 5215
    const-string v24, "[HtcMusic]"

    const-string v25, "==========OS_ON_ERROR "

    invoke-static/range {v24 .. v25}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5216
    const-string v24, "error_id"

    const/16 v25, -0x2710

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 5218
    .local v9, errorId:I
    const/16 v24, -0x2710

    move/from16 v0, v24

    if-eq v9, v0, :cond_31

    .line 5219
    const-string v24, "[HtcMusic]"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "error id = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    #calls: Lcom/htc/music/HtcMusic;->handleDMCError(I)V
    invoke-static {v0, v9}, Lcom/htc/music/HtcMusic;->access$8200(Lcom/htc/music/HtcMusic;I)V

    goto/16 :goto_0

    .line 5221
    :cond_31
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isPluginMode()Z

    move-result v24

    if-eqz v24, :cond_35

    .line 5223
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v24, v0

    if-eqz v24, :cond_32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/htc/music/IMediaPlaybackService;->isDmcOrPushMode()Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_a

    move-result v24

    if-nez v24, :cond_1

    .line 5229
    :cond_32
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/htc/music/HtcMusic;->finish()V

    .line 5230
    new-instance v22, Landroid/content/Intent;

    invoke-direct/range {v22 .. v22}, Landroid/content/Intent;-><init>()V

    .line 5231
    .local v22, targetIntent:Landroid/content/Intent;
    const/high16 v24, 0x1400

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    const-class v25, Lcom/htc/music/MediaPlaybackErrorActivity;

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 5235
    const-string v24, "pluginmode"

    const/16 v25, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5236
    const-string v24, "errorcause"

    const-string v25, "message"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5239
    const/16 v20, 0x0

    .line 5240
    .local v20, szCurPluginName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v24, v0

    if-eqz v24, :cond_33

    .line 5242
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v24, v0

    const/16 v25, -0x1

    invoke-interface/range {v24 .. v25}, Lcom/htc/music/IMediaPlaybackService;->getPluginName(I)Ljava/lang/String;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_b

    move-result-object v20

    .line 5247
    :cond_33
    :goto_b
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_34

    .line 5248
    const-string v24, ".DMCMusicPlaybackService"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_34

    .line 5249
    const-string v24, "[HtcMusic]"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "DMC Error:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "message"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5225
    .end local v20           #szCurPluginName:Ljava/lang/String;
    .end local v22           #targetIntent:Landroid/content/Intent;
    :catch_a
    move-exception v10

    .line 5226
    .local v10, ex:Landroid/os/RemoteException;
    const-string v24, "[HtcMusic]"

    const-string v25, "Remote Exception in OS_ON_ERROR"

    invoke-static/range {v24 .. v25}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 5243
    .end local v10           #ex:Landroid/os/RemoteException;
    .restart local v20       #szCurPluginName:Ljava/lang/String;
    .restart local v22       #targetIntent:Landroid/content/Intent;
    :catch_b
    move-exception v8

    .line 5244
    .restart local v8       #e:Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_b

    .line 5255
    .end local v8           #e:Landroid/os/RemoteException;
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->startActivity(Landroid/content/Intent;)V

    .line 5256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Lcom/htc/music/HtcMusic;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 5258
    .end local v20           #szCurPluginName:Ljava/lang/String;
    .end local v22           #targetIntent:Landroid/content/Intent;
    :cond_35
    const-string v24, "[HtcMusic]"

    const-string v25, "Something error, we don\'t handle this intent action in local player."

    invoke-static/range {v24 .. v25}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5261
    .end local v9           #errorId:I
    :cond_36
    const-string v24, "com.broadcom.bluetooth.avrcp"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_38

    .line 5262
    const-string v24, "name"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v25, "RefreshUI"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1

    .line 5263
    const-string v24, "controls"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 5265
    .local v6, controls:Ljava/lang/String;
    const-string v24, "shuffle"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_37

    .line 5266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    #calls: Lcom/htc/music/HtcMusic;->setShuffleButtonImage()V
    invoke-static/range {v24 .. v24}, Lcom/htc/music/HtcMusic;->access$5800(Lcom/htc/music/HtcMusic;)V

    goto/16 :goto_0

    .line 5267
    :cond_37
    const-string v24, "repeat"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_1

    .line 5268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    #calls: Lcom/htc/music/HtcMusic;->setRepeatButtonImage()V
    invoke-static/range {v24 .. v24}, Lcom/htc/music/HtcMusic;->access$5900(Lcom/htc/music/HtcMusic;)V

    goto/16 :goto_0

    .line 5270
    .end local v6           #controls:Ljava/lang/String;
    :cond_38
    const-string v24, "com.htc.music.pluginservicebinded"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_39

    .line 5271
    const-string v24, "[HtcMusic]"

    const-string v25, "mStatusListener, Receive PLUGIN_SERVICE_BINDED"

    invoke-static/range {v24 .. v25}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/HtcMusic;->access$5700(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;

    move-result-object v24

    if-eqz v24, :cond_1

    .line 5273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/HtcMusic;->access$5700(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;

    move-result-object v24

    const/16 v25, 0x7

    invoke-virtual/range {v24 .. v25}, Lcom/htc/music/HtcMusic$NonUiHandler;->removeMessages(I)V

    .line 5274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/HtcMusic;->access$5700(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;

    move-result-object v24

    const/16 v25, 0x7

    invoke-virtual/range {v24 .. v25}, Lcom/htc/music/HtcMusic$NonUiHandler;->sendEmptyMessage(I)Z

    .line 5275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/HtcMusic;->access$5700(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;

    move-result-object v24

    const/16 v25, 0x4

    invoke-virtual/range {v24 .. v25}, Lcom/htc/music/HtcMusic$NonUiHandler;->removeMessages(I)V

    .line 5276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$27;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/HtcMusic;->access$5700(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;

    move-result-object v24

    const/16 v25, 0x4

    invoke-virtual/range {v24 .. v25}, Lcom/htc/music/HtcMusic$NonUiHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 5279
    :cond_39
    const-string v24, "[HtcMusic]"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Unknown action = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
