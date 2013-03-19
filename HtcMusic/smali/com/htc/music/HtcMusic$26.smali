.class Lcom/htc/music/HtcMusic$26;
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
    .line 4737
    iput-object p1, p0, Lcom/htc/music/HtcMusic$26;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v11, 0x1

    .line 4740
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 4741
    .local v1, action:Ljava/lang/String;
    const-string v8, "com.htc.music.dmcservice.released"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 4742
    const-string v8, "[HtcMusic]"

    const-string v9, "==========DMCSERVICE_RELEASED +"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4743
    iget-object v8, p0, Lcom/htc/music/HtcMusic$26;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v8, p2}, Lcom/htc/music/HtcMusic;->CheckDLNAMode(Landroid/content/Intent;)V

    .line 4746
    iget-object v8, p0, Lcom/htc/music/HtcMusic$26;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mDlnaMode:I
    invoke-static {v8}, Lcom/htc/music/HtcMusic;->access$5600(Lcom/htc/music/HtcMusic;)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 4838
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/htc/music/HtcMusic$26;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->animationRefresh()V
    invoke-static {v8}, Lcom/htc/music/HtcMusic;->access$4000(Lcom/htc/music/HtcMusic;)V

    .line 4839
    iget-object v8, p0, Lcom/htc/music/HtcMusic$26;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;
    invoke-static {v8}, Lcom/htc/music/HtcMusic;->access$5700(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;

    move-result-object v8

    const/4 v9, 0x7

    invoke-virtual {v8, v9}, Lcom/htc/music/HtcMusic$NonUiHandler;->sendEmptyMessage(I)Z

    .line 4840
    iget-object v8, p0, Lcom/htc/music/HtcMusic$26;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/htc/music/HtcMusic;->access$1200(Lcom/htc/music/HtcMusic;)Landroid/os/Handler;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 4841
    iget-object v8, p0, Lcom/htc/music/HtcMusic$26;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/htc/music/HtcMusic;->access$1200(Lcom/htc/music/HtcMusic;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0xc

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4842
    :cond_1
    const-string v8, "[HtcMusic]"

    const-string v9, "==========DMCSERVICE_RELEASED -"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4843
    iget-object v8, p0, Lcom/htc/music/HtcMusic$26;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->setShuffleButtonImage()V
    invoke-static {v8}, Lcom/htc/music/HtcMusic;->access$5800(Lcom/htc/music/HtcMusic;)V

    .line 4844
    iget-object v8, p0, Lcom/htc/music/HtcMusic$26;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->setRepeatButtonImage()V
    invoke-static {v8}, Lcom/htc/music/HtcMusic;->access$5900(Lcom/htc/music/HtcMusic;)V

    .line 4855
    :cond_2
    :goto_1
    return-void

    .line 4749
    :pswitch_0
    :try_start_0
    iget-object v8, p0, Lcom/htc/music/HtcMusic$26;->this$0:Lcom/htc/music/HtcMusic;

    const-string v9, "DLNA"

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lcom/htc/music/HtcMusic;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 4751
    .local v7, pref:Landroid/content/SharedPreferences;
    const-string v8, "content"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4752
    .local v3, content:Ljava/lang/String;
    const-string v8, "switchLocal"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 4756
    .local v2, bSwitch:Z
    const-string v8, "[Test]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bSwitch:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4759
    if-ne v2, v11, :cond_3

    if-eqz v3, :cond_3

    iget-object v8, p0, Lcom/htc/music/HtcMusic$26;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v8, v8, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v8, :cond_3

    .line 4760
    iget-object v8, p0, Lcom/htc/music/HtcMusic$26;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v8, v8, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v8}, Lcom/htc/music/IMediaPlaybackService;->stopActivePlugin()V

    .line 4761
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 4762
    .local v6, index:I
    const-string v8, "[HtcMusic]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DLNA_LOCAL - index from DMC = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4765
    iget-object v8, p0, Lcom/htc/music/HtcMusic$26;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v8, v8, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v8, v6}, Lcom/htc/music/IMediaPlaybackService;->setQueuePosition(I)V

    .line 4766
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "content"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "switchLocal"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4769
    const-string v8, "[HtcMusic]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "update index to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 4775
    .end local v2           #bSwitch:Z
    .end local v3           #content:Ljava/lang/String;
    .end local v6           #index:I
    .end local v7           #pref:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v4

    .line 4776
    .local v4, e:Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 4773
    .end local v4           #e:Landroid/os/RemoteException;
    .restart local v2       #bSwitch:Z
    .restart local v3       #content:Ljava/lang/String;
    .restart local v7       #pref:Landroid/content/SharedPreferences;
    :cond_3
    :try_start_1
    const-string v8, "[HtcMusic]"

    const-string v9, "mService maybe null mService or content is null"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 4781
    .end local v2           #bSwitch:Z
    .end local v3           #content:Ljava/lang/String;
    .end local v7           #pref:Landroid/content/SharedPreferences;
    :pswitch_1
    iget-object v8, p0, Lcom/htc/music/HtcMusic$26;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v8, v8, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v8, :cond_4

    .line 4782
    const-string v8, "[HtcMusic]"

    const-string v9, "mService is null swith to DMP returned"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4786
    :cond_4
    :try_start_2
    const-string v8, "[HtcMusic]"

    const-string v9, "bind DMP service"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4787
    iget-object v8, p0, Lcom/htc/music/HtcMusic$26;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v8, v8, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const-string v9, "com.htc.music.DMPMusicPlaybackService"

    invoke-interface {v8, v9}, Lcom/htc/music/IMediaPlaybackService;->bindPluginService(Ljava/lang/String;)V

    .line 4789
    iget-object v8, p0, Lcom/htc/music/HtcMusic$26;->this$0:Lcom/htc/music/HtcMusic;

    const-string v9, "DLNA"

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lcom/htc/music/HtcMusic;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 4791
    .restart local v7       #pref:Landroid/content/SharedPreferences;
    const-string v8, "switchDMP"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 4794
    .local v0, Switch:Z
    if-eqz v0, :cond_0

    .line 4795
    iget-object v8, p0, Lcom/htc/music/HtcMusic$26;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v8, v8, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v8}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 4796
    iget-object v8, p0, Lcom/htc/music/HtcMusic$26;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v8, v8, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v8}, Lcom/htc/music/IMediaPlaybackService;->pause()V

    .line 4798
    :cond_5
    new-instance v5, Landroid/content/Intent;

    iget-object v8, p0, Lcom/htc/music/HtcMusic$26;->this$0:Lcom/htc/music/HtcMusic;

    const-class v9, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-direct {v5, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4800
    .local v5, i:Landroid/content/Intent;
    const-string v8, "command"

    const-string v9, "com.htc.music.refreshplaylist"

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4803
    const-string v8, "server"

    const-string v9, "Server"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4805
    const-string v8, "container"

    const-string v9, "container"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4807
    const-string v8, "content"

    const-string v9, "content"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4809
    const-string v8, "startIdx"

    const-string v9, "startIdx"

    const-wide/16 v10, -0x1

    invoke-virtual {p2, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    invoke-virtual {v5, v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4811
    const-string v8, "endIdx"

    const-string v9, "endIdx"

    const-wide/16 v10, -0x1

    invoke-virtual {p2, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    invoke-virtual {v5, v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4813
    const-string v8, "direction"

    const-string v9, "direction"

    const-wide/16 v10, 0x1

    invoke-virtual {p2, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    invoke-virtual {v5, v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4815
    const-string v8, "dmsFilePath"

    const-string v9, "filepath"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4819
    iget-object v8, p0, Lcom/htc/music/HtcMusic$26;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v8, v5}, Lcom/htc/music/HtcMusic;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 4820
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "switchDMP"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 4824
    .end local v0           #Switch:Z
    .end local v5           #i:Landroid/content/Intent;
    .end local v7           #pref:Landroid/content/SharedPreferences;
    :catch_1
    move-exception v4

    .line 4825
    .restart local v4       #e:Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 4845
    .end local v4           #e:Landroid/os/RemoteException;
    :cond_6
    const-string v8, "com.htc.music.dmcservice.repeat_changed"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 4846
    const-string v8, "[HtcMusic]"

    const-string v9, "==========DMCSERVICE_REPEAT_CHANGED - "

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4847
    iget-object v8, p0, Lcom/htc/music/HtcMusic$26;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->setRepeatButtonImage()V
    invoke-static {v8}, Lcom/htc/music/HtcMusic;->access$5900(Lcom/htc/music/HtcMusic;)V

    goto/16 :goto_1

    .line 4848
    :cond_7
    const-string v8, "com.htc.music.dmcservice.shuffle_changed"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 4849
    const-string v8, "[HtcMusic]"

    const-string v9, "==========DMCSERVICE_SHUFFLE_CHANGED - "

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4850
    iget-object v8, p0, Lcom/htc/music/HtcMusic$26;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->setShuffleButtonImage()V
    invoke-static {v8}, Lcom/htc/music/HtcMusic;->access$5800(Lcom/htc/music/HtcMusic;)V

    goto/16 :goto_1

    .line 4851
    :cond_8
    const-string v8, "com.htc.music.dmcservice.dlna_connected"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 4852
    iget-object v8, p0, Lcom/htc/music/HtcMusic$26;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->setRepeatButtonImage()V
    invoke-static {v8}, Lcom/htc/music/HtcMusic;->access$5900(Lcom/htc/music/HtcMusic;)V

    .line 4853
    iget-object v8, p0, Lcom/htc/music/HtcMusic$26;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->setShuffleButtonImage()V
    invoke-static {v8}, Lcom/htc/music/HtcMusic;->access$5800(Lcom/htc/music/HtcMusic;)V

    goto/16 :goto_1

    .line 4746
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
