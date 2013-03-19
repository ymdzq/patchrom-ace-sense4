.class Lcom/htc/music/carmode/CarNowPlayingActivity$9;
.super Landroid/content/BroadcastReceiver;
.source "CarNowPlayingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/carmode/CarNowPlayingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1022
    iput-object p1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v7, 0x12

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1026
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1027
    .local v0, action:Ljava/lang/String;
    const-string v5, "com.htc.music.metachanged"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1028
    const-string v5, "[CarNowPlayingActivity]"

    const-string v6, "received ======== META_CHANGED"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    iget-object v5, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->updateTrackInfo()V
    invoke-static {v5}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1300(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    .line 1030
    iget-object v5, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->updateTrackTime()V
    invoke-static {v5}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1400(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    .line 1032
    const-string v5, "current_playing_pos"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1034
    .local v3, nSelectPos:I
    iget-object v5, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;
    invoke-static {v5}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1500(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/music/carmode/CarGliderAdapter;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;
    invoke-static {v5}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1600(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-result-object v5

    if-nez v5, :cond_1

    .line 1120
    .end local v3           #nSelectPos:I
    :cond_0
    :goto_0
    return-void

    .line 1036
    .restart local v3       #nSelectPos:I
    :cond_1
    if-ltz v3, :cond_2

    iget-object v5, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;
    invoke-static {v5}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1500(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/music/carmode/CarGliderAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/music/carmode/CarGliderAdapter;->getItemCount()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 1038
    iget-object v5, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;
    invoke-static {v5}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1600(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setSelection(IZ)V

    goto :goto_0

    .line 1040
    :cond_2
    iget-object v5, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;
    invoke-static {v5}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1600(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-result-object v5

    invoke-virtual {v5, v4, v4}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setSelection(IZ)V

    goto :goto_0

    .line 1045
    .end local v3           #nSelectPos:I
    :cond_3
    const-string v5, "com.htc.music.playbackcomplete"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1047
    const-string v4, "[CarNowPlayingActivity]"

    const-string v5, "received ======== PLAYBACK_COMPLETE"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->updatePlayState()V
    invoke-static {v4}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1700(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    goto :goto_0

    .line 1049
    :cond_4
    const-string v5, "com.htc.music.playstatechanged"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1050
    const-string v4, "[CarNowPlayingActivity]"

    const-string v5, "received ======== PLAYSTATE_CHANGE"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->updateTrackTime()V
    invoke-static {v4}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1400(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    .line 1052
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->updatePlayState()V
    invoke-static {v4}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1700(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    goto :goto_0

    .line 1053
    :cond_5
    const-string v5, "com.htc.music.queuechanged"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1054
    const-string v4, "[CarNowPlayingActivity]"

    const-string v5, "received ======== QUEUE_CHANGED"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;
    invoke-static {v4}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$200(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;
    invoke-static {v4}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$200(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1057
    const-string v4, "[CarNowPlayingActivity]"

    const-string v5, "remove message PLAY_ALBUM since QUEUE_CHANGED"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;
    invoke-static {v4}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$200(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->removeMessages(I)V

    .line 1061
    :cond_6
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->updateGlider()V
    invoke-static {v4}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1800(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    .line 1062
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->updateTrackInfo()V
    invoke-static {v4}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1300(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    goto/16 :goto_0

    .line 1063
    :cond_7
    const-string v5, "com.htc.music.rotateright"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1064
    const-string v5, "[CarNowPlayingActivity]"

    const-string v6, "received ==========ANIMATION_MOVE_NEXT"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    iget-object v5, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderState:I
    invoke-static {v5}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1900(Lcom/htc/music/carmode/CarNowPlayingActivity;)I

    move-result v5

    if-ne v5, v7, :cond_8

    iget-object v5, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;
    invoke-static {v5}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1600(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 1066
    .local v1, bAnimated:Z
    :goto_1
    if-nez v1, :cond_9

    .line 1067
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->skipAnimation()V
    invoke-static {v4}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$2000(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    goto/16 :goto_0

    .end local v1           #bAnimated:Z
    :cond_8
    move v1, v4

    .line 1065
    goto :goto_1

    .line 1071
    .restart local v1       #bAnimated:Z
    :cond_9
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;
    invoke-static {v4}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$200(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1072
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;
    invoke-static {v4}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$200(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    move-result-object v4

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1074
    .end local v1           #bAnimated:Z
    :cond_a
    const-string v5, "com.htc.music.rotateleft"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1075
    const-string v5, "[CarNowPlayingActivity]"

    const-string v6, "received ==========ANIMATION_MOVE_PREV"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    iget-object v5, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderState:I
    invoke-static {v5}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1900(Lcom/htc/music/carmode/CarNowPlayingActivity;)I

    move-result v5

    if-ne v5, v7, :cond_b

    iget-object v5, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;
    invoke-static {v5}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1600(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 1077
    .restart local v1       #bAnimated:Z
    :goto_2
    if-nez v1, :cond_c

    .line 1078
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->skipAnimation()V
    invoke-static {v4}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$2000(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    goto/16 :goto_0

    .end local v1           #bAnimated:Z
    :cond_b
    move v1, v4

    .line 1076
    goto :goto_2

    .line 1082
    .restart local v1       #bAnimated:Z
    :cond_c
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;
    invoke-static {v4}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$200(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1083
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;
    invoke-static {v4}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$200(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    move-result-object v4

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1087
    .end local v1           #bAnimated:Z
    :cond_d
    const-string v5, "com.htc.music.refresh"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1088
    const-string v4, "[CarNowPlayingActivity]"

    const-string v5, "received ==========ANIMATION_REFRESH"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->animationRefresh()V
    invoke-static {v4}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$2100(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    .line 1090
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->updateTrackInfo()V
    invoke-static {v4}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1300(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    goto/16 :goto_0

    .line 1093
    :cond_e
    const-string v5, "com.htc.music.asyncopen"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1094
    iget-object v5, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #setter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mIsOnlineLoading:Z
    invoke-static {v5, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$2202(Lcom/htc/music/carmode/CarNowPlayingActivity;Z)Z

    .line 1095
    iget-object v5, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->showDownloadProgressDialog(Z)V
    invoke-static {v5, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$2300(Lcom/htc/music/carmode/CarNowPlayingActivity;Z)V

    .line 1096
    iget-object v5, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mPauseButton:Lcom/htc/widget/HtcRimImageButton;
    invoke-static {v5}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$2400(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/widget/HtcRimImageButton;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/htc/widget/HtcRimImageButton;->setEnabled(Z)V

    .line 1097
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    iget-object v5, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    invoke-static {v5}, Lcom/htc/music/online/Util;->checkNetworkAvailableWithDialog(Landroid/content/Context;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v5

    #setter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mNoNetworkDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v4, v5}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$2502(Lcom/htc/music/carmode/CarNowPlayingActivity;Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;

    .line 1098
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mNoNetworkDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v4}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$2500(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1099
    invoke-static {v1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$2602(Z)Z

    goto/16 :goto_0

    .line 1101
    :cond_f
    const-string v5, "com.htc.music.asyncopencomplete"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1102
    iget-object v5, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #setter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mIsOnlineLoading:Z
    invoke-static {v5, v4}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$2202(Lcom/htc/music/carmode/CarNowPlayingActivity;Z)Z

    .line 1103
    iget-object v5, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->showDownloadProgressDialog(Z)V
    invoke-static {v5, v4}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$2300(Lcom/htc/music/carmode/CarNowPlayingActivity;Z)V

    .line 1104
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mPauseButton:Lcom/htc/widget/HtcRimImageButton;
    invoke-static {v4}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$2400(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/widget/HtcRimImageButton;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/htc/widget/HtcRimImageButton;->setEnabled(Z)V

    .line 1105
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->setPauseButtonImage()V
    invoke-static {v4}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$2700(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    .line 1106
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    iget-object v4, v4, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v4, :cond_0

    .line 1108
    :try_start_0
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    iget-object v5, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    iget-object v5, v5, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/htc/music/IMediaPlaybackService;->duration()J

    move-result-wide v5

    #setter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mTotalTime:J
    invoke-static {v4, v5, v6}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$2802(Lcom/htc/music/carmode/CarNowPlayingActivity;J)J

    .line 1109
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->refreshTrackTime()V
    invoke-static {v4}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$2900(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1110
    :catch_0
    move-exception v2

    .line 1111
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 1114
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_10
    const-string v4, "com.htc.music.timeout"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1115
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    invoke-static {v4}, Lcom/htc/music/online/Util;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1116
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->timeoutAction()V
    invoke-static {v4}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$3000(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    goto/16 :goto_0
.end method
