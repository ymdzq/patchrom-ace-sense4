.class Lcom/htc/music/DMCMusicPlaybackService$3;
.super Landroid/os/Handler;
.source "DMCMusicPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/DMCMusicPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/DMCMusicPlaybackService;


# direct methods
.method constructor <init>(Lcom/htc/music/DMCMusicPlaybackService;)V
    .locals 0
    .parameter

    .prologue
    .line 1063
    iput-object p1, p0, Lcom/htc/music/DMCMusicPlaybackService$3;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/16 v1, 0x69

    .line 1066
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1124
    :goto_0
    return-void

    .line 1068
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$3;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mPlayState:I
    invoke-static {v0}, Lcom/htc/music/DMCMusicPlaybackService;->access$1800(Lcom/htc/music/DMCMusicPlaybackService;)I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 1069
    const-string v0, "[DMCMusicPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call play mPlaystate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService$3;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mPlayState:I
    invoke-static {v2}, Lcom/htc/music/DMCMusicPlaybackService;->access$1800(Lcom/htc/music/DMCMusicPlaybackService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    const-string v0, "[DMCMusicPlaybackService]"

    const-string v1, "startPlay()"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$3;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-static {v0}, Lcom/htc/music/DMCMusicPlaybackService;->access$800(Lcom/htc/music/DMCMusicPlaybackService;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1072
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$3;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-static {v0}, Lcom/htc/music/DMCMusicPlaybackService;->access$800(Lcom/htc/music/DMCMusicPlaybackService;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->startPlay()V

    goto :goto_0

    .line 1074
    :cond_0
    const-string v0, "[DMCMusicPlaybackService]"

    const-string v1, "mDLNAManager is null when startPlay()"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1076
    :cond_1
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$3;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #calls: Lcom/htc/music/DMCMusicPlaybackService;->enablePlaybakControl()V
    invoke-static {v0}, Lcom/htc/music/DMCMusicPlaybackService;->access$1900(Lcom/htc/music/DMCMusicPlaybackService;)V

    .line 1077
    const-string v0, "[DMCMusicPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "STATE_PAUSING can not call play STATE : = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService$3;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mPlayState:I
    invoke-static {v2}, Lcom/htc/music/DMCMusicPlaybackService;->access$1800(Lcom/htc/music/DMCMusicPlaybackService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1083
    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$3;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mPlayState:I
    invoke-static {v0}, Lcom/htc/music/DMCMusicPlaybackService;->access$1800(Lcom/htc/music/DMCMusicPlaybackService;)I

    move-result v0

    if-nez v0, :cond_3

    .line 1084
    const-string v0, "[DMCMusicPlaybackService]"

    const-string v1, "call pause"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$3;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-static {v0}, Lcom/htc/music/DMCMusicPlaybackService;->access$800(Lcom/htc/music/DMCMusicPlaybackService;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1086
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$3;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-static {v0}, Lcom/htc/music/DMCMusicPlaybackService;->access$800(Lcom/htc/music/DMCMusicPlaybackService;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->requestPause()V

    goto/16 :goto_0

    .line 1088
    :cond_2
    const-string v0, "[DMCMusicPlaybackService]"

    const-string v1, "mDLNAManager is null when request pause"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1090
    :cond_3
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$3;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #calls: Lcom/htc/music/DMCMusicPlaybackService;->enablePlaybakControl()V
    invoke-static {v0}, Lcom/htc/music/DMCMusicPlaybackService;->access$1900(Lcom/htc/music/DMCMusicPlaybackService;)V

    .line 1091
    const-string v0, "[DMCMusicPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "discard pause can not call pause STATE : = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/DMCMusicPlaybackService$3;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mPlayState:I
    invoke-static {v2}, Lcom/htc/music/DMCMusicPlaybackService;->access$1800(Lcom/htc/music/DMCMusicPlaybackService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1097
    :pswitch_2
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$3;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mPlayState:I
    invoke-static {v0}, Lcom/htc/music/DMCMusicPlaybackService;->access$1800(Lcom/htc/music/DMCMusicPlaybackService;)I

    move-result v0

    if-eq v0, v1, :cond_5

    .line 1098
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$3;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-static {v0}, Lcom/htc/music/DMCMusicPlaybackService;->access$800(Lcom/htc/music/DMCMusicPlaybackService;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1099
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$3;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-static {v0}, Lcom/htc/music/DMCMusicPlaybackService;->access$800(Lcom/htc/music/DMCMusicPlaybackService;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->playNext()V

    .line 1102
    :goto_1
    const-string v0, "[DMCMusicPlaybackService]"

    const-string v1, "call next"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1101
    :cond_4
    const-string v0, "[DMCMusicPlaybackService]"

    const-string v1, "DLNAManager is null in playNext"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1104
    :cond_5
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$3;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #calls: Lcom/htc/music/DMCMusicPlaybackService;->enablePlaybakControl()V
    invoke-static {v0}, Lcom/htc/music/DMCMusicPlaybackService;->access$1900(Lcom/htc/music/DMCMusicPlaybackService;)V

    .line 1105
    const-string v0, "[DMCMusicPlaybackService]"

    const-string v1, "Discard next event"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1111
    :pswitch_3
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$3;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mPlayState:I
    invoke-static {v0}, Lcom/htc/music/DMCMusicPlaybackService;->access$1800(Lcom/htc/music/DMCMusicPlaybackService;)I

    move-result v0

    if-eq v0, v1, :cond_7

    .line 1112
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$3;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-static {v0}, Lcom/htc/music/DMCMusicPlaybackService;->access$800(Lcom/htc/music/DMCMusicPlaybackService;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1113
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$3;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #getter for: Lcom/htc/music/DMCMusicPlaybackService;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-static {v0}, Lcom/htc/music/DMCMusicPlaybackService;->access$800(Lcom/htc/music/DMCMusicPlaybackService;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->playPrevious()V

    .line 1116
    :goto_2
    const-string v0, "[DMCMusicPlaybackService]"

    const-string v1, "call previous"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1115
    :cond_6
    const-string v0, "[DMCMusicPlaybackService]"

    const-string v1, "DLNAManager is null in playPrev"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1118
    :cond_7
    iget-object v0, p0, Lcom/htc/music/DMCMusicPlaybackService$3;->this$0:Lcom/htc/music/DMCMusicPlaybackService;

    #calls: Lcom/htc/music/DMCMusicPlaybackService;->enablePlaybakControl()V
    invoke-static {v0}, Lcom/htc/music/DMCMusicPlaybackService;->access$1900(Lcom/htc/music/DMCMusicPlaybackService;)V

    .line 1119
    const-string v0, "[DMCMusicPlaybackService]"

    const-string v1, "Discard prev event"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1066
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
