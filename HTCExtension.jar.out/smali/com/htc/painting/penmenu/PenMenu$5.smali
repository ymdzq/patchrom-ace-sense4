.class Lcom/htc/painting/penmenu/PenMenu$5;
.super Ljava/lang/Object;
.source "PenMenu.java"

# interfaces
.implements Lcom/htc/painting/penmenu/OnActionPerformListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/penmenu/PenMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/painting/penmenu/PenMenu;


# direct methods
.method constructor <init>(Lcom/htc/painting/penmenu/PenMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 718
    iput-object p1, p0, Lcom/htc/painting/penmenu/PenMenu$5;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionPerform(I)Z
    .locals 7
    .parameter "actionId"

    .prologue
    const/4 v3, 0x0

    .line 721
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 722
    .local v1, startTime:J
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_0

    .line 723
    const-string v4, "PenMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onActionPerform - action id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    :cond_0
    iget-object v4, p0, Lcom/htc/painting/penmenu/PenMenu$5;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v4, v3}, Lcom/htc/painting/penmenu/PenMenu;->setUseTime(Z)Z

    move-result v4

    if-nez v4, :cond_1

    .line 810
    :goto_0
    return v3

    .line 730
    :cond_1
    const/4 v0, 0x0

    .line 732
    .local v0, ignoreCallback:Z
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu$5;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #getter for: Lcom/htc/painting/penmenu/PenMenu;->mOuterActionPerformListener:Lcom/htc/painting/penmenu/OnActionPerformListener;
    invoke-static {v3}, Lcom/htc/painting/penmenu/PenMenu;->access$700(Lcom/htc/painting/penmenu/PenMenu;)Lcom/htc/painting/penmenu/OnActionPerformListener;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 733
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu$5;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #getter for: Lcom/htc/painting/penmenu/PenMenu;->mOuterActionPerformListener:Lcom/htc/painting/penmenu/OnActionPerformListener;
    invoke-static {v3}, Lcom/htc/painting/penmenu/PenMenu;->access$700(Lcom/htc/painting/penmenu/PenMenu;)Lcom/htc/painting/penmenu/OnActionPerformListener;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/htc/painting/penmenu/OnActionPerformListener;->onActionPerform(I)Z

    move-result v0

    .line 734
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_2

    .line 735
    const-string v3, "PenMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onActionPerform - ignore callback: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :cond_2
    sparse-switch p1, :sswitch_data_0

    .line 793
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_3

    .line 794
    const-string v3, "PenMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onActionPerform - unknown action id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    :cond_3
    :goto_1
    const/16 v3, 0x64

    if-eq p1, v3, :cond_4

    const/16 v3, 0x190

    if-eq p1, v3, :cond_4

    const/16 v3, 0x12c

    if-ne p1, v3, :cond_6

    .line 800
    :cond_4
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_5

    .line 801
    const-string v3, "PenMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onActionPerform - getPaintingViewUndoRedo begin: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    :cond_5
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu$5;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #calls: Lcom/htc/painting/penmenu/PenMenu;->getPaintingViewUndoRedo()V
    invoke-static {v3}, Lcom/htc/painting/penmenu/PenMenu;->access$1000(Lcom/htc/painting/penmenu/PenMenu;)V

    .line 805
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_6

    .line 806
    const-string v3, "PenMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onActionPerform - getPaintingViewUndoRedo end: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    :cond_6
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 741
    :sswitch_0
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu$5;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #getter for: Lcom/htc/painting/penmenu/PenMenu;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;
    invoke-static {v3}, Lcom/htc/painting/penmenu/PenMenu;->access$800(Lcom/htc/painting/penmenu/PenMenu;)Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    move-result-object v3

    if-eqz v3, :cond_3

    if-nez v0, :cond_3

    .line 742
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_7

    .line 743
    const-string v3, "PenMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onActionPerform - setPaintingViewDisplayAlpha begin: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    :cond_7
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu$5;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #calls: Lcom/htc/painting/penmenu/PenMenu;->setPaintingViewDisplayAlpha()V
    invoke-static {v3}, Lcom/htc/painting/penmenu/PenMenu;->access$900(Lcom/htc/painting/penmenu/PenMenu;)V

    .line 747
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_3

    .line 748
    const-string v3, "PenMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onActionPerform - setPaintingViewDisplayAlpha end: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 754
    :sswitch_1
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu$5;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #getter for: Lcom/htc/painting/penmenu/PenMenu;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;
    invoke-static {v3}, Lcom/htc/painting/penmenu/PenMenu;->access$800(Lcom/htc/painting/penmenu/PenMenu;)Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    move-result-object v3

    if-eqz v3, :cond_3

    if-nez v0, :cond_3

    .line 755
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_8

    .line 756
    const-string v3, "PenMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onActionPerform - clearAll begin: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    :cond_8
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu$5;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #getter for: Lcom/htc/painting/penmenu/PenMenu;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;
    invoke-static {v3}, Lcom/htc/painting/penmenu/PenMenu;->access$800(Lcom/htc/painting/penmenu/PenMenu;)Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/painting/engine/IStrokeNotifyPaintingView;->clearAll()V

    .line 760
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_3

    .line 761
    const-string v3, "PenMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onActionPerform - clearAll end: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 767
    :sswitch_2
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu$5;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #getter for: Lcom/htc/painting/penmenu/PenMenu;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;
    invoke-static {v3}, Lcom/htc/painting/penmenu/PenMenu;->access$800(Lcom/htc/painting/penmenu/PenMenu;)Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    move-result-object v3

    if-eqz v3, :cond_3

    if-nez v0, :cond_3

    .line 768
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_9

    .line 769
    const-string v3, "PenMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onActionPerform - undo begin: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :cond_9
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu$5;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #getter for: Lcom/htc/painting/penmenu/PenMenu;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;
    invoke-static {v3}, Lcom/htc/painting/penmenu/PenMenu;->access$800(Lcom/htc/painting/penmenu/PenMenu;)Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/painting/engine/IStrokeNotifyPaintingView;->undo()V

    .line 773
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_3

    .line 774
    const-string v3, "PenMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onActionPerform - undo end: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 780
    :sswitch_3
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu$5;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #getter for: Lcom/htc/painting/penmenu/PenMenu;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;
    invoke-static {v3}, Lcom/htc/painting/penmenu/PenMenu;->access$800(Lcom/htc/painting/penmenu/PenMenu;)Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    move-result-object v3

    if-eqz v3, :cond_3

    if-nez v0, :cond_3

    .line 781
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_a

    .line 782
    const-string v3, "PenMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onActionPerform - redo begin: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    :cond_a
    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu$5;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #getter for: Lcom/htc/painting/penmenu/PenMenu;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;
    invoke-static {v3}, Lcom/htc/painting/penmenu/PenMenu;->access$800(Lcom/htc/painting/penmenu/PenMenu;)Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/painting/engine/IStrokeNotifyPaintingView;->redo()V

    .line 786
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_3

    .line 787
    const-string v3, "PenMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onActionPerform - redo end: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 739
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_2
        0xc8 -> :sswitch_0
        0x12c -> :sswitch_1
        0x190 -> :sswitch_3
    .end sparse-switch
.end method
