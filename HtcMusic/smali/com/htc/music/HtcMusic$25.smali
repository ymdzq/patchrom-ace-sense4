.class Lcom/htc/music/HtcMusic$25;
.super Landroid/os/Handler;
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
    .line 4515
    iput-object p1, p0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    .line 4518
    iget v11, p1, Landroid/os/Message;->what:I

    sparse-switch v11, :sswitch_data_0

    .line 4697
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 4528
    :sswitch_1
    iget-object v11, p0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->initialUI()V
    invoke-static {v11}, Lcom/htc/music/HtcMusic;->access$3900(Lcom/htc/music/HtcMusic;)V

    goto :goto_0

    .line 4532
    :sswitch_2
    iget-object v11, p0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->animationRefresh()V
    invoke-static {v11}, Lcom/htc/music/HtcMusic;->access$4000(Lcom/htc/music/HtcMusic;)V

    goto :goto_0

    .line 4536
    :sswitch_3
    iget-object v11, p0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->refreshNow()J
    invoke-static {v11}, Lcom/htc/music/HtcMusic;->access$1500(Lcom/htc/music/HtcMusic;)J

    move-result-wide v7

    .line 4537
    .local v7, next:J
    iget-object v11, p0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->queueNextRefresh(J)V
    invoke-static {v11, v7, v8}, Lcom/htc/music/HtcMusic;->access$4100(Lcom/htc/music/HtcMusic;J)V

    goto :goto_0

    .line 4545
    .end local v7           #next:J
    :sswitch_4
    new-instance v11, Landroid/app/AlertDialog$Builder;

    iget-object v12, p0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct {v11, v12}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v12, 0x7f070060

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f070061

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x2040151

    new-instance v13, Lcom/htc/music/HtcMusic$25$1;

    invoke-direct {v13, p0}, Lcom/htc/music/HtcMusic$25$1;-><init>(Lcom/htc/music/HtcMusic$25;)V

    invoke-virtual {v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 4558
    :sswitch_5
    iget-object v11, p0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mSoundEffectAdapter:Lcom/htc/music/widget/SoundEffectAdapter;
    invoke-static {v11}, Lcom/htc/music/HtcMusic;->access$4200(Lcom/htc/music/HtcMusic;)Lcom/htc/music/widget/SoundEffectAdapter;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 4559
    iget-object v11, p0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mSoundEffectAdapter:Lcom/htc/music/widget/SoundEffectAdapter;
    invoke-static {v11}, Lcom/htc/music/HtcMusic;->access$4200(Lcom/htc/music/HtcMusic;)Lcom/htc/music/widget/SoundEffectAdapter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/htc/music/widget/SoundEffectAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 4566
    :sswitch_6
    invoke-static {}, Lcom/htc/music/util/SoundEffectHelper;->getDefaultEffectType()I

    move-result v2

    .line 4567
    .local v2, effectType:I
    invoke-static {}, Lcom/htc/music/util/SoundEffectHelper;->getDefaultEffectStr()Ljava/lang/String;

    move-result-object v1

    .line 4569
    .local v1, effectStr:Ljava/lang/String;
    invoke-static {}, Lcom/htc/music/util/HdmiPlugReceiver;->isHDMIConnected()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 4570
    sget v2, Lcom/htc/music/util/SoundEffectHelper;->Original:I

    .line 4571
    const-string v1, "Original"

    .line 4574
    :cond_1
    iget-object v11, p0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v11}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v12, v12, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-static {v11, v12, v2}, Lcom/htc/music/util/SoundEffectHelper;->setAudioEffectStyleByIndex(Landroid/content/Context;Lcom/htc/music/IMediaPlaybackService;I)V

    .line 4577
    iget v10, p1, Landroid/os/Message;->arg2:I

    .line 4578
    .local v10, recover:I
    const/4 v11, 0x1

    if-ne v11, v10, :cond_2

    .line 4581
    iget-object v11, p0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    #setter for: Lcom/htc/music/HtcMusic;->mCurrentSoundEffectIndicatorType:I
    invoke-static {v11, v2}, Lcom/htc/music/HtcMusic;->access$4302(Lcom/htc/music/HtcMusic;I)I

    .line 4582
    iget-object v11, p0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    #setter for: Lcom/htc/music/HtcMusic;->nowHWAudioSetting:Ljava/lang/String;
    invoke-static {v11, v1}, Lcom/htc/music/HtcMusic;->access$4402(Lcom/htc/music/HtcMusic;Ljava/lang/String;)Ljava/lang/String;

    .line 4585
    :cond_2
    iget v11, p1, Landroid/os/Message;->arg1:I

    if-eqz v11, :cond_0

    .line 4587
    iget-object v11, p0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    iget v12, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/htc/music/HtcMusic;->showToast(I)V
    invoke-static {v11, v12}, Lcom/htc/music/HtcMusic;->access$4500(Lcom/htc/music/HtcMusic;I)V

    goto/16 :goto_0

    .line 4592
    .end local v1           #effectStr:Ljava/lang/String;
    .end local v2           #effectType:I
    .end local v10           #recover:I
    :sswitch_7
    const-string v11, "[HtcMusic]"

    const-string v12, "msg.what = START_ENHANCER_SERVICE_ONSTART"

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4593
    iget-object v11, p0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    const-string v12, "action_activity_on_start"

    #calls: Lcom/htc/music/HtcMusic;->startMusicEnhancerService(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/htc/music/HtcMusic;->access$4600(Lcom/htc/music/HtcMusic;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4604
    :sswitch_8
    iget-object v11, p0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v11, v11, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    if-eqz v11, :cond_0

    .line 4605
    iget-object v11, p0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v11, v11, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    invoke-virtual {v11}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;->showContactRingtoneToast()V

    goto/16 :goto_0

    .line 4611
    :sswitch_9
    iget-object v11, p0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v11, v11, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    invoke-virtual {v11}, Lcom/htc/widget/HtcMultiSeekBarDialog;->dismiss()V

    goto/16 :goto_0

    .line 4615
    :sswitch_a
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "TrackName"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4616
    .local v6, mTrack:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "AlbumArtistName"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4617
    .local v4, mAlbumArtist:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "TotalTime"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4618
    .local v5, mTime:Ljava/lang/String;
    iget-object v11, p0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mTrackName:Landroid/widget/TextView;
    invoke-static {v11}, Lcom/htc/music/HtcMusic;->access$4700(Lcom/htc/music/HtcMusic;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4619
    iget-object v11, p0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mAlbumArtistName:Landroid/widget/TextView;
    invoke-static {v11}, Lcom/htc/music/HtcMusic;->access$4800(Lcom/htc/music/HtcMusic;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4621
    if-eqz v5, :cond_0

    iget-object v11, p0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->isOnlineMode()Z
    invoke-static {v11}, Lcom/htc/music/HtcMusic;->access$4900(Lcom/htc/music/HtcMusic;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 4622
    iget-object v11, p0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mTotalTime:Landroid/widget/TextView;
    invoke-static {v11}, Lcom/htc/music/HtcMusic;->access$5000(Lcom/htc/music/HtcMusic;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 4630
    .end local v4           #mAlbumArtist:Ljava/lang/String;
    .end local v5           #mTime:Ljava/lang/String;
    .end local v6           #mTrack:Ljava/lang/String;
    :sswitch_b
    iget-object v11, p0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->updateTitle()V
    invoke-static {v11}, Lcom/htc/music/HtcMusic;->access$2600(Lcom/htc/music/HtcMusic;)V

    goto/16 :goto_0

    .line 4633
    :sswitch_c
    iget-object v11, p0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->refreshNow()J
    invoke-static {v11}, Lcom/htc/music/HtcMusic;->access$1500(Lcom/htc/music/HtcMusic;)J

    goto/16 :goto_0

    .line 4636
    :sswitch_d
    iget-object v11, p0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->changeNowPlayingMode()V
    invoke-static {v11}, Lcom/htc/music/HtcMusic;->access$5100(Lcom/htc/music/HtcMusic;)V

    goto/16 :goto_0

    .line 4641
    :sswitch_e
    iget-object v11, p0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    iget-boolean v11, v11, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v11, v11, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-eqz v11, :cond_3

    .line 4642
    iget-object v11, p0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/htc/music/HtcMusic;->setNowPlayingVisible(Z)V

    .line 4643
    iget-object v11, p0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->updateTitle()V
    invoke-static {v11}, Lcom/htc/music/HtcMusic;->access$2600(Lcom/htc/music/HtcMusic;)V

    .line 4646
    :cond_3
    iget-object v11, p0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-static {v11}, Lcom/htc/music/HtcMusic;->access$5200(Lcom/htc/music/HtcMusic;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    move-result-object v11

    if-eqz v11, :cond_4

    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v11, :cond_4

    .line 4647
    iget-object v11, p0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-static {v11}, Lcom/htc/music/HtcMusic;->access$5200(Lcom/htc/music/HtcMusic;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    move-result-object v12

    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v12, v11}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->saveRenderer(Ljava/lang/String;)Z

    .line 4650
    :cond_4
    const/4 v0, 0x0

    .line 4652
    .local v0, dms:Ljava/lang/String;
    iget-object v11, p0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    const-string v12, "DLNA"

    const/4 v13, 0x7

    invoke-virtual {v11, v12, v13}, Lcom/htc/music/HtcMusic;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 4654
    .local v9, pref:Landroid/content/SharedPreferences;
    const-string v11, "server"

    const/4 v12, 0x0

    invoke-interface {v9, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4656
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 4657
    iget-object v11, p0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v11}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/htc/music/util/MusicUtils;->switchToPUSH(Landroid/content/Context;Z)Z

    .line 4665
    .end local v0           #dms:Ljava/lang/String;
    .end local v9           #pref:Landroid/content/SharedPreferences;
    :goto_1
    :sswitch_f
    iget-object v11, p0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->showGlider()V
    invoke-static {v11}, Lcom/htc/music/HtcMusic;->access$5300(Lcom/htc/music/HtcMusic;)V

    goto/16 :goto_0

    .line 4659
    .restart local v0       #dms:Ljava/lang/String;
    .restart local v9       #pref:Landroid/content/SharedPreferences;
    :cond_5
    iget-object v11, p0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v11}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/htc/music/util/MusicUtils;->switchToDMC(Landroid/content/Context;Z)Z

    goto :goto_1

    .line 4671
    .end local v0           #dms:Ljava/lang/String;
    .end local v9           #pref:Landroid/content/SharedPreferences;
    :sswitch_10
    iget-object v11, p0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->updateLyricView()V
    invoke-static {v11}, Lcom/htc/music/HtcMusic;->access$5400(Lcom/htc/music/HtcMusic;)V

    goto/16 :goto_0

    .line 4676
    :sswitch_11
    iget-object v11, p0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->getLyricsForCurrentMusic()Lcom/htc/music/lyrics/Lyrics;
    invoke-static {v11}, Lcom/htc/music/HtcMusic;->access$3700(Lcom/htc/music/HtcMusic;)Lcom/htc/music/lyrics/Lyrics;

    move-result-object v3

    .line 4677
    .local v3, lyrics:Lcom/htc/music/lyrics/Lyrics;
    iget-object v11, p0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->openLyrics(Lcom/htc/music/lyrics/Lyrics;)Z
    invoke-static {v11, v3}, Lcom/htc/music/HtcMusic;->access$3800(Lcom/htc/music/HtcMusic;Lcom/htc/music/lyrics/Lyrics;)Z

    goto/16 :goto_0

    .line 4518
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_4
        0x5 -> :sswitch_2
        0x8 -> :sswitch_7
        0xb -> :sswitch_a
        0xc -> :sswitch_b
        0xd -> :sswitch_c
        0x33 -> :sswitch_5
        0x34 -> :sswitch_6
        0x66 -> :sswitch_8
        0x6a -> :sswitch_11
        0x6c -> :sswitch_10
        0xc9 -> :sswitch_1
        0x1771 -> :sswitch_9
        0x3a99 -> :sswitch_0
        0x3a9a -> :sswitch_d
        0x3a9b -> :sswitch_e
        0x3a9c -> :sswitch_f
    .end sparse-switch
.end method
