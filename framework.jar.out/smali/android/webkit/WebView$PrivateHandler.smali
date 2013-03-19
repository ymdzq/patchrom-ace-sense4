.class Landroid/webkit/WebView$PrivateHandler;
.super Landroid/os/Handler;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PrivateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;)V
    .locals 0
    .parameter

    .prologue
    .line 9745
    iput-object p1, p0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 53
    .parameter "msg"

    .prologue
    .line 9762
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v2}, Landroid/webkit/WebView;->access$600(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v2

    if-nez v2, :cond_1

    .line 10573
    :cond_0
    :goto_0
    return-void

    .line 9766
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$3800(Landroid/webkit/WebView;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v3, 0x6b

    if-ne v2, v3, :cond_0

    .line 9771
    :cond_2
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 10570
    :goto_1
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 9773
    :sswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 9776
    .local v10, currentTime:J
    invoke-static {}, Landroid/webkit/WebView;->access$3900()J

    move-result-wide v2

    sub-long v2, v10, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gtz v2, :cond_5

    .line 9777
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mPerf:Lorg/codeaurora/Performance;
    invoke-static {v2}, Landroid/webkit/WebView;->access$4000(Landroid/webkit/WebView;)Lorg/codeaurora/Performance;

    move-result-object v2

    if-nez v2, :cond_3

    .line 9778
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    new-instance v3, Lorg/codeaurora/Performance;

    invoke-direct {v3}, Lorg/codeaurora/Performance;-><init>()V

    #setter for: Landroid/webkit/WebView;->mPerf:Lorg/codeaurora/Performance;
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$4002(Landroid/webkit/WebView;Lorg/codeaurora/Performance;)Lorg/codeaurora/Performance;

    .line 9781
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mPerf:Lorg/codeaurora/Performance;
    invoke-static {v2}, Landroid/webkit/WebView;->access$4000(Landroid/webkit/WebView;)Lorg/codeaurora/Performance;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/codeaurora/Performance;->cpuBoost(I)V

    .line 9783
    invoke-static {}, Landroid/webkit/WebView;->access$4100()Z

    move-result v2

    if-nez v2, :cond_4

    .line 9784
    const/4 v2, 0x1

    invoke-static {v2}, Landroid/webkit/WebView;->access$4102(Z)Z

    .line 9787
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mPerf:Lorg/codeaurora/Performance;
    invoke-static {v2}, Landroid/webkit/WebView;->access$4000(Landroid/webkit/WebView;)Lorg/codeaurora/Performance;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/codeaurora/Performance;->cpuSetOptions(II)I

    .line 9788
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mPerf:Lorg/codeaurora/Performance;
    invoke-static {v2}, Landroid/webkit/WebView;->access$4000(Landroid/webkit/WebView;)Lorg/codeaurora/Performance;

    move-result-object v2

    const/4 v3, 0x2

    const/16 v4, 0xc

    invoke-virtual {v2, v3, v4}, Lorg/codeaurora/Performance;->cpuSetOptions(II)I

    .line 9789
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mPerf:Lorg/codeaurora/Performance;
    invoke-static {v2}, Landroid/webkit/WebView;->access$4000(Landroid/webkit/WebView;)Lorg/codeaurora/Performance;

    move-result-object v2

    const/4 v3, 0x3

    const/16 v4, 0xc

    invoke-virtual {v2, v3, v4}, Lorg/codeaurora/Performance;->cpuSetOptions(II)I

    .line 9791
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget-object v3, v3, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 9793
    :cond_5
    invoke-static {}, Landroid/webkit/WebView;->access$4100()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 9794
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/webkit/WebView;->access$4102(Z)Z

    .line 9797
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mPerf:Lorg/codeaurora/Performance;
    invoke-static {v2}, Landroid/webkit/WebView;->access$4000(Landroid/webkit/WebView;)Lorg/codeaurora/Performance;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/codeaurora/Performance;->cpuSetOptions(II)I

    .line 9798
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mPerf:Lorg/codeaurora/Performance;
    invoke-static {v2}, Landroid/webkit/WebView;->access$4000(Landroid/webkit/WebView;)Lorg/codeaurora/Performance;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/codeaurora/Performance;->cpuSetOptions(II)I

    .line 9799
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mPerf:Lorg/codeaurora/Performance;
    invoke-static {v2}, Landroid/webkit/WebView;->access$4000(Landroid/webkit/WebView;)Lorg/codeaurora/Performance;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/codeaurora/Performance;->cpuSetOptions(II)I

    goto/16 :goto_0

    .line 9805
    .end local v10           #currentTime:J
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1200(Landroid/webkit/WebView;)Landroid/webkit/WebViewDatabase;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "host"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "username"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "password"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/webkit/WebViewDatabase;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9809
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 9813
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1200(Landroid/webkit/WebView;)Landroid/webkit/WebViewDatabase;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "host"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/webkit/WebViewDatabase;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9815
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 9821
    :sswitch_3
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mPreventDefault:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$2200(Landroid/webkit/WebView;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_7

    :cond_6
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mPreventDefault:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$2200(Landroid/webkit/WebView;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 9825
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget v4, v4, Landroid/webkit/WebView;->mLastTouchX:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollX:I
    invoke-static {v5}, Landroid/webkit/WebView;->access$4200(Landroid/webkit/WebView;)I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget v5, v5, Landroid/webkit/WebView;->mLastTouchY:I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollY:I
    invoke-static {v6}, Landroid/webkit/WebView;->access$4300(Landroid/webkit/WebView;)I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v4

    const/4 v5, 0x1

    #calls: Landroid/webkit/WebView;->cancelWebCoreTouchEvent(IIZ)V
    invoke-static {v2, v3, v4, v5}, Landroid/webkit/WebView;->access$4400(Landroid/webkit/WebView;IIZ)V

    goto/16 :goto_0

    .line 9833
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mAutoScrollX:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$4500(Landroid/webkit/WebView;)I

    move-result v2

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mAutoScrollY:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$4600(Landroid/webkit/WebView;)I

    move-result v2

    if-nez v2, :cond_8

    .line 9834
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    const/4 v3, 0x0

    #setter for: Landroid/webkit/WebView;->mSentAutoScrollMessage:Z
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$4702(Landroid/webkit/WebView;Z)Z

    goto/16 :goto_0

    .line 9837
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mCurrentScrollingLayerId:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$4800(Landroid/webkit/WebView;)I

    move-result v2

    if-nez v2, :cond_9

    .line 9838
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mAutoScrollX:I
    invoke-static {v3}, Landroid/webkit/WebView;->access$4500(Landroid/webkit/WebView;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mAutoScrollY:I
    invoke-static {v4}, Landroid/webkit/WebView;->access$4600(Landroid/webkit/WebView;)I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    #calls: Landroid/webkit/WebView;->pinScrollBy(IIZI)Z
    invoke-static {v2, v3, v4, v5, v6}, Landroid/webkit/WebView;->access$4900(Landroid/webkit/WebView;IIZI)Z

    .line 9843
    :goto_2
    const/16 v2, 0xb

    const-wide/16 v3, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/webkit/WebView$PrivateHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 9840
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;
    invoke-static {v3}, Landroid/webkit/WebView;->access$5000(Landroid/webkit/WebView;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mAutoScrollX:I
    invoke-static {v4}, Landroid/webkit/WebView;->access$4500(Landroid/webkit/WebView;)I

    move-result v4

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;
    invoke-static {v4}, Landroid/webkit/WebView;->access$5000(Landroid/webkit/WebView;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mAutoScrollY:I
    invoke-static {v5}, Landroid/webkit/WebView;->access$4600(Landroid/webkit/WebView;)I

    move-result v5

    add-int/2addr v4, v5

    #calls: Landroid/webkit/WebView;->scrollLayerTo(II)V
    invoke-static {v2, v3, v4}, Landroid/webkit/WebView;->access$5100(Landroid/webkit/WebView;II)V

    goto :goto_2

    .line 9848
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$5200(Landroid/webkit/WebView;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$5200(Landroid/webkit/WebView;)I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$5200(Landroid/webkit/WebView;)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 9851
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->updateSelection()V
    invoke-static {v2}, Landroid/webkit/WebView;->access$5300(Landroid/webkit/WebView;)V

    goto/16 :goto_0

    .line 9856
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    const/4 v3, 0x0

    #setter for: Landroid/webkit/WebView;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$5402(Landroid/webkit/WebView;Landroid/webkit/WebView$HitTestResult;)Landroid/webkit/WebView$HitTestResult;

    .line 9857
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$5200(Landroid/webkit/WebView;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c

    .line 9858
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->supportTouchOnly()Z

    move-result v2

    if-nez v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mPreventDefault:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$2200(Landroid/webkit/WebView;)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_b

    .line 9860
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    const/4 v3, 0x4

    #setter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$5202(Landroid/webkit/WebView;I)I

    .line 9861
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->updateSelection()V
    invoke-static {v2}, Landroid/webkit/WebView;->access$5300(Landroid/webkit/WebView;)V

    goto/16 :goto_0

    .line 9865
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    const/4 v3, 0x5

    #setter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$5202(Landroid/webkit/WebView;I)I

    goto/16 :goto_0

    .line 9867
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$5200(Landroid/webkit/WebView;)I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    .line 9868
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    const/4 v3, 0x7

    #setter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$5202(Landroid/webkit/WebView;I)I

    goto/16 :goto_0

    .line 9873
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->supportTouchOnly()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 9874
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->removeTouchHighlight()V
    invoke-static {v2}, Landroid/webkit/WebView;->access$5500(Landroid/webkit/WebView;)V

    .line 9876
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->inFullScreenMode()Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$5600(Landroid/webkit/WebView;)Z

    move-result v2

    if-nez v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mDeferTouchProcess:Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$5700(Landroid/webkit/WebView;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 9877
    :cond_e
    new-instance v39, Landroid/webkit/WebViewCore$TouchEventData;

    invoke-direct/range {v39 .. v39}, Landroid/webkit/WebViewCore$TouchEventData;-><init>()V

    .line 9878
    .local v39, ted:Landroid/webkit/WebViewCore$TouchEventData;
    const/16 v2, 0x100

    move-object/from16 v0, v39

    iput v2, v0, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    .line 9879
    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object/from16 v0, v39

    iput-object v2, v0, Landroid/webkit/WebViewCore$TouchEventData;->mIds:[I

    .line 9880
    move-object/from16 v0, v39

    iget-object v2, v0, Landroid/webkit/WebViewCore$TouchEventData;->mIds:[I

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 9881
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/graphics/Point;

    move-object/from16 v0, v39

    iput-object v2, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    .line 9882
    move-object/from16 v0, v39

    iget-object v2, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    const/4 v3, 0x0

    new-instance v4, Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget v6, v6, Landroid/webkit/WebView;->mLastTouchX:I

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollX:I
    invoke-static {v7}, Landroid/webkit/WebView;->access$5800(Landroid/webkit/WebView;)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget v7, v7, Landroid/webkit/WebView;->mLastTouchY:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v52, v0

    #getter for: Landroid/webkit/WebView;->mScrollY:I
    invoke-static/range {v52 .. v52}, Landroid/webkit/WebView;->access$5900(Landroid/webkit/WebView;)I

    move-result v52

    add-int v7, v7, v52

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    aput-object v4, v2, v3

    .line 9884
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/graphics/Point;

    move-object/from16 v0, v39

    iput-object v2, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    .line 9885
    move-object/from16 v0, v39

    iget-object v2, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    const/4 v3, 0x0

    new-instance v4, Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget v5, v5, Landroid/webkit/WebView;->mLastTouchX:I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget v6, v6, Landroid/webkit/WebView;->mLastTouchY:I

    invoke-direct {v4, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    aput-object v4, v2, v3

    .line 9890
    const/4 v2, 0x0

    move-object/from16 v0, v39

    iput v2, v0, Landroid/webkit/WebViewCore$TouchEventData;->mMetaState:I

    .line 9891
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mDeferTouchProcess:Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$5700(Landroid/webkit/WebView;)Z

    move-result v2

    move-object/from16 v0, v39

    iput-boolean v2, v0, Landroid/webkit/WebViewCore$TouchEventData;->mReprocess:Z

    .line 9892
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v39

    iget-object v4, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/Point;->y:I

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeLayerRect:Landroid/graphics/Rect;

    const/4 v6, 0x0

    #calls: Landroid/webkit/WebView;->nativeScrollableLayer(IILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    invoke-static {v2, v3, v4, v5, v6}, Landroid/webkit/WebView;->access$6000(Landroid/webkit/WebView;IILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v2

    move-object/from16 v0, v39

    iput v2, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeLayer:I

    .line 9895
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;
    invoke-static {v2}, Landroid/webkit/WebView;->access$6100(Landroid/webkit/WebView;)Landroid/webkit/WebView$TouchEventQueue;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView$TouchEventQueue;->nextTouchSequence()J

    move-result-wide v2

    move-object/from16 v0, v39

    iput-wide v2, v0, Landroid/webkit/WebViewCore$TouchEventData;->mSequence:J

    .line 9896
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;
    invoke-static {v2}, Landroid/webkit/WebView;->access$6100(Landroid/webkit/WebView;)Landroid/webkit/WebView$TouchEventQueue;

    move-result-object v2

    move-object/from16 v0, v39

    invoke-virtual {v2, v0}, Landroid/webkit/WebView$TouchEventQueue;->preQueueTouchEventData(Landroid/webkit/WebViewCore$TouchEventData;)V

    .line 9898
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v2}, Landroid/webkit/WebView;->access$600(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v2

    const/16 v3, 0x8d

    move-object/from16 v0, v39

    invoke-virtual {v2, v3, v0}, Landroid/webkit/WebViewCore;->sendTouchMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 9899
    .end local v39           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mPreventDefault:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$2200(Landroid/webkit/WebView;)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 9900
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    const/4 v3, 0x7

    #setter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$5202(Landroid/webkit/WebView;I)I

    .line 9901
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->performLongClick()Z

    goto/16 :goto_0

    .line 9909
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->isEditable()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 9910
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v2}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v2

    sget-object v3, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->CURSOR:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-ne v2, v3, :cond_10

    .line 9911
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-object v2, v2, Landroid/webkit/WebView$QuickSelectAbs;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/textselection/SelectionAnchor;->setTouchable(Z)V

    .line 9913
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->singleTapInEditableWebView()V

    goto/16 :goto_0

    .line 9917
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->doShortPress()V
    invoke-static {v2}, Landroid/webkit/WebView;->access$6200(Landroid/webkit/WebView;)V

    goto/16 :goto_0

    .line 9923
    :sswitch_9
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    .line 9926
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v19

    .line 9927
    .local v19, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v19, :cond_0

    invoke-virtual/range {v19 .. v19}, Landroid/view/inputmethod/InputMethodManager;->isAcceptingText()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->inEditingMode()Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$6300(Landroid/webkit/WebView;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9933
    .end local v19           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_12
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/graphics/Point;

    .line 9934
    .local v27, p:Landroid/graphics/Point;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_13

    .line 9935
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, v27

    iget v3, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v27

    iget v4, v0, Landroid/graphics/Point;->y:I

    #calls: Landroid/webkit/WebView;->spawnContentScrollTo(II)V
    invoke-static {v2, v3, v4}, Landroid/webkit/WebView;->access$6400(Landroid/webkit/WebView;II)V

    goto/16 :goto_0

    .line 9937
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, v27

    iget v3, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v27

    iget v4, v0, Landroid/graphics/Point;->y:I

    #calls: Landroid/webkit/WebView;->setContentScrollTo(II)Z
    invoke-static {v2, v3, v4}, Landroid/webkit/WebView;->access$6500(Landroid/webkit/WebView;II)Z

    goto/16 :goto_0

    .line 9942
    .end local v27           #p:Landroid/graphics/Point;
    :sswitch_a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v45, v0

    check-cast v45, Landroid/webkit/WebViewCore$ViewState;

    .line 9944
    .local v45, viewState:Landroid/webkit/WebViewCore$ViewState;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebView;->access$2100(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v3

    move-object/from16 v0, v45

    iget v4, v0, Landroid/webkit/WebViewCore$ViewState;->mScrollX:I

    move-object/from16 v0, v45

    invoke-virtual {v2, v0, v3, v4}, Landroid/webkit/ZoomManager;->updateZoomRange(Landroid/webkit/WebViewCore$ViewState;II)V

    goto/16 :goto_0

    .line 9948
    .end local v45           #viewState:Landroid/webkit/WebViewCore$ViewState;
    :sswitch_b
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v13

    .line 9949
    .local v13, density:F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebView;->access$2100(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/webkit/ZoomManager;->updateDefaultZoomDensity(F)V

    goto/16 :goto_0

    .line 9953
    .end local v13           #density:F
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    #calls: Landroid/webkit/WebView;->nativeReplaceBaseContent(I)V
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$6600(Landroid/webkit/WebView;I)V

    goto/16 :goto_0

    .line 9958
    :sswitch_d
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Landroid/webkit/WebViewCore$DrawData;

    .line 9960
    .local v15, draw:Landroid/webkit/WebViewCore$DrawData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    const/4 v3, 0x1

    invoke-virtual {v2, v15, v3}, Landroid/webkit/WebView;->setNewPicture(Landroid/webkit/WebViewCore$DrawData;Z)V

    goto/16 :goto_0

    .line 9965
    .end local v15           #draw:Landroid/webkit/WebViewCore$DrawData;
    :sswitch_e
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/webkit/WebView;->access$6700(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/webkit/BrowserFrame;->getRawResFilename(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    .line 9967
    .local v16, drawableDir:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/webkit/WebView;->access$6800(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Landroid/view/WindowManager;

    .line 9969
    .local v49, windowManager:Landroid/view/WindowManager;
    invoke-interface/range {v49 .. v49}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v14

    .line 9970
    .local v14, display:Landroid/view/Display;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-static {v14}, Landroid/app/ActivityManager;->isHighEndGfx(Landroid/view/Display;)Z

    move-result v4

    move-object/from16 v0, v16

    #calls: Landroid/webkit/WebView;->nativeCreate(ILjava/lang/String;Z)V
    invoke-static {v2, v3, v0, v4}, Landroid/webkit/WebView;->access$6900(Landroid/webkit/WebView;ILjava/lang/String;Z)V

    .line 9972
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mDelaySetPicture:Landroid/webkit/WebViewCore$DrawData;
    invoke-static {v2}, Landroid/webkit/WebView;->access$7000(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore$DrawData;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 9973
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mDelaySetPicture:Landroid/webkit/WebViewCore$DrawData;
    invoke-static {v3}, Landroid/webkit/WebView;->access$7000(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore$DrawData;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebView;->setNewPicture(Landroid/webkit/WebViewCore$DrawData;Z)V

    .line 9974
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    const/4 v3, 0x0

    #setter for: Landroid/webkit/WebView;->mDelaySetPicture:Landroid/webkit/WebViewCore$DrawData;
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$7002(Landroid/webkit/WebView;Landroid/webkit/WebViewCore$DrawData;)Landroid/webkit/WebViewCore$DrawData;

    .line 9976
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mIsPaused:Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$7100(Landroid/webkit/WebView;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 9977
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mNativeClass:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$7200(Landroid/webkit/WebView;)I

    move-result v2

    const/4 v3, 0x1

    #calls: Landroid/webkit/WebView;->nativeSetPauseDrawing(IZ)V
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$7300(IZ)V

    .line 9981
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/webkit/WebView;->m_bHasNewWebView:Z

    .line 9982
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->m_bIsBrowserApp:Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$7400(Landroid/webkit/WebView;)Z

    move-result v9

    .line 9983
    .local v9, bEnableTBS:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget-boolean v2, v2, Landroid/webkit/WebView;->m_bCustomizeEnableTBS:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_16

    .line 9984
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget-boolean v9, v2, Landroid/webkit/WebView;->m_bEnableTBS:Z

    .line 9985
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->m_bIsBrowserApp:Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$7400(Landroid/webkit/WebView;)Z

    move-result v2

    if-eqz v2, :cond_17

    sget-boolean v2, Landroid/webkit/WebView;->mbEnableTBS:Z

    if-eqz v2, :cond_17

    .line 9986
    const/4 v9, 0x1

    .line 9989
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->nativeEnableTBS(Z)V
    invoke-static {v2, v9}, Landroid/webkit/WebView;->access$7500(Landroid/webkit/WebView;Z)V

    goto/16 :goto_0

    .line 9988
    :cond_17
    const/4 v9, 0x0

    goto :goto_3

    .line 9995
    .end local v9           #bEnableTBS:Z
    .end local v14           #display:Landroid/view/Display;
    .end local v16           #drawableDir:Ljava/lang/String;
    .end local v49           #windowManager:Landroid/view/WindowManager;
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->inEditingMode()Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$6300(Landroid/webkit/WebView;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebTextView;->isSameTextField(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9997
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mTextGeneration:I
    invoke-static {v3}, Landroid/webkit/WebView;->access$7600(Landroid/webkit/WebView;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 9998
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Ljava/lang/String;

    .line 9999
    .local v40, text:Ljava/lang/String;
    if-nez v40, :cond_18

    .line 10000
    const-string v40, ""

    .line 10002
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v2

    move-object/from16 v0, v40

    invoke-virtual {v2, v0}, Landroid/webkit/WebTextView;->setTextAndKeepSelection(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 10007
    .end local v40           #text:Ljava/lang/String;
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    const/4 v3, 0x1

    #calls: Landroid/webkit/WebView;->displaySoftKeyboard(Z)V
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$7700(Landroid/webkit/WebView;Z)V

    .line 10010
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/webkit/WebViewCore$TextSelectionData;

    #calls: Landroid/webkit/WebView;->updateTextSelectionFromMessage(IILandroid/webkit/WebViewCore$TextSelectionData;)V
    invoke-static {v3, v4, v5, v2}, Landroid/webkit/WebView;->access$7800(Landroid/webkit/WebView;IILandroid/webkit/WebViewCore$TextSelectionData;)V

    goto/16 :goto_0

    .line 10014
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->inEditingMode()Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$6300(Landroid/webkit/WebView;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebTextView;->isSameTextField(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10016
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->hideSoftKeyboard()V
    invoke-static {v2}, Landroid/webkit/WebView;->access$7900(Landroid/webkit/WebView;)V

    goto/16 :goto_0

    .line 10020
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->inEditingMode()Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$6300(Landroid/webkit/WebView;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebTextView;->isSameTextField(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10022
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/String;

    .line 10023
    .local v18, hint:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebTextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v26

    .line 10024
    .local v26, orig_hint:Ljava/lang/CharSequence;
    if-eqz v26, :cond_19

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10025
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/webkit/WebTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 10026
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v19

    .line 10031
    .restart local v19       #imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10032
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    goto/16 :goto_0

    .line 10038
    .end local v18           #hint:Ljava/lang/String;
    .end local v19           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v26           #orig_hint:Ljava/lang/CharSequence;
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    #calls: Landroid/webkit/WebView;->navHandledKey(IIZJ)Z
    invoke-static/range {v2 .. v7}, Landroid/webkit/WebView;->access$8000(Landroid/webkit/WebView;IIZJ)Z

    goto/16 :goto_0

    .line 10042
    :sswitch_15
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->howToSelection:I
    invoke-static {v3}, Landroid/webkit/WebView;->access$8100(Landroid/webkit/WebView;)I

    move-result v3

    if-ne v2, v3, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    invoke-virtual {v2}, Landroid/webkit/WebView$QuickSelectAbs;->isSelecting()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 10043
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget-object v0, v2, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    move-object/from16 v30, v0

    check-cast v30, Landroid/webkit/WebView$QuickSelectWV;

    .line 10044
    .local v30, quickSelect:Landroid/webkit/WebView$QuickSelectWV;
    invoke-virtual/range {v30 .. v30}, Landroid/webkit/WebView$QuickSelectWV;->resumeSelection()V

    .line 10061
    .end local v30           #quickSelect:Landroid/webkit/WebView$QuickSelectWV;
    :cond_1a
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->inEditingMode()Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$6300(Landroid/webkit/WebView;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->nativeCursorIsTextInput()Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$8200(Landroid/webkit/WebView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10062
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->updateWebTextViewPosition()V
    invoke-static {v2}, Landroid/webkit/WebView;->access$8300(Landroid/webkit/WebView;)V

    goto/16 :goto_0

    .line 10049
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->isEditable()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 10051
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v2}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v2

    sget-object v3, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->EXTENDABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-ne v2, v3, :cond_1a

    .line 10052
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->updatePositionRect()V

    .line 10053
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    check-cast v2, Landroid/webkit/EditableWebView;

    invoke-virtual {v2}, Landroid/webkit/EditableWebView;->resumeSelctionUI()V

    goto :goto_4

    .line 10066
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->clearTextEntry()V

    goto/16 :goto_0

    .line 10069
    :sswitch_17
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Landroid/graphics/Rect;

    .line 10070
    .local v31, r:Landroid/graphics/Rect;
    if-nez v31, :cond_1c

    .line 10071
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_0

    .line 10075
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, v31

    iget v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v31

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v31

    iget v5, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v31

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    #calls: Landroid/webkit/WebView;->viewInvalidate(IIII)V
    invoke-static {v2, v3, v4, v5, v6}, Landroid/webkit/WebView;->access$8400(Landroid/webkit/WebView;IIII)V

    goto/16 :goto_0

    .line 10080
    .end local v31           #r:Landroid/graphics/Rect;
    :sswitch_18
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/webkit/WebTextView$AutoCompleteAdapter;

    .line 10081
    .local v8, adapter:Landroid/webkit/WebTextView$AutoCompleteAdapter;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebTextView;->isSameTextField(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10082
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/webkit/WebTextView;->setAdapterCustom(Landroid/webkit/WebTextView$AutoCompleteAdapter;)V

    goto/16 :goto_0

    .line 10089
    .end local v8           #adapter:Landroid/webkit/WebTextView$AutoCompleteAdapter;
    :sswitch_19
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    const/4 v3, 0x0

    #setter for: Landroid/webkit/WebView;->mGotCenterDown:Z
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$8502(Landroid/webkit/WebView;Z)Z

    .line 10090
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    const/4 v3, 0x0

    #setter for: Landroid/webkit/WebView;->mTrackballDown:Z
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$8602(Landroid/webkit/WebView;Z)Z

    .line 10091
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->performLongClick()Z

    goto/16 :goto_0

    .line 10095
    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_1d

    const/4 v2, 0x1

    :goto_5
    #setter for: Landroid/webkit/WebView;->mForwardTouchEvents:Z
    invoke-static {v3, v2}, Landroid/webkit/WebView;->access$8702(Landroid/webkit/WebView;Z)Z

    goto/16 :goto_0

    :cond_1d
    const/4 v2, 0x0

    goto :goto_5

    .line 10099
    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->inFullScreenMode()Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$5600(Landroid/webkit/WebView;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10102
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/webkit/WebViewCore$TouchEventData;

    .line 10104
    .restart local v39       #ted:Landroid/webkit/WebViewCore$TouchEventData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;
    invoke-static {v2}, Landroid/webkit/WebView;->access$6100(Landroid/webkit/WebView;)Landroid/webkit/WebView$TouchEventQueue;

    move-result-object v2

    move-object/from16 v0, v39

    invoke-virtual {v2, v0}, Landroid/webkit/WebView$TouchEventQueue;->enqueueTouchEvent(Landroid/webkit/WebViewCore$TouchEventData;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10107
    const/16 v2, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/webkit/WebView$PrivateHandler;->removeMessages(I)V

    goto/16 :goto_0

    .line 10112
    .end local v39           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :sswitch_1c
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_1e

    .line 10113
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->hideSoftKeyboard()V
    invoke-static {v2}, Landroid/webkit/WebView;->access$7900(Landroid/webkit/WebView;)V

    goto/16 :goto_0

    .line 10115
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    const/4 v3, 0x0

    #calls: Landroid/webkit/WebView;->displaySoftKeyboard(Z)V
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$7700(Landroid/webkit/WebView;Z)V

    goto/16 :goto_0

    .line 10121
    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mFindIsUp:Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$8800(Landroid/webkit/WebView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10122
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mFindCallback:Landroid/webkit/FindActionModeCallback;
    invoke-static {v2}, Landroid/webkit/WebView;->access$8900(Landroid/webkit/WebView;)Landroid/webkit/FindActionModeCallback;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 10123
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mFindCallback:Landroid/webkit/FindActionModeCallback;
    invoke-static {v2}, Landroid/webkit/WebView;->access$8900(Landroid/webkit/WebView;)Landroid/webkit/FindActionModeCallback;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/FindActionModeCallback;->findAll()V

    goto/16 :goto_0

    .line 10126
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget-boolean v2, v2, Landroid/webkit/WebView;->mCustomFindMode:Z

    if-eqz v2, :cond_0

    .line 10127
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mLastFind:Ljava/lang/String;
    invoke-static {v3}, Landroid/webkit/WebView;->access$9000(Landroid/webkit/WebView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->findAll(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 10134
    :sswitch_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    const/4 v3, 0x2

    #setter for: Landroid/webkit/WebView;->mHeldMotionless:I
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$9102(Landroid/webkit/WebView;I)I

    .line 10135
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->invalidate()V

    .line 10139
    :sswitch_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$5200(Landroid/webkit/WebView;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mHeldMotionless:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$9100(Landroid/webkit/WebView;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 10141
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v3

    const/4 v4, 0x0

    #calls: Landroid/webkit/WebView;->awakenScrollBars(IZ)Z
    invoke-static {v2, v3, v4}, Landroid/webkit/WebView;->access$9200(Landroid/webkit/WebView;IZ)Z

    .line 10144
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 10146
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget-object v3, v3, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 10153
    :sswitch_20
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    #calls: Landroid/webkit/WebView;->doMotionUp(II)V
    invoke-static {v2, v3, v4}, Landroid/webkit/WebView;->access$9300(Landroid/webkit/WebView;II)V

    goto/16 :goto_0

    .line 10157
    :sswitch_21
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_20

    const/4 v2, 0x1

    :goto_6
    invoke-virtual {v3, v2}, Landroid/webkit/WebView;->setKeepScreenOn(Z)V

    goto/16 :goto_0

    :cond_20
    const/4 v2, 0x0

    goto :goto_6

    .line 10161
    :sswitch_22
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v20, v0

    .line 10163
    .local v20, layerId:I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Ljava/lang/String;

    .line 10164
    .local v42, url:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mHTML5VideoViewManager:Landroid/webkit/HTML5VideoViewManager;
    invoke-static {v2}, Landroid/webkit/WebView;->access$9400(Landroid/webkit/WebView;)Landroid/webkit/HTML5VideoViewManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10165
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mHTML5VideoViewManager:Landroid/webkit/HTML5VideoViewManager;
    invoke-static {v2}, Landroid/webkit/WebView;->access$9400(Landroid/webkit/WebView;)Landroid/webkit/HTML5VideoViewManager;

    move-result-object v2

    move/from16 v0, v20

    move-object/from16 v1, v42

    invoke-virtual {v2, v0, v1}, Landroid/webkit/HTML5VideoViewManager;->enterFullScreenVideo(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 10169
    .end local v20           #layerId:I
    .end local v42           #url:Ljava/lang/String;
    :sswitch_23
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Landroid/view/View;

    .line 10170
    .local v43, view:Landroid/view/View;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    .line 10171
    .local v25, orientation:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v24, v0

    .line 10173
    .local v24, npp:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->inFullScreenMode()Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$5600(Landroid/webkit/WebView;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 10174
    const-string/jumbo v2, "webview"

    const-string v3, "Should not have another full screen."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10175
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->dismissFullScreenMode()V
    invoke-static {v2}, Landroid/webkit/WebView;->access$9500(Landroid/webkit/WebView;)V

    .line 10177
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    new-instance v3, Landroid/webkit/PluginFullScreenHolder;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move/from16 v0, v25

    move/from16 v1, v24

    invoke-direct {v3, v4, v0, v1}, Landroid/webkit/PluginFullScreenHolder;-><init>(Landroid/webkit/WebView;II)V

    iput-object v3, v2, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    .line 10178
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    move-object/from16 v0, v43

    invoke-virtual {v2, v0}, Landroid/webkit/PluginFullScreenHolder;->setContentView(Landroid/view/View;)V

    .line 10179
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    invoke-virtual {v2}, Landroid/webkit/PluginFullScreenHolder;->show()V

    goto/16 :goto_0

    .line 10184
    .end local v24           #npp:I
    .end local v25           #orientation:I
    .end local v43           #view:Landroid/view/View;
    :sswitch_24
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->dismissFullScreenMode()V
    invoke-static {v2}, Landroid/webkit/WebView;->access$9500(Landroid/webkit/WebView;)V

    goto/16 :goto_0

    .line 10188
    :sswitch_25
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->inEditingMode()Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$6300(Landroid/webkit/WebView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10189
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->nativeClearCursor()V

    .line 10190
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->rebuildWebTextView()V

    goto/16 :goto_0

    .line 10195
    :sswitch_26
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->pauseTimers()V

    goto/16 :goto_0

    .line 10199
    :sswitch_27
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mPausedTimerByZoom:Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$9600(Landroid/webkit/WebView;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10200
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->resumeTimers()V

    goto/16 :goto_0

    .line 10272
    :sswitch_28
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollX:I
    invoke-static {v3}, Landroid/webkit/WebView;->access$9800(Landroid/webkit/WebView;)I

    move-result v3

    #setter for: Landroid/webkit/WebView;->mFinalScrollX:I
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$9702(Landroid/webkit/WebView;I)I

    .line 10273
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollY:I
    invoke-static {v3}, Landroid/webkit/WebView;->access$10000(Landroid/webkit/WebView;)I

    move-result v3

    #setter for: Landroid/webkit/WebView;->mFinalScrollY:I
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$9902(Landroid/webkit/WebView;I)I

    .line 10274
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebView;->access$2100(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v36

    .line 10275
    .local v36, scale:F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->m_bIsBrowserApp:Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$7400(Landroid/webkit/WebView;)Z

    move-result v2

    if-eqz v2, :cond_22

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getLayoutAlgorithm()Landroid/webkit/WebSettings$LayoutAlgorithm;

    move-result-object v2

    sget-object v3, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    if-ne v2, v3, :cond_22

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebView;->access$2100(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->isFixedLengthAnimationInProgress()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 10277
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v3}, Landroid/webkit/WebView;->access$2100(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/ZoomManager;->finalZoomScrollX()I

    move-result v3

    #setter for: Landroid/webkit/WebView;->mFinalScrollX:I
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$9702(Landroid/webkit/WebView;I)I

    .line 10278
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v3}, Landroid/webkit/WebView;->access$2100(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/ZoomManager;->finalZoomScrollY()I

    move-result v3

    #setter for: Landroid/webkit/WebView;->mFinalScrollY:I
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$9902(Landroid/webkit/WebView;I)I

    .line 10279
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebView;->access$2100(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->getFixedZoomScale()F

    move-result v36

    .line 10280
    const/4 v2, 0x0

    cmpl-float v2, v36, v2

    if-nez v2, :cond_22

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebView;->access$2100(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v36

    .line 10282
    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move/from16 v0, v36

    #setter for: Landroid/webkit/WebView;->mShowRectScale:F
    invoke-static {v2, v0}, Landroid/webkit/WebView;->access$10102(Landroid/webkit/WebView;F)F

    .line 10284
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/webkit/WebViewCore$ShowRectData;

    .line 10285
    .local v12, data:Landroid/webkit/WebViewCore$ShowRectData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mFinalScrollX:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$9700(Landroid/webkit/WebView;)I

    move-result v50

    .line 10286
    .local v50, x:I
    iget v2, v12, Landroid/webkit/WebViewCore$ShowRectData;->mLeft:I

    int-to-float v2, v2

    mul-float v2, v2, v36

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v21

    .line 10287
    .local v21, left:I
    iget v2, v12, Landroid/webkit/WebViewCore$ShowRectData;->mWidth:I

    int-to-float v2, v2

    mul-float v2, v2, v36

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v48

    .line 10288
    .local v48, width:I
    iget v2, v12, Landroid/webkit/WebViewCore$ShowRectData;->mContentWidth:I

    int-to-float v2, v2

    mul-float v2, v2, v36

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v23

    .line 10289
    .local v23, maxWidth:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v46

    .line 10291
    .local v46, viewWidth:I
    iget v2, v12, Landroid/webkit/WebViewCore$ShowRectData;->mTop:I

    int-to-float v2, v2

    mul-float v2, v2, v36

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v41

    .line 10292
    .local v41, top:I
    iget v2, v12, Landroid/webkit/WebViewCore$ShowRectData;->mHeight:I

    int-to-float v2, v2

    mul-float v2, v2, v36

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v17

    .line 10293
    .local v17, height:I
    iget v2, v12, Landroid/webkit/WebViewCore$ShowRectData;->mContentHeight:I

    int-to-float v2, v2

    mul-float v2, v2, v36

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v22

    .line 10294
    .local v22, maxHeight:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v44

    .line 10299
    .local v44, viewHeight:I
    iget v2, v12, Landroid/webkit/WebViewCore$ShowRectData;->mFocusNode:I

    if-eqz v2, :cond_23

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebView;->access$2100(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;

    move-result-object v2

    iget-boolean v2, v2, Landroid/webkit/ZoomManager;->mZoomAndTranslate:Z

    if-eqz v2, :cond_23

    .line 10300
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->gethTCWebCoreInst()Landroid/webkit/HTCWebCore;

    move-result-object v2

    iget v3, v12, Landroid/webkit/WebViewCore$ShowRectData;->mFocusNode:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/webkit/HTCWebCore;->nativeGetNodeRect(IZI)Landroid/graphics/Rect;

    move-result-object v33

    .line 10301
    .local v33, rect2:Landroid/graphics/Rect;
    if-eqz v33, :cond_23

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_23

    .line 10302
    move-object/from16 v0, v33

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    mul-float v2, v2, v36

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v21

    .line 10303
    move-object/from16 v0, v33

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    mul-float v2, v2, v36

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v41

    .line 10304
    invoke-virtual/range {v33 .. v33}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v36

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v48

    .line 10305
    invoke-virtual/range {v33 .. v33}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v36

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v17

    .line 10319
    .end local v33           #rect2:Landroid/graphics/Rect;
    :cond_23
    move/from16 v0, v48

    move/from16 v1, v46

    if-ge v0, v1, :cond_27

    .line 10321
    div-int/lit8 v2, v48, 0x2

    add-int v2, v2, v21

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mFinalScrollX:I
    invoke-static {v3}, Landroid/webkit/WebView;->access$9700(Landroid/webkit/WebView;)I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v3, v46, 0x2

    sub-int/2addr v2, v3

    add-int v50, v50, v2

    .line 10338
    :goto_7
    const/4 v2, 0x0

    add-int v3, v50, v46

    move/from16 v0, v23

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int v3, v3, v46

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v50

    .line 10342
    iget v2, v12, Landroid/webkit/WebViewCore$ShowRectData;->mFocusNode:I

    if-eqz v2, :cond_28

    .line 10343
    div-int/lit8 v2, v17, 0x2

    add-int v2, v2, v41

    div-int/lit8 v3, v44, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, v12, Landroid/webkit/WebViewCore$ShowRectData;->mYPercentInDoc:F

    const/high16 v4, 0x3f00

    sub-float/2addr v3, v4

    move/from16 v0, v17

    int-to-float v4, v0

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v51, v0

    .line 10350
    .local v51, y:I
    :goto_8
    iget v2, v12, Landroid/webkit/WebViewCore$ShowRectData;->mFocusNode:I

    if-eqz v2, :cond_24

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebView;->access$2100(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;

    move-result-object v2

    iget-boolean v2, v2, Landroid/webkit/ZoomManager;->mZoomAndTranslate:Z

    if-eqz v2, :cond_24

    .line 10351
    div-int/lit8 v2, v17, 0x2

    add-int v2, v2, v41

    div-int/lit8 v3, v44, 0x2

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v3

    add-int v51, v2, v3

    .line 10365
    :cond_24
    const/4 v2, 0x0

    add-int v3, v51, v44

    move/from16 v0, v22

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int v3, v3, v44

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v51

    .line 10369
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->getVisibleTitleHeightImpl2()I
    invoke-static {v3}, Landroid/webkit/WebView;->access$10200(Landroid/webkit/WebView;)I

    move-result v3

    sub-int v3, v51, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v51

    .line 10372
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_25

    const-string v2, "Zoomout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WebView::SHOW_RECT_MSG_ID zoomout, don\'t scrollTo("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v50

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v51

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10373
    :cond_25
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollY:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$10300(Landroid/webkit/WebView;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v3

    if-gt v2, v3, :cond_29

    .line 10374
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollY:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$10400(Landroid/webkit/WebView;)I

    move-result v51

    .line 10383
    :cond_26
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->isHardwareAccelerated()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 10384
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move/from16 v0, v50

    #setter for: Landroid/webkit/WebView;->mPendingScrollX:I
    invoke-static {v2, v0}, Landroid/webkit/WebView;->access$10602(Landroid/webkit/WebView;I)I

    .line 10385
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move/from16 v0, v51

    #setter for: Landroid/webkit/WebView;->mPendingScrollY:I
    invoke-static {v2, v0}, Landroid/webkit/WebView;->access$10702(Landroid/webkit/WebView;I)I

    .line 10386
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v3, 0x133

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 10326
    .end local v51           #y:I
    :cond_27
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mFinalScrollX:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$9700(Landroid/webkit/WebView;)I

    move-result v2

    sub-int v2, v21, v2

    add-int/lit8 v2, v2, -0x14

    add-int v50, v50, v2

    goto/16 :goto_7

    .line 10345
    :cond_28
    move/from16 v0, v41

    int-to-float v2, v0

    iget v3, v12, Landroid/webkit/WebViewCore$ShowRectData;->mYPercentInDoc:F

    move/from16 v0, v17

    int-to-float v4, v0

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, v12, Landroid/webkit/WebViewCore$ShowRectData;->mYPercentInView:F

    move/from16 v0, v44

    int-to-float v4, v0

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v51, v0

    .restart local v51       #y:I
    goto/16 :goto_8

    .line 10376
    :cond_29
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollY:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$10500(Landroid/webkit/WebView;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v3

    if-le v2, v3, :cond_26

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v2

    move/from16 v0, v51

    if-gt v0, v2, :cond_26

    .line 10377
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v51

    goto :goto_9

    .line 10388
    :cond_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move/from16 v0, v50

    move/from16 v1, v51

    invoke-virtual {v2, v0, v1}, Landroid/webkit/WebView;->scrollTo(II)V

    .line 10390
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebView;->access$2100(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;

    move-result-object v2

    iget v2, v2, Landroid/webkit/ZoomManager;->mFocusNodeScale:I

    if-eqz v2, :cond_0

    .line 10391
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v3}, Landroid/webkit/WebView;->access$2100(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;

    move-result-object v3

    iget v3, v3, Landroid/webkit/ZoomManager;->mFocusNodeScale:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/webkit/HTCWebCore;->nativeGetNodeRect(IZI)Landroid/graphics/Rect;

    move-result-object v32

    .line 10393
    .local v32, rect:Landroid/graphics/Rect;
    if-eqz v32, :cond_2b

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2b

    .line 10394
    move-object/from16 v0, v32

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v4}, Landroid/webkit/WebView;->access$2100(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;

    move-result-object v4

    iget v4, v4, Landroid/webkit/ZoomManager;->mFocusXratio:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v28, v0

    .line 10395
    .local v28, predictX:I
    move-object/from16 v0, v32

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v4}, Landroid/webkit/WebView;->access$2100(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;

    move-result-object v4

    iget v4, v4, Landroid/webkit/ZoomManager;->mFocusYratio:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v29, v0

    .line 10396
    .local v29, predictY:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v4}, Landroid/webkit/WebView;->access$2100(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;

    move-result-object v4

    iget v4, v4, Landroid/webkit/ZoomManager;->mFocusAnchorX:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v5}, Landroid/webkit/WebView;->access$2100(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;

    move-result-object v5

    iget v5, v5, Landroid/webkit/ZoomManager;->mFocusAnchorY:I

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebView;->shiftAfterZoom(II)V

    .line 10401
    .end local v28           #predictX:I
    .end local v29           #predictY:I
    :cond_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebView;->access$2100(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;

    move-result-object v2

    const/4 v3, 0x0

    iput v3, v2, Landroid/webkit/ZoomManager;->mFocusNodeScale:I

    goto/16 :goto_0

    .line 10410
    .end local v12           #data:Landroid/webkit/WebViewCore$ShowRectData;
    .end local v17           #height:I
    .end local v21           #left:I
    .end local v22           #maxHeight:I
    .end local v23           #maxWidth:I
    .end local v32           #rect:Landroid/graphics/Rect;
    .end local v36           #scale:F
    .end local v41           #top:I
    .end local v44           #viewHeight:I
    .end local v46           #viewWidth:I
    .end local v48           #width:I
    .end local v50           #x:I
    .end local v51           #y:I
    :sswitch_29
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/webkit/WebView;->centerFitRect(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 10414
    :sswitch_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    #setter for: Landroid/webkit/WebView;->mHorizontalScrollBarMode:I
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$10802(Landroid/webkit/WebView;I)I

    .line 10415
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    #setter for: Landroid/webkit/WebView;->mVerticalScrollBarMode:I
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$10902(Landroid/webkit/WebView;I)I

    goto/16 :goto_0

    .line 10421
    :sswitch_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mIsPaused:Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$7100(Landroid/webkit/WebView;)Z

    move-result v2

    if-nez v2, :cond_2c

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->m_bIsBrowserApp:Z
    invoke-static {v3}, Landroid/webkit/WebView;->access$7400(Landroid/webkit/WebView;)Z

    move-result v3

    if-ne v2, v3, :cond_2c

    .line 10431
    :cond_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebView;->access$2100(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->getZoomType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 10433
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setStopDrawing(Z)V

    .line 10435
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget-boolean v2, v2, Landroid/webkit/WebView;->m_bPauseAll:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2d

    .line 10436
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->resumeAll()V

    .line 10442
    :cond_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebView;->access$2100(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->getSmartZoomInst()Landroid/webkit/ZoomManager$HTCSmartZoom;

    move-result-object v2

    if-eqz v2, :cond_2e

    .line 10443
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebView;->access$2100(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->getSmartZoomInst()Landroid/webkit/ZoomManager$HTCSmartZoom;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/ZoomManager$HTCSmartZoom;->finishScaleToFit()V

    .line 10445
    :cond_2e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebView;->access$2100(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->gethTCMultiTouchInst()Landroid/webkit/ZoomManager$HTCMultiTouch;

    move-result-object v2

    if-eqz v2, :cond_31

    .line 10446
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebView;->access$2100(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->gethTCMultiTouchInst()Landroid/webkit/ZoomManager$HTCMultiTouch;

    move-result-object v2

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/webkit/ZoomManager$HTCMultiTouch;->mDrawInSchedule:Z

    .line 10447
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebView;->access$2100(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->gethTCMultiTouchInst()Landroid/webkit/ZoomManager$HTCMultiTouch;

    move-result-object v2

    iget-boolean v2, v2, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_bDisableURLLink:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2f

    .line 10448
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebView;->access$2100(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->gethTCMultiTouchInst()Landroid/webkit/ZoomManager$HTCMultiTouch;

    move-result-object v2

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_bDisableURLLink:Z

    .line 10449
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebView;->access$2100(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->gethTCMultiTouchInst()Landroid/webkit/ZoomManager$HTCMultiTouch;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/ZoomManager$HTCMultiTouch;->fnMultiTouchRecoveryStatus(I)V

    .line 10450
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebView;->access$2100(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->gethTCMultiTouchInst()Landroid/webkit/ZoomManager$HTCMultiTouch;

    move-result-object v2

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_bMTEnding:Z

    .line 10453
    :cond_2f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v2}, Landroid/webkit/WebView;->access$600(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v2

    if-eqz v2, :cond_30

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v2}, Landroid/webkit/WebView;->access$600(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v2

    iget-boolean v2, v2, Landroid/webkit/WebViewCore;->m_bPauseDrawContentPicture:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_30

    .line 10454
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v2}, Landroid/webkit/WebView;->access$600(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v2

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/webkit/WebViewCore;->m_bPauseDrawContentPicture:Z

    .line 10455
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v2}, Landroid/webkit/WebView;->access$600(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v2

    const/4 v3, 0x0

    iput v3, v2, Landroid/webkit/WebViewCore;->m_bPauseDrawContentPictureCount:I

    .line 10458
    :cond_30
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebView;->access$2100(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->gethTCMultiTouchInst()Landroid/webkit/ZoomManager$HTCMultiTouch;

    move-result-object v2

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_bUpdateSizeFinish:Z

    .line 10461
    :cond_31
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v2}, Landroid/webkit/WebView;->access$600(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v2

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 10464
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->recoverBackground()V

    goto/16 :goto_0

    .line 10472
    :sswitch_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebView;->access$2100(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->getZoomType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebView;->access$2100(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->gethTCMultiTouchInst()Landroid/webkit/ZoomManager$HTCMultiTouch;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebView;->access$2100(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->gethTCMultiTouchInst()Landroid/webkit/ZoomManager$HTCMultiTouch;

    move-result-object v2

    iget-boolean v2, v2, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_inMultiTouchMode:Z

    if-nez v2, :cond_0

    .line 10474
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    if-eqz v2, :cond_32

    .line 10475
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/webkit/HTCWebCore;->nativeSetSkiaFontCacheSize(J)V

    .line 10477
    :cond_32
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebView;->access$2100(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->gethTCMultiTouchInst()Landroid/webkit/ZoomManager$HTCMultiTouch;

    move-result-object v2

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/webkit/ZoomManager$HTCMultiTouch;->m_bMTEnding:Z

    goto/16 :goto_0

    .line 10482
    :sswitch_2d
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v38

    .line 10483
    .local v38, setLoading:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget-boolean v2, v2, Landroid/webkit/WebView;->m_bIsLoading:Z

    move/from16 v0, v38

    if-eq v2, v0, :cond_0

    .line 10484
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move/from16 v0, v38

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->setIsLoading(Z)V

    goto/16 :goto_0

    .line 10488
    .end local v38           #setLoading:Z
    :sswitch_2e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->enablePowerSavePolicy()V
    invoke-static {v2}, Landroid/webkit/WebView;->access$11000(Landroid/webkit/WebView;)V

    goto/16 :goto_0

    .line 10492
    :sswitch_2f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mAccessibilityInjector:Landroid/webkit/AccessibilityInjector;
    invoke-static {v2}, Landroid/webkit/WebView;->access$11100(Landroid/webkit/WebView;)Landroid/webkit/AccessibilityInjector;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10493
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Ljava/lang/String;

    .line 10494
    .local v37, selectionString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mAccessibilityInjector:Landroid/webkit/AccessibilityInjector;
    invoke-static {v2}, Landroid/webkit/WebView;->access$11100(Landroid/webkit/WebView;)Landroid/webkit/AccessibilityInjector;

    move-result-object v2

    move-object/from16 v0, v37

    invoke-virtual {v2, v0}, Landroid/webkit/AccessibilityInjector;->onSelectionStringChange(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 10500
    .end local v37           #selectionString:Ljava/lang/String;
    :sswitch_30
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Ljava/util/ArrayList;

    .line 10501
    .local v34, rects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, v34

    #calls: Landroid/webkit/WebView;->setTouchHighlightRects(Ljava/util/ArrayList;)V
    invoke-static {v2, v0}, Landroid/webkit/WebView;->access$11200(Landroid/webkit/WebView;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 10505
    .end local v34           #rects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    :sswitch_31
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Landroid/webkit/WebView$SaveWebArchiveMessage;

    .line 10506
    .local v35, saveMessage:Landroid/webkit/WebView$SaveWebArchiveMessage;
    move-object/from16 v0, v35

    iget-object v2, v0, Landroid/webkit/WebView$SaveWebArchiveMessage;->mCallback:Landroid/webkit/ValueCallback;

    if-eqz v2, :cond_0

    .line 10507
    move-object/from16 v0, v35

    iget-object v2, v0, Landroid/webkit/WebView$SaveWebArchiveMessage;->mCallback:Landroid/webkit/ValueCallback;

    move-object/from16 v0, v35

    iget-object v3, v0, Landroid/webkit/WebView$SaveWebArchiveMessage;->mResultFile:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 10512
    .end local v35           #saveMessage:Landroid/webkit/WebView$SaveWebArchiveMessage;
    :sswitch_32
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/webkit/WebViewCore$AutoFillData;

    #setter for: Landroid/webkit/WebView;->mAutoFillData:Landroid/webkit/WebViewCore$AutoFillData;
    invoke-static {v3, v2}, Landroid/webkit/WebView;->access$1002(Landroid/webkit/WebView;Landroid/webkit/WebViewCore$AutoFillData;)Landroid/webkit/WebViewCore$AutoFillData;

    .line 10513
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10514
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mAutoFillData:Landroid/webkit/WebViewCore$AutoFillData;
    invoke-static {v3}, Landroid/webkit/WebView;->access$1000(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore$AutoFillData;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebViewCore$AutoFillData;->getQueryId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebTextView;->setAutoFillable(I)V

    .line 10515
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->rebuildWebTextView()V

    goto/16 :goto_0

    .line 10520
    :sswitch_33
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10523
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebTextView;->setAdapterCustom(Landroid/webkit/WebTextView$AutoCompleteAdapter;)V

    goto/16 :goto_0

    .line 10528
    :sswitch_34
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    #calls: Landroid/webkit/WebView;->nativeSelectAt(II)V
    invoke-static {v2, v3, v4}, Landroid/webkit/WebView;->access$11300(Landroid/webkit/WebView;II)V

    goto/16 :goto_0

    .line 10533
    :sswitch_35
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->updateContentFromMessage(I)V

    goto/16 :goto_0

    .line 10537
    :sswitch_36
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->nativeAllowZoomTransition()V

    goto/16 :goto_0

    .line 10540
    :sswitch_37
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-static {v2}, Landroid/webkit/WebViewPerfUtil;->disablePerfWakeLock(Landroid/webkit/WebView;)V

    goto/16 :goto_0

    .line 10543
    :sswitch_38
    const-string v2, "KENLOG"

    const-string v3, "<WebView> SET_WILL_NOT_DRAW"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10544
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWillNotDraw(Z)V

    goto/16 :goto_0

    .line 10548
    :sswitch_39
    const-string v2, "KENLOG"

    const-string v3, "<WebView> SET_WILL_DRAW"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10549
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWillNotDraw(Z)V

    goto/16 :goto_0

    .line 10553
    :sswitch_3a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/webkit/WebView;->access$11400(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v3

    #calls: Landroid/webkit/WebView;->setupPackageListener(Landroid/content/Context;)V
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$11500(Landroid/webkit/WebView;Landroid/content/Context;)V

    .line 10554
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/webkit/WebView;->access$11600(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v2

    #calls: Landroid/webkit/WebView;->setupProxyListener(Landroid/content/Context;)V
    invoke-static {v2}, Landroid/webkit/WebView;->access$11700(Landroid/content/Context;)V

    .line 10556
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/webkit/WebView;->access$11800(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/webkit/WebViewThemeable;->getHighlightColor(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebView;->updateSelectionColors(IZ)V

    .line 10557
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v3}, Landroid/webkit/WebView;->access$600(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getWebSelectionType()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebSelectionType(I)V

    .line 10559
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->m_bIsBrowserApp:Z
    invoke-static {v3}, Landroid/webkit/WebView;->access$7400(Landroid/webkit/WebView;)Z

    move-result v3

    #calls: Landroid/webkit/WebView;->nativeSetIsBrowser(Z)V
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$11900(Landroid/webkit/WebView;Z)V

    goto/16 :goto_0

    .line 10562
    :sswitch_3b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->sendViewSizeZoom(Z)Z

    goto/16 :goto_0

    .line 10566
    :sswitch_3c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v47

    .line 10567
    .local v47, webSettings:Landroid/webkit/WebSettings;
    sget-object v2, Landroid/webkit/WebSettings$RenderPriority;->NORMAL:Landroid/webkit/WebSettings$RenderPriority;

    move-object/from16 v0, v47

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    goto/16 :goto_1

    .line 9771
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_6
        0x4 -> :sswitch_7
        0x5 -> :sswitch_8
        0x6 -> :sswitch_18
        0x8 -> :sswitch_1e
        0x9 -> :sswitch_1f
        0xa -> :sswitch_3
        0xb -> :sswitch_4
        0xc -> :sswitch_0
        0x65 -> :sswitch_9
        0x69 -> :sswitch_d
        0x6a -> :sswitch_15
        0x6b -> :sswitch_e
        0x6c -> :sswitch_f
        0x6d -> :sswitch_a
        0x6e -> :sswitch_14
        0x6f -> :sswitch_16
        0x70 -> :sswitch_11
        0x71 -> :sswitch_28
        0x72 -> :sswitch_19
        0x73 -> :sswitch_1b
        0x74 -> :sswitch_1a
        0x75 -> :sswitch_17
        0x76 -> :sswitch_1c
        0x77 -> :sswitch_20
        0x78 -> :sswitch_23
        0x79 -> :sswitch_24
        0x7a -> :sswitch_25
        0x7b -> :sswitch_c
        0x7c -> :sswitch_12
        0x7d -> :sswitch_13
        0x7e -> :sswitch_1d
        0x7f -> :sswitch_29
        0x80 -> :sswitch_10
        0x81 -> :sswitch_2a
        0x82 -> :sswitch_2f
        0x83 -> :sswitch_30
        0x84 -> :sswitch_31
        0x85 -> :sswitch_32
        0x86 -> :sswitch_33
        0x87 -> :sswitch_34
        0x88 -> :sswitch_21
        0x89 -> :sswitch_22
        0x8a -> :sswitch_5
        0x8b -> :sswitch_b
        0x8c -> :sswitch_3c
        0xc8 -> :sswitch_2b
        0xc9 -> :sswitch_2c
        0xcc -> :sswitch_2d
        0xcd -> :sswitch_35
        0x12c -> :sswitch_36
        0x12d -> :sswitch_37
        0x12e -> :sswitch_38
        0x12f -> :sswitch_39
        0x130 -> :sswitch_3a
        0x131 -> :sswitch_3b
        0x136 -> :sswitch_26
        0x137 -> :sswitch_27
        0x138 -> :sswitch_2e
    .end sparse-switch
.end method
