.class final Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;
.super Landroid/os/Handler;
.source "HtcTelephonyInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/HtcTelephonyInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MainThreadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/HtcTelephonyInternal;)V
    .locals 0
    .parameter

    .prologue
    .line 327
    iput-object p1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/HtcTelephonyInternal;Lcom/android/internal/telephony/HtcTelephonyInternal$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 327
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;-><init>(Lcom/android/internal/telephony/HtcTelephonyInternal;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 88
    .parameter "msg"

    .prologue
    .line 335
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 1656
    :goto_0
    return-void

    .line 337
    :sswitch_0
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "send cw query cave"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 339
    .local v76, request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x67

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/Phone;->queryCAVE(Landroid/os/Message;)V

    goto :goto_0

    .line 343
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_1
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "get cw query cave result"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 345
    .local v37, ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 346
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 347
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    .line 348
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 353
    :goto_1
    monitor-enter v76

    .line 354
    :try_start_0
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 355
    monitor-exit v76

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v76
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 350
    :cond_0
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 351
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 358
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_2
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "send cw request cave"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 360
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v76

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v74, v0

    check-cast v74, Ljava/lang/String;

    .line 361
    .local v74, randu:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x65

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    move-object/from16 v0, v74

    invoke-interface {v3, v0, v4}, Lcom/android/internal/telephony/Phone;->requestCAVE(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 366
    .end local v74           #randu:Ljava/lang/String;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_3
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "get cw request cave result"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 368
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 369
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 370
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    .line 371
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    move-object/from16 v82, v3

    check-cast v82, [Ljava/lang/String;

    .line 372
    .local v82, strArr:[Ljava/lang/String;
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v82

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const/16 v60, 0x0

    .local v60, i:I
    :goto_2
    move-object/from16 v0, v82

    array-length v3, v0

    move/from16 v0, v60

    if-ge v0, v3, :cond_1

    .line 374
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "strArr["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v60

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v82, v60

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    add-int/lit8 v60, v60, 0x1

    goto :goto_2

    .line 377
    :cond_1
    const/4 v3, 0x0

    aget-object v3, v82, v3

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 379
    .end local v60           #i:I
    .end local v82           #strArr:[Ljava/lang/String;
    :cond_2
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v3, :cond_3

    .line 380
    new-instance v3, Ljava/lang/String;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 383
    :cond_3
    monitor-enter v76

    .line 384
    :try_start_1
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 385
    monitor-exit v76

    goto/16 :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v76
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v3

    .line 389
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_4
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "send cw query MD5"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 391
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x6b

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/Phone;->queryMD5(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 395
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_5
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "get cw query MD5 result"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 397
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 398
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 399
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_4

    .line 400
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 405
    :goto_3
    monitor-enter v76

    .line 406
    :try_start_2
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 407
    monitor-exit v76

    goto/16 :goto_0

    :catchall_2
    move-exception v3

    monitor-exit v76
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v3

    .line 402
    :cond_4
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 403
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 410
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_6
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "send cw request MD5"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 412
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    check-cast v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v51, v3, v4

    .line 413
    .local v51, chapid:Ljava/lang/String;
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    check-cast v3, [Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v50, v3, v4

    .line 414
    .local v50, chapchallengelength:Ljava/lang/String;
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    check-cast v3, [Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v49, v3, v4

    .line 415
    .local v49, chapchallenge:Ljava/lang/String;
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "chapid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v51

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; chapchallengelength:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v50

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; chapchallenge:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x69

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    move-object/from16 v0, v51

    move-object/from16 v1, v50

    move-object/from16 v2, v49

    invoke-interface {v3, v0, v1, v2, v4}, Lcom/android/internal/telephony/Phone;->requestMD5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 420
    .end local v49           #chapchallenge:Ljava/lang/String;
    .end local v50           #chapchallengelength:Ljava/lang/String;
    .end local v51           #chapid:Ljava/lang/String;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_7
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "get cw request MD5 result"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 422
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 423
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 424
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_7

    .line 425
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    move-object/from16 v82, v3

    check-cast v82, [Ljava/lang/String;

    .line 426
    .restart local v82       #strArr:[Ljava/lang/String;
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v82

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    const/16 v60, 0x0

    .restart local v60       #i:I
    :goto_4
    move-object/from16 v0, v82

    array-length v3, v0

    move/from16 v0, v60

    if-ge v0, v3, :cond_5

    .line 428
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "strArr["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v60

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v82, v60

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    add-int/lit8 v60, v60, 0x1

    goto :goto_4

    .line 430
    :cond_5
    const/4 v3, 0x0

    aget-object v3, v82, v3

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 434
    .end local v60           #i:I
    .end local v82           #strArr:[Ljava/lang/String;
    :goto_5
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v3, :cond_6

    .line 435
    new-instance v3, Ljava/lang/String;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 438
    :cond_6
    monitor-enter v76

    .line 439
    :try_start_3
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 440
    monitor-exit v76

    goto/16 :goto_0

    :catchall_3
    move-exception v3

    monitor-exit v76
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v3

    .line 432
    :cond_7
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 444
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_8
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "send cw query VPM"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 446
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x6f

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/Phone;->queryMD5(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 450
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_9
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "get cw query VPM result"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 452
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 453
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 454
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_8

    .line 455
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 461
    :goto_6
    monitor-enter v76

    .line 462
    :try_start_4
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 463
    monitor-exit v76

    goto/16 :goto_0

    :catchall_4
    move-exception v3

    monitor-exit v76
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v3

    .line 457
    :cond_8
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 458
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 466
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_a
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "send cw request VPM"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 468
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x6d

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/Phone;->requestVPM(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 472
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_b
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "get cw request VPM result"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 474
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 475
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 476
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_a

    .line 477
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    move-object/from16 v82, v3

    check-cast v82, [Ljava/lang/String;

    .line 478
    .restart local v82       #strArr:[Ljava/lang/String;
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v82

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    const/16 v60, 0x0

    .restart local v60       #i:I
    :goto_7
    move-object/from16 v0, v82

    array-length v3, v0

    move/from16 v0, v60

    if-ge v0, v3, :cond_9

    .line 480
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "strArr["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v60

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v82, v60

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    add-int/lit8 v60, v60, 0x1

    goto :goto_7

    .line 483
    :cond_9
    const/4 v3, 0x0

    aget-object v3, v82, v3

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 485
    .end local v60           #i:I
    .end local v82           #strArr:[Ljava/lang/String;
    :cond_a
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v3, :cond_b

    .line 486
    new-instance v3, Ljava/lang/String;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 489
    :cond_b
    monitor-enter v76

    .line 490
    :try_start_5
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 491
    monitor-exit v76

    goto/16 :goto_0

    :catchall_5
    move-exception v3

    monitor-exit v76
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw v3

    .line 495
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_c
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "send cw request SSD UPDATE"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 497
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v76

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v73, v0

    check-cast v73, Ljava/lang/String;

    .line 498
    .local v73, randssd:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x71

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    move-object/from16 v0, v73

    invoke-interface {v3, v0, v4}, Lcom/android/internal/telephony/Phone;->requestSSDUpdate(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 502
    .end local v73           #randssd:Ljava/lang/String;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_d
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "get cw request SSD UPDATE result"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 504
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 505
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 506
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_d

    .line 507
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    move-object/from16 v82, v3

    check-cast v82, [Ljava/lang/String;

    .line 508
    .restart local v82       #strArr:[Ljava/lang/String;
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v82

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const/16 v60, 0x0

    .restart local v60       #i:I
    :goto_8
    move-object/from16 v0, v82

    array-length v3, v0

    move/from16 v0, v60

    if-ge v0, v3, :cond_c

    .line 510
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "strArr["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v60

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v82, v60

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    add-int/lit8 v60, v60, 0x1

    goto :goto_8

    .line 512
    :cond_c
    const/4 v3, 0x0

    aget-object v3, v82, v3

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 514
    .end local v60           #i:I
    .end local v82           #strArr:[Ljava/lang/String;
    :cond_d
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v3, :cond_e

    .line 515
    new-instance v3, Ljava/lang/String;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 518
    :cond_e
    monitor-enter v76

    .line 519
    :try_start_6
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 520
    monitor-exit v76

    goto/16 :goto_0

    :catchall_6
    move-exception v3

    monitor-exit v76
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    throw v3

    .line 523
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_e
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "send cw query SSD UPDATE"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 525
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x73

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/Phone;->queryMD5(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 529
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_f
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "get cw query SSD UPDATE"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 531
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 532
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 533
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_f

    .line 534
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 540
    :goto_9
    monitor-enter v76

    .line 541
    :try_start_7
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 542
    monitor-exit v76

    goto/16 :goto_0

    :catchall_7
    move-exception v3

    monitor-exit v76
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    throw v3

    .line 536
    :cond_f
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 537
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 545
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_10
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "send cw request SSD UPDATE CONFIRM"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 547
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v76

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Ljava/lang/String;

    .line 548
    .local v42, authbs:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x75

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    move-object/from16 v0, v42

    invoke-interface {v3, v0, v4}, Lcom/android/internal/telephony/Phone;->requestSSDUpdateConfirm(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 557
    .end local v42           #authbs:Ljava/lang/String;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_11
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 558
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 559
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 560
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_10

    .line 561
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "get cw request SSD UPDATE CONFIRM result: success"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    new-instance v3, Ljava/lang/String;

    const-string v4, "1"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 568
    :goto_a
    monitor-enter v76

    .line 569
    :try_start_8
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 570
    monitor-exit v76

    goto/16 :goto_0

    :catchall_8
    move-exception v3

    monitor-exit v76
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    throw v3

    .line 564
    :cond_10
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get cw request SSD UPDATE CONFIRM result: fail. exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    new-instance v3, Ljava/lang/String;

    const-string v4, "0"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_a

    .line 574
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_12
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "send CMD_HTC_CW_QUERY_UIMAUTH"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 576
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x77

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/Phone;->queryUIMAUTH(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 581
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_13
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "get CMD_HTC_CW_QUERY_UIMAUTH result!"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 583
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 584
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 585
    const/16 v43, 0x0

    .line 587
    .local v43, authenSupported:I
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_15

    .line 588
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    move-object/from16 v86, v3

    check-cast v86, [Ljava/lang/String;

    .line 589
    .local v86, uimauth:[Ljava/lang/String;
    const-string v87, ""

    .line 590
    .local v87, uimauthList:Ljava/lang/String;
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "len of uimauth:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v86

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    const/16 v60, 0x0

    .restart local v60       #i:I
    :goto_b
    move-object/from16 v0, v86

    array-length v3, v0

    move/from16 v0, v60

    if-ge v0, v3, :cond_14

    .line 592
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v87

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v86, v60

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v87

    .line 593
    aget-object v3, v86, v60

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "cave"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 594
    add-int/lit8 v43, v43, 0x1

    .line 591
    :cond_11
    :goto_c
    add-int/lit8 v60, v60, 0x1

    goto :goto_b

    .line 595
    :cond_12
    aget-object v3, v86, v60

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "md5"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 596
    add-int/lit8 v43, v43, 0x2

    goto :goto_c

    .line 597
    :cond_13
    aget-object v3, v86, v60

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "akacave"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 598
    add-int/lit8 v43, v43, 0x4

    goto :goto_c

    .line 601
    :cond_14
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uimauthList"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v87

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    .end local v60           #i:I
    .end local v86           #uimauth:[Ljava/lang/String;
    .end local v87           #uimauthList:Ljava/lang/String;
    :goto_d
    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 607
    monitor-enter v76

    .line 608
    :try_start_9
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 609
    monitor-exit v76

    goto/16 :goto_0

    :catchall_9
    move-exception v3

    monitor-exit v76
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    throw v3

    .line 603
    :cond_15
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 614
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v43           #authenSupported:I
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_14
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "send CMD_HTC_CW_REQUEST_GET_VOLTE_SIP_REG_FAILURE"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 616
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x79

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/Phone;->requestGetVolteSipRegFailure(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 620
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_15
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "get CMD_HTC_CW_REQUEST_GET_VOLTE_SIP_REG_FAILURE_RESULT result!"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 622
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 623
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 624
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_16

    .line 625
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object/from16 v75, v3

    check-cast v75, [I

    .line 626
    .local v75, registration:[I
    const/4 v3, 0x0

    aget v3, v75, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 633
    .end local v75           #registration:[I
    :goto_e
    monitor-enter v76

    .line 634
    :try_start_a
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 635
    monitor-exit v76

    goto/16 :goto_0

    :catchall_a
    move-exception v3

    monitor-exit v76
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    throw v3

    .line 628
    :cond_16
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 629
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 638
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_16
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "send CMD_HTC_CW_REQUEST_GET_PCSCF_ADDRESSES"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 640
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v76

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v62, v0

    check-cast v62, Ljava/lang/String;

    .line 641
    .local v62, ifcname:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x7c

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    move-object/from16 v0, v62

    invoke-interface {v3, v0, v4}, Lcom/android/internal/telephony/Phone;->requestGetPcscfAddresses(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 645
    .end local v62           #ifcname:Ljava/lang/String;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_17
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "get CMD_HTC_CW_REQUEST_GET_PCSCF_ADDRESSES_RESULT"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 647
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 648
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 649
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_19

    .line 650
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    move-object/from16 v82, v3

    check-cast v82, [Ljava/lang/String;

    .line 651
    .restart local v82       #strArr:[Ljava/lang/String;
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v82

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    const/16 v60, 0x0

    .restart local v60       #i:I
    :goto_f
    move-object/from16 v0, v82

    array-length v3, v0

    move/from16 v0, v60

    if-ge v0, v3, :cond_17

    .line 653
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "strArr["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v60

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v82, v60

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    add-int/lit8 v60, v60, 0x1

    goto :goto_f

    .line 655
    :cond_17
    move-object/from16 v0, v82

    move-object/from16 v1, v76

    iput-object v0, v1, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 659
    .end local v60           #i:I
    .end local v82           #strArr:[Ljava/lang/String;
    :goto_10
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v3, :cond_18

    .line 660
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 663
    :cond_18
    monitor-enter v76

    .line 664
    :try_start_b
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 665
    monitor-exit v76

    goto/16 :goto_0

    :catchall_b
    move-exception v3

    monitor-exit v76
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    throw v3

    .line 657
    :cond_19
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 670
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_18
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 671
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v76

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;

    .line 673
    .local v39, argument:Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;
    const/16 v3, 0x7e

    move-object/from16 v0, p0

    move-object/from16 v1, v76

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 675
    .local v11, onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    move-object/from16 v0, v39

    iget v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;->cla:I

    move-object/from16 v0, v39

    iget v5, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;->command:I

    move-object/from16 v0, v39

    iget v6, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;->channel:I

    move-object/from16 v0, v39

    iget v7, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;->p1:I

    move-object/from16 v0, v39

    iget v8, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;->p2:I

    move-object/from16 v0, v39

    iget v9, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;->p3:I

    move-object/from16 v0, v39

    iget-object v10, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;->data:Ljava/lang/String;

    invoke-virtual/range {v3 .. v11}, Lcom/android/internal/telephony/IccCard;->exchangeAPDU(IIIIIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 681
    .end local v11           #onCompleted:Landroid/os/Message;
    .end local v39           #argument:Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_19
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 682
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 683
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1a

    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_1a

    .line 684
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 688
    :goto_11
    monitor-enter v76

    .line 689
    :try_start_c
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 690
    monitor-exit v76

    goto/16 :goto_0

    :catchall_c
    move-exception v3

    monitor-exit v76
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    throw v3

    .line 686
    :cond_1a
    new-instance v4, Lcom/android/internal/telephony/IccIoResult;

    const/16 v5, 0x6f

    const/4 v6, 0x0

    const/4 v3, 0x0

    check-cast v3, [B

    invoke-direct {v4, v5, v6, v3}, Lcom/android/internal/telephony/IccIoResult;-><init>(II[B)V

    move-object/from16 v0, v76

    iput-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_11

    .line 693
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_1a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 694
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/16 v3, 0x80

    move-object/from16 v0, p0

    move-object/from16 v1, v76

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 695
    .restart local v11       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3, v11}, Lcom/android/internal/telephony/IccCard;->openLogicalChannel(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 699
    .end local v11           #onCompleted:Landroid/os/Message;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_1b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 700
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 702
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object/from16 v48, v3

    check-cast v48, [I

    .line 703
    .local v48, channelInfo:[I
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1b

    if-eqz v48, :cond_1b

    move-object/from16 v0, v48

    array-length v3, v0

    if-lez v3, :cond_1b

    .line 704
    new-instance v3, Ljava/lang/Integer;

    const/4 v4, 0x0

    aget v4, v48, v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 713
    :goto_12
    monitor-enter v76

    .line 714
    :try_start_d
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 715
    monitor-exit v76

    goto/16 :goto_0

    :catchall_d
    move-exception v3

    monitor-exit v76
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    throw v3

    .line 706
    :cond_1b
    new-instance v3, Ljava/lang/Integer;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 707
    if-eqz v48, :cond_1c

    move-object/from16 v0, v48

    array-length v3, v0

    if-lez v3, :cond_1c

    .line 708
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    const/4 v4, 0x0

    aget v4, v48, v4

    #setter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->lastError:I
    invoke-static {v3, v4}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$102(Lcom/android/internal/telephony/HtcTelephonyInternal;I)I

    goto :goto_12

    .line 710
    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    const/4 v4, 0x1

    #setter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->lastError:I
    invoke-static {v3, v4}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$102(Lcom/android/internal/telephony/HtcTelephonyInternal;I)I

    goto :goto_12

    .line 718
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v48           #channelInfo:[I
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_1c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 719
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/16 v3, 0x82

    move-object/from16 v0, p0

    move-object/from16 v1, v76

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 721
    .restart local v11       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3, v11}, Lcom/android/internal/telephony/IccCard;->closeLogicalChannel(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 726
    .end local v11           #onCompleted:Landroid/os/Message;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_1d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 727
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 728
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1d

    .line 729
    new-instance v3, Ljava/lang/Integer;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 733
    :goto_13
    monitor-enter v76

    .line 734
    :try_start_e
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 735
    monitor-exit v76

    goto/16 :goto_0

    :catchall_e
    move-exception v3

    monitor-exit v76
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    throw v3

    .line 731
    :cond_1d
    new-instance v3, Ljava/lang/Integer;

    const/4 v4, -0x1

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_13

    .line 738
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_1e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 739
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v76

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v72, v0

    check-cast v72, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;

    .line 740
    .local v72, parameters:Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;
    const/16 v3, 0x97

    move-object/from16 v0, p0

    move-object/from16 v1, v76

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 741
    .restart local v11       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    move-object/from16 v0, v72

    iget v5, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;->cla:I

    move-object/from16 v0, v72

    iget v6, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;->command:I

    move-object/from16 v0, v72

    iget v7, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;->p1:I

    move-object/from16 v0, v72

    iget v8, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;->p2:I

    move-object/from16 v0, v72

    iget v9, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;->p3:I

    move-object/from16 v0, v72

    iget-object v10, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;->data:Ljava/lang/String;

    invoke-virtual/range {v4 .. v11}, Lcom/android/internal/telephony/IccCard;->exchangeSimIO(IIIIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 747
    .end local v11           #onCompleted:Landroid/os/Message;
    .end local v72           #parameters:Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_1f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 748
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 749
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1f

    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_1f

    .line 750
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 751
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    const/4 v4, 0x0

    #setter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->lastError:I
    invoke-static {v3, v4}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$102(Lcom/android/internal/telephony/HtcTelephonyInternal;I)I

    .line 761
    :cond_1e
    :goto_14
    monitor-enter v76

    :try_start_f
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v76

    goto/16 :goto_0

    :catchall_f
    move-exception v3

    monitor-exit v76
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    throw v3

    .line 753
    :cond_1f
    new-instance v4, Lcom/android/internal/telephony/IccIoResult;

    const/16 v5, 0x6f

    const/4 v6, 0x0

    const/4 v3, 0x0

    check-cast v3, [B

    invoke-direct {v4, v5, v6, v3}, Lcom/android/internal/telephony/IccIoResult;-><init>(II[B)V

    move-object/from16 v0, v76

    iput-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 754
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    const/4 v4, 0x1

    #setter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->lastError:I
    invoke-static {v3, v4}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$102(Lcom/android/internal/telephony/HtcTelephonyInternal;I)I

    .line 755
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1e

    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_1e

    .line 756
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->INVALID_PARAMETER:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v3, v4, :cond_1e

    .line 757
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    const/4 v4, 0x5

    #setter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->lastError:I
    invoke-static {v3, v4}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$102(Lcom/android/internal/telephony/HtcTelephonyInternal;I)I

    goto :goto_14

    .line 768
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_20
    const-string v3, "HtcTelephonyInternal"

    const-string v4, ">> CMD_HTC_REQUEST_UICC_AUTHENTICATION"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 770
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v76

    iget-object v7, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .line 771
    .local v7, uiccAuthParam:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$200(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/HtcIsimData;->mAid:Ljava/lang/String;

    const-string v5, "7FFF"

    const-string v6, "11"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v8, v8, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v9, 0x86

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v8, v9, v10}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-interface/range {v3 .. v8}, Lcom/android/internal/telephony/CommandsInterface;->requestQueryQmiUimAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 780
    .end local v7           #uiccAuthParam:Ljava/lang/String;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_21
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "<< CMD_HTC_REQUEST_UICC_AUTHENTICATION_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 782
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 783
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v61, v0

    check-cast v61, Lcom/android/internal/telephony/IccIoResult;

    .line 784
    .local v61, iccIoResult:Lcom/android/internal/telephony/IccIoResult;
    const/4 v3, 0x0

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 785
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_21

    .line 786
    new-instance v78, Landroid/os/Bundle;

    invoke-direct/range {v78 .. v78}, Landroid/os/Bundle;-><init>()V

    .line 787
    .local v78, result:Landroid/os/Bundle;
    const-string v3, "sw1"

    move-object/from16 v0, v61

    iget v4, v0, Lcom/android/internal/telephony/IccIoResult;->sw1:I

    move-object/from16 v0, v78

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 788
    const-string v3, "sw2"

    move-object/from16 v0, v61

    iget v4, v0, Lcom/android/internal/telephony/IccIoResult;->sw2:I

    move-object/from16 v0, v78

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 789
    const-string v3, "payload"

    move-object/from16 v0, v61

    iget-object v4, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v0, v78

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 790
    move-object/from16 v0, v78

    move-object/from16 v1, v76

    iput-object v0, v1, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 795
    .end local v78           #result:Landroid/os/Bundle;
    :goto_15
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v3, :cond_20

    .line 796
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "result is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 800
    :cond_20
    monitor-enter v76

    .line 801
    :try_start_10
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 802
    monitor-exit v76

    goto/16 :goto_0

    :catchall_10
    move-exception v3

    monitor-exit v76
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_10

    throw v3

    .line 792
    :cond_21
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 806
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v61           #iccIoResult:Lcom/android/internal/telephony/IccIoResult;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_22
    const-string v3, "HtcTelephonyInternal"

    const-string v4, ">> CMD_HTC_GET_SECTOR_ID"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 808
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$200(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v4

    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v5, v5, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v6, 0x84

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->requestGetSectorID(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 812
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_23
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "<< CMD_HTC_GET_SECTOR_ID_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 814
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 815
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 816
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_23

    .line 817
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 822
    :goto_16
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v3, :cond_22

    .line 823
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "result is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 827
    :cond_22
    monitor-enter v76

    .line 828
    :try_start_11
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 829
    monitor-exit v76

    goto/16 :goto_0

    :catchall_11
    move-exception v3

    monitor-exit v76
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_11

    throw v3

    .line 819
    :cond_23
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 834
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_24
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_SIM_GSM_AUTH"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 836
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v76

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v59, v0

    check-cast v59, Landroid/os/Bundle;

    .line 837
    .local v59, gsmArgument:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$200(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "rand"

    move-object/from16 v0, v59

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v8, v8, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v9, 0xb4

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v8, v9, v10}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-interface {v3, v4, v5, v6, v8}, Lcom/android/internal/telephony/CommandsInterface;->uiccAuthenticate(I[B[BLandroid/os/Message;)V

    goto/16 :goto_0

    .line 844
    .end local v59           #gsmArgument:Landroid/os/Bundle;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_25
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_SIM_GSM_AUTH_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 846
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 847
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 848
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_25

    .line 849
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 854
    :goto_17
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v3, :cond_24

    .line 855
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "result is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 859
    :cond_24
    monitor-enter v76

    .line 860
    :try_start_12
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 861
    monitor-exit v76

    goto/16 :goto_0

    :catchall_12
    move-exception v3

    monitor-exit v76
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_12

    throw v3

    .line 851
    :cond_25
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 867
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_26
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_USIM_AKA_AUTH"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 869
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v76

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Landroid/os/Bundle;

    .line 870
    .local v36, akaArgument:Landroid/os/Bundle;
    const/16 v41, 0x1

    .line 871
    .local v41, auth_type:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$200(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    const-string v4, "rand"

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    const-string v5, "autn"

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v6, v6, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v8, 0xb0

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v6, v8, v9}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move/from16 v0, v41

    invoke-interface {v3, v0, v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->uiccAuthenticate(I[B[BLandroid/os/Message;)V

    goto/16 :goto_0

    .line 876
    .end local v36           #akaArgument:Landroid/os/Bundle;
    .end local v41           #auth_type:I
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_27
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_USIM_AKA_AUTH_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 878
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 879
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 880
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_27

    .line 881
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 886
    :goto_18
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v3, :cond_26

    .line 887
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "result is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 891
    :cond_26
    monitor-enter v76

    .line 892
    :try_start_13
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 893
    monitor-exit v76

    goto/16 :goto_0

    :catchall_13
    move-exception v3

    monitor-exit v76
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_13

    throw v3

    .line 883
    :cond_27
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 899
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_28
    const-string v3, "HtcTelephonyInternal"

    const-string v4, ">> CMD_HTC_PERMANENT_DETACH_LTE"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$200(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    const-string v4, "C8260A0000"

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v6, v6, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v8, 0x89

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v6, v8, v9}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->requestHtcDmCommandEx(Ljava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 903
    :sswitch_29
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "<< CMD_HTC_PERMANENT_DETACH_LTE_STEP2"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 905
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 906
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 907
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    const/4 v4, 0x0

    #setter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mOldNV_10:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$302(Lcom/android/internal/telephony/HtcTelephonyInternal;Ljava/lang/String;)Ljava/lang/String;

    .line 908
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_29

    .line 909
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    #setter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mOldNV_10:Ljava/lang/String;
    invoke-static {v4, v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$302(Lcom/android/internal/telephony/HtcTelephonyInternal;Ljava/lang/String;)Ljava/lang/String;

    .line 910
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mOldNV_10: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mOldNV_10:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300(Lcom/android/internal/telephony/HtcTelephonyInternal;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    :goto_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mOldNV_10:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300(Lcom/android/internal/telephony/HtcTelephonyInternal;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_28

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mOldNV_10:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300(Lcom/android/internal/telephony/HtcTelephonyInternal;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xe

    if-ge v3, v4, :cond_2a

    .line 917
    :cond_28
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Can not get NV#10"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 918
    monitor-enter v76

    .line 919
    :try_start_14
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 920
    monitor-exit v76

    goto/16 :goto_0

    :catchall_14
    move-exception v3

    monitor-exit v76
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_14

    throw v3

    .line 912
    :cond_29
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 923
    :cond_2a
    const-string v3, "HtcTelephonyInternal"

    const-string v4, ">> CMD_HTC_PERMANENT_DETACH_LTE_STEP3"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$200(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    const/4 v4, 0x4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v5, v5, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v6, 0x8a

    move-object/from16 v0, v76

    invoke-virtual {v5, v6, v0}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 928
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_2a
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "<< CMD_HTC_PERMANENT_DETACH_LTE_STEP3"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 930
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 931
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 932
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2b

    .line 933
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ">> CMD_HTC_PERMANENT_DETACH_LTE_DONE, mOldNV_10.substring(10): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mOldNV_10:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300(Lcom/android/internal/telephony/HtcTelephonyInternal;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xa

    const/16 v8, 0xe

    invoke-virtual {v5, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$200(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "C8270A0000"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mOldNV_10:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300(Lcom/android/internal/telephony/HtcTelephonyInternal;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xa

    const/16 v8, 0xe

    invoke-virtual {v5, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v6, v6, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v8, 0x8b

    move-object/from16 v0, v76

    invoke-virtual {v6, v8, v0}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->requestHtcDmCommandEx(Ljava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 937
    :cond_2b
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Failed to set PreferNetwork to CDMA/EvDo!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 939
    monitor-enter v76

    .line 940
    :try_start_15
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 941
    monitor-exit v76

    goto/16 :goto_0

    :catchall_15
    move-exception v3

    monitor-exit v76
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_15

    throw v3

    .line 945
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_2b
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "<< CMD_HTC_PERMANENT_DETACH_LTE_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 947
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 948
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2c

    .line 949
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    :cond_2c
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2d

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_1a
    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 952
    monitor-enter v76

    .line 953
    :try_start_16
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 954
    monitor-exit v76

    goto/16 :goto_0

    :catchall_16
    move-exception v3

    monitor-exit v76
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_16

    throw v3

    .line 951
    :cond_2d
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1a

    .line 959
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_2c
    const-string v3, "HtcTelephonyInternal"

    const-string v4, ">> CMD_HTC_REQUEST_AKA"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 961
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v76

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v65, v0

    check-cast v65, Lcom/android/internal/telephony/HtcTelephonyInternal$AuthRequest;

    .line 962
    .local v65, mAuth1:Lcom/android/internal/telephony/HtcTelephonyInternal$AuthRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$200(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetSessionId()I

    move-result v4

    move-object/from16 v0, v65

    iget-object v5, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$AuthRequest;->rand:[B

    move-object/from16 v0, v65

    iget-object v6, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$AuthRequest;->autn:[B

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v8, v8, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v9, 0x8d

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v8, v9, v10}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-interface {v3, v4, v5, v6, v8}, Lcom/android/internal/telephony/CommandsInterface;->uiccAkaAuthenticate(I[B[BLandroid/os/Message;)V

    goto/16 :goto_0

    .line 966
    .end local v65           #mAuth1:Lcom/android/internal/telephony/HtcTelephonyInternal$AuthRequest;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_2d
    const-string v3, "HtcTelephonyInternal"

    const-string v4, ">> CMD_HTC_REQUEST_GBA_BOOTSTRAP"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 968
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v76

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v66, v0

    check-cast v66, Lcom/android/internal/telephony/HtcTelephonyInternal$AuthRequest;

    .line 969
    .local v66, mAuth2:Lcom/android/internal/telephony/HtcTelephonyInternal$AuthRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$200(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetSessionId()I

    move-result v4

    move-object/from16 v0, v66

    iget-object v5, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$AuthRequest;->rand:[B

    move-object/from16 v0, v66

    iget-object v6, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$AuthRequest;->autn:[B

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v8, v8, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v9, 0x8f

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v8, v9, v10}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-interface {v3, v4, v5, v6, v8}, Lcom/android/internal/telephony/CommandsInterface;->uiccGbaAuthenticateBootstrap(I[B[BLandroid/os/Message;)V

    goto/16 :goto_0

    .line 973
    .end local v66           #mAuth2:Lcom/android/internal/telephony/HtcTelephonyInternal$AuthRequest;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_2e
    const-string v3, "HtcTelephonyInternal"

    const-string v4, ">> CMD_HTC_REQUEST_GBA_NAF"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 975
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, [B

    move-object/from16 v68, v3

    check-cast v68, [B

    .line 976
    .local v68, nafid:[B
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$200(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetSessionId()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v5, v5, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v6, 0x91

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move-object/from16 v0, v68

    invoke-interface {v3, v4, v0, v5}, Lcom/android/internal/telephony/CommandsInterface;->uiccGbaAuthenticateNaf(I[BLandroid/os/Message;)V

    goto/16 :goto_0

    .line 980
    .end local v68           #nafid:[B
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_2f
    const-string v3, "HtcTelephonyInternal"

    const-string v4, ">> CMD_HTC_REQUEST_WRITE_GBA_PARAM"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 982
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v76

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v67, v0

    check-cast v67, Lcom/android/internal/telephony/HtcTelephonyInternal$GbaBootStrapParam;

    .line 984
    .local v67, mParam:Lcom/android/internal/telephony/HtcTelephonyInternal$GbaBootStrapParam;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->QMI_CONFIG()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 985
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/HtcIsimData;->mAid:Ljava/lang/String;

    move-object/from16 v0, v67

    iget v5, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$GbaBootStrapParam;->mEfid:I

    move-object/from16 v0, v67

    iget-object v6, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$GbaBootStrapParam;->mData:[B

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v8, v8, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v9, 0x93

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v8, v9, v10}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v3, v4, v5, v6, v8}, Lcom/android/internal/telephony/IccFileHandler;->updateEFTransparent(Ljava/lang/String;I[BLandroid/os/Message;)V

    goto/16 :goto_0

    .line 990
    :cond_2e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v3

    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetSessionId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v67

    iget v5, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$GbaBootStrapParam;->mEfid:I

    move-object/from16 v0, v67

    iget-object v6, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$GbaBootStrapParam;->mData:[B

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v8, v8, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v9, 0x93

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v8, v9, v10}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v3, v4, v5, v6, v8}, Lcom/android/internal/telephony/IccFileHandler;->updateEFTransparent(Ljava/lang/String;I[BLandroid/os/Message;)V

    goto/16 :goto_0

    .line 1002
    .end local v67           #mParam:Lcom/android/internal/telephony/HtcTelephonyInternal$GbaBootStrapParam;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_30
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 1003
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1004
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1005
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_30

    .line 1006
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    :goto_1b
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v3, :cond_2f

    .line 1012
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "result is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1016
    :cond_2f
    monitor-enter v76

    .line 1017
    :try_start_17
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 1018
    monitor-exit v76

    goto/16 :goto_0

    :catchall_17
    move-exception v3

    monitor-exit v76
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_17

    throw v3

    .line 1008
    :cond_30
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_1b

    .line 1024
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_31
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1025
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v76

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v85, v0

    check-cast v85, Ljava/lang/Integer;

    .line 1026
    .local v85, type:Ljava/lang/Integer;
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_HTC_SET_PREFERRED_NETWORK_WIFI_CALL type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v85

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$200(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    invoke-virtual/range {v85 .. v85}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v5, v5, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v6, 0x95

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType_wifi_call(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1031
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    .end local v85           #type:Ljava/lang/Integer;
    :sswitch_32
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_SET_PREFERRED_NETWORK_WIFI_CALL_RESULT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 1033
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1034
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1035
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_31

    .line 1036
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1041
    :goto_1c
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_HTC_SET_PREFERRED_NETWORK_WIFI_CALL result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v76

    iget-object v5, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    monitor-enter v76

    .line 1044
    :try_start_18
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 1045
    monitor-exit v76

    goto/16 :goto_0

    :catchall_18
    move-exception v3

    monitor-exit v76
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_18

    throw v3

    .line 1038
    :cond_31
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_1c

    .line 1052
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_33
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1053
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0xac

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/Phone;->getRegistrationState(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1058
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_34
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 1059
    .restart local v37       #ar:Landroid/os/AsyncResult;
    const/16 v76, 0x0

    .line 1060
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    if-eqz v37, :cond_32

    .line 1062
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1063
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/16 v81, 0x0

    .line 1064
    .local v81, states:[Ljava/lang/String;
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v3, v3, Lcom/android/internal/telephony/RegStateResponse;

    if-eqz v3, :cond_33

    .line 1065
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/RegStateResponse;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/RegStateResponse;->getRecord(I)[Ljava/lang/String;

    move-result-object v81

    .line 1070
    :goto_1d
    move-object/from16 v0, v81

    array-length v3, v0

    const/16 v4, 0xe

    if-lt v3, v4, :cond_34

    const/16 v3, 0xd

    aget-object v3, v81, v3

    if-eqz v3, :cond_34

    .line 1073
    :try_start_19
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1074
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getLTELastErrorCode"

    const/16 v5, 0xd

    aget-object v5, v81, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_19} :catch_0

    .line 1087
    .end local v81           #states:[Ljava/lang/String;
    :cond_32
    :goto_1e
    monitor-enter v76

    .line 1088
    :try_start_1a
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 1089
    monitor-exit v76

    goto/16 :goto_0

    :catchall_19
    move-exception v3

    monitor-exit v76
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_19

    throw v3

    .line 1068
    .restart local v81       #states:[Ljava/lang/String;
    :cond_33
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    move-object/from16 v81, v3

    check-cast v81, [Ljava/lang/String;

    goto :goto_1d

    .line 1076
    :catch_0
    move-exception v56

    .line 1077
    .local v56, ex:Ljava/lang/NumberFormatException;
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_HTC_REQUEST_GET_LTE_LAST_ERROR_CODE_RESULT: error parsing: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v56

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 1081
    .end local v56           #ex:Ljava/lang/NumberFormatException;
    :cond_34
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Warning! Wrong number of parameters returned from CMD_HTC_REQUEST_GET_LTE_LAST_ERROR_CODE_RESULT: expected 14 or more strings and got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v81

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " strings"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1093
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    .end local v81           #states:[Ljava/lang/String;
    :sswitch_35
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1094
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v76

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Landroid/os/Bundle;

    .line 1096
    .local v46, bundle_smart:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$200(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    const-string v4, "arg1"

    const/4 v5, 0x0

    move-object/from16 v0, v46

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v5, v5, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v6, 0x6af

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->SetCdmaSmartNetwork(ZLandroid/os/Message;)V

    goto/16 :goto_0

    .line 1100
    .end local v46           #bundle_smart:Landroid/os/Bundle;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_36
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 1101
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1102
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_35

    .line 1103
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1105
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "setCdmaSmartNetwork"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1128
    :goto_1f
    monitor-enter v76

    .line 1129
    :try_start_1b
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 1130
    monitor-exit v76

    goto/16 :goto_0

    :catchall_1a
    move-exception v3

    monitor-exit v76
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1a

    throw v3

    .line 1109
    :cond_35
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object/from16 v78, v3

    check-cast v78, [I

    .line 1111
    .local v78, result:[I
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1112
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v5, "setCdmaSmartNetwork"

    const/4 v4, 0x0

    aget v4, v78, v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_36

    const/4 v4, 0x1

    :goto_20
    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1f

    :cond_36
    const/4 v4, 0x0

    goto :goto_20

    .line 1134
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    .end local v78           #result:[I
    :sswitch_37
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$200(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x6b1

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->GetSmartNetworkStatus(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1138
    :sswitch_38
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 1139
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1140
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_37

    .line 1141
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1143
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getCdmaSmartNetworkStatus"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1152
    :goto_21
    monitor-enter v76

    .line 1153
    :try_start_1c
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 1154
    monitor-exit v76

    goto/16 :goto_0

    :catchall_1b
    move-exception v3

    monitor-exit v76
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1b

    throw v3

    .line 1147
    :cond_37
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object/from16 v78, v3

    check-cast v78, [I

    .line 1149
    .restart local v78       #result:[I
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1150
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v5, "getCdmaSmartNetworkStatus"

    const/4 v4, 0x0

    aget v4, v78, v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_38

    const/4 v4, 0x1

    :goto_22
    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_21

    :cond_38
    const/4 v4, 0x0

    goto :goto_22

    .line 1159
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    .end local v78           #result:[I
    :sswitch_39
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$200(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x6b3

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->getCdmaSysRecordSize(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1167
    :sswitch_3a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 1168
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1169
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_39

    .line 1170
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1172
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getCdmaSysRecordSize"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1188
    :goto_23
    monitor-enter v76

    .line 1189
    :try_start_1d
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 1190
    monitor-exit v76

    goto/16 :goto_0

    :catchall_1c
    move-exception v3

    monitor-exit v76
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1c

    throw v3

    .line 1176
    :cond_39
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object/from16 v78, v3

    check-cast v78, [I

    .line 1177
    .restart local v78       #result:[I
    if-eqz v78, :cond_3a

    move-object/from16 v0, v78

    array-length v3, v0

    if-eqz v3, :cond_3a

    .line 1185
    :cond_3a
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1186
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getCdmaSysRecordSize"

    const/4 v5, 0x0

    aget v5, v78, v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_23

    .line 1193
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    .end local v78           #result:[I
    :sswitch_3b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1194
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v76

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Landroid/os/Bundle;

    .line 1196
    .local v47, bundle_sys_record:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$200(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    const-string v4, "arg1"

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "arg2"

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v6, v6, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v8, 0x6b5

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v6, v8, v9}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->getCdmaSysRecordContent(IILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1202
    .end local v47           #bundle_sys_record:Landroid/os/Bundle;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_3c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 1203
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1204
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_3b

    .line 1205
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1207
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getCdmaSysRecordContent_size"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1241
    :goto_24
    monitor-enter v76

    .line 1242
    :try_start_1e
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 1243
    monitor-exit v76

    goto/16 :goto_0

    :catchall_1d
    move-exception v3

    monitor-exit v76
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1d

    throw v3

    .line 1211
    :cond_3b
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1214
    :try_start_1f
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, [Ljava/lang/Object;

    move-object/from16 v77, v0

    .line 1216
    .local v77, response:[Ljava/lang/Object;
    move-object/from16 v0, v77

    array-length v3, v0

    move-object/from16 v0, v77

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v52

    .line 1217
    .local v52, copy:[Ljava/lang/Object;
    move-object/from16 v0, v77

    array-length v3, v0

    new-array v0, v3, [I

    move-object/from16 v79, v0

    .line 1218
    .local v79, sid_array:[I
    move-object/from16 v0, v77

    array-length v3, v0

    new-array v0, v3, [I

    move-object/from16 v69, v0

    .line 1219
    .local v69, nid_array:[I
    move-object/from16 v0, v77

    array-length v3, v0

    new-array v0, v3, [I

    move-object/from16 v44, v0

    .line 1220
    .local v44, bsid_array:[I
    const/16 v60, 0x0

    .restart local v60       #i:I
    :goto_25
    move-object/from16 v0, v52

    array-length v3, v0

    move/from16 v0, v60

    if-ge v0, v3, :cond_3c

    .line 1222
    aget-object v3, v52, v60

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "sid"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v57

    .line 1223
    .local v57, field:Ljava/lang/reflect/Field;
    aget-object v3, v52, v60

    move-object/from16 v0, v57

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    aput v3, v79, v60

    .line 1224
    aget-object v3, v52, v60

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "nid"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v57

    .line 1225
    aget-object v3, v52, v60

    move-object/from16 v0, v57

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    aput v3, v69, v60

    .line 1226
    aget-object v3, v52, v60

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "bsid"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v57

    .line 1227
    aget-object v3, v52, v60

    move-object/from16 v0, v57

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    aput v3, v44, v60

    .line 1220
    add-int/lit8 v60, v60, 0x1

    goto :goto_25

    .line 1230
    .end local v57           #field:Ljava/lang/reflect/Field;
    :cond_3c
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getCdmaSysRecordContent_size"

    move-object/from16 v0, v77

    array-length v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1231
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getCdmaSysRecordContent_sid"

    move-object/from16 v0, v79

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1232
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getCdmaSysRecordContent_nid"

    move-object/from16 v0, v69

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1233
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getCdmaSysRecordContent_bsid"

    move-object/from16 v0, v44

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_1

    goto/16 :goto_24

    .line 1235
    .end local v44           #bsid_array:[I
    .end local v52           #copy:[Ljava/lang/Object;
    .end local v60           #i:I
    .end local v69           #nid_array:[I
    .end local v77           #response:[Ljava/lang/Object;
    .end local v79           #sid_array:[I
    :catch_1
    move-exception v54

    .line 1237
    .local v54, e:Ljava/lang/Exception;
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getCdmaSysRecordContent_size"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1238
    invoke-virtual/range {v54 .. v54}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_24

    .line 1247
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v54           #e:Ljava/lang/Exception;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_3d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$200(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x6b7

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->clearCdmaSysRecordContent(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1253
    :sswitch_3e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 1254
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1255
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1256
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_3d

    .line 1257
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "clearCdmaSysRecordContent"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1262
    :goto_26
    monitor-enter v76

    .line 1263
    :try_start_20
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 1264
    monitor-exit v76

    goto/16 :goto_0

    :catchall_1e
    move-exception v3

    monitor-exit v76
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_1e

    throw v3

    .line 1261
    :cond_3d
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "clearCdmaSysRecordContent"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_26

    .line 1271
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_3f
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_REQUEST_SET_CLEAR_LOC_PROCESS_DB"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1273
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$200(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x99

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->requestClearLocProcessDB(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1277
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_40
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_REQUEST_GET_CURRENT_LOC_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 1279
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1280
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_3e

    .line 1281
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    :cond_3e
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_3f

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_27
    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1284
    monitor-enter v76

    .line 1285
    :try_start_21
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 1286
    monitor-exit v76

    goto/16 :goto_0

    :catchall_1f
    move-exception v3

    monitor-exit v76
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_1f

    throw v3

    .line 1283
    :cond_3f
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_27

    .line 1289
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_41
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_REQUEST_SET_LOC_PROCESS_DB"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1291
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v76

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v45, v0

    check-cast v45, Landroid/os/Bundle;

    .line 1292
    .local v45, bundle:Landroid/os/Bundle;
    const-string v3, "index"

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 1293
    .local v13, index:I
    const-string v3, "rat"

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 1294
    .local v14, rat:I
    const-string v3, "sid"

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 1295
    .local v15, sid:I
    const-string v3, "nid"

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 1296
    .local v16, nid:I
    const-string v3, "base_id"

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    .line 1297
    .local v17, base_id:I
    const-string v3, "pilot_pn"

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v18

    .line 1298
    .local v18, pilot_pn:I
    const-string v3, "neighbor_pilot_list"

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v19

    .line 1300
    .local v19, neighbor_pilot_list:[I
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_HTC_REQUEST_SET_LOC_PROCESS_DB index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rat: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " nid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " base_id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " pilot_pn:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$200(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v3, v3, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v4, 0x9b

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    invoke-interface/range {v12 .. v20}, Lcom/android/internal/telephony/CommandsInterface;->requestSetLocProcessDB(IIIIII[ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1307
    .end local v13           #index:I
    .end local v14           #rat:I
    .end local v15           #sid:I
    .end local v16           #nid:I
    .end local v17           #base_id:I
    .end local v18           #pilot_pn:I
    .end local v19           #neighbor_pilot_list:[I
    .end local v45           #bundle:Landroid/os/Bundle;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_42
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_REQUEST_SET_LOC_PROCESS_DB_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 1309
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1310
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_40

    .line 1311
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    :cond_40
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_41

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_28
    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1314
    monitor-enter v76

    .line 1315
    :try_start_22
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 1316
    monitor-exit v76

    goto/16 :goto_0

    :catchall_20
    move-exception v3

    monitor-exit v76
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_20

    throw v3

    .line 1313
    :cond_41
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_28

    .line 1319
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_43
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_REQUEST_GET_CURRENT_LOC"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1321
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$200(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x9d

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->requestGetCurrentLoc(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1324
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_44
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_REQUEST_GET_CURRENT_LOC_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 1326
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1327
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1328
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_43

    .line 1329
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1334
    :goto_29
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v3, :cond_42

    .line 1335
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1338
    :cond_42
    monitor-enter v76

    .line 1339
    :try_start_23
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 1340
    monitor-exit v76

    goto/16 :goto_0

    :catchall_21
    move-exception v3

    monitor-exit v76
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_21

    throw v3

    .line 1331
    :cond_43
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 1343
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_45
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_REQUEST_CONFIG_LOC_PROCESS_DB"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1345
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    new-instance v64, Landroid/os/Bundle;

    invoke-direct/range {v64 .. v64}, Landroid/os/Bundle;-><init>()V

    .line 1346
    .local v64, localbundle:Landroid/os/Bundle;
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Integer;

    move-object/from16 v38, v3

    check-cast v38, [Ljava/lang/Integer;

    .line 1347
    .local v38, arg:[Ljava/lang/Integer;
    const/4 v3, 0x0

    aget-object v55, v38, v3

    .line 1348
    .local v55, enable:Ljava/lang/Integer;
    const/4 v3, 0x1

    aget-object v70, v38, v3

    .line 1349
    .local v70, num_neighbor_pilot:Ljava/lang/Integer;
    const/4 v3, 0x2

    aget-object v71, v38, v3

    .line 1350
    .local v71, num_record:Ljava/lang/Integer;
    const/4 v3, 0x3

    aget-object v84, v38, v3

    .line 1352
    .local v84, time:Ljava/lang/Integer;
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_HTC_REQUEST_CONFIG_LOC_PROCESS_DB enable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v55

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " num_neighbor_pilot: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v70

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " num_record:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v71

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v84

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$200(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v20

    invoke-virtual/range {v55 .. v55}, Ljava/lang/Integer;->intValue()I

    move-result v21

    invoke-virtual/range {v70 .. v70}, Ljava/lang/Integer;->intValue()I

    move-result v22

    invoke-virtual/range {v71 .. v71}, Ljava/lang/Integer;->intValue()I

    move-result v23

    invoke-virtual/range {v84 .. v84}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v3, v3, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v4, 0x9f

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v25

    invoke-interface/range {v20 .. v25}, Lcom/android/internal/telephony/CommandsInterface;->requestConfigLocProcessDB(IIIILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1359
    .end local v38           #arg:[Ljava/lang/Integer;
    .end local v55           #enable:Ljava/lang/Integer;
    .end local v64           #localbundle:Landroid/os/Bundle;
    .end local v70           #num_neighbor_pilot:Ljava/lang/Integer;
    .end local v71           #num_record:Ljava/lang/Integer;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    .end local v84           #time:Ljava/lang/Integer;
    :sswitch_46
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_REQUEST_CONFIG_LOC_PROCESS_DB_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 1361
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1362
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_44

    .line 1363
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    :cond_44
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_45

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_2a
    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1366
    monitor-enter v76

    .line 1367
    :try_start_24
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 1368
    monitor-exit v76

    goto/16 :goto_0

    :catchall_22
    move-exception v3

    monitor-exit v76
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_22

    throw v3

    .line 1365
    :cond_45
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2a

    .line 1373
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_47
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "send CMD_HTC_REQUEST_GET_WIMAX_NAI"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$200(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0xa1

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->requestGetWimaxNai(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1378
    :sswitch_48
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "get CMD_HTC_REQUEST_GET_WIMAX_NAI_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 1380
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1381
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1382
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_48

    .line 1383
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    move-object/from16 v82, v3

    check-cast v82, [Ljava/lang/String;

    .line 1384
    .restart local v82       #strArr:[Ljava/lang/String;
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v82

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    const/16 v60, 0x0

    .restart local v60       #i:I
    :goto_2b
    move-object/from16 v0, v82

    array-length v3, v0

    move/from16 v0, v60

    if-ge v0, v3, :cond_46

    .line 1386
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "strArr["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v60

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v82, v60

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    add-int/lit8 v60, v60, 0x1

    goto :goto_2b

    .line 1388
    :cond_46
    move-object/from16 v0, v82

    move-object/from16 v1, v76

    iput-object v0, v1, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1392
    .end local v60           #i:I
    .end local v82           #strArr:[Ljava/lang/String;
    :goto_2c
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v3, :cond_47

    .line 1393
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1396
    :cond_47
    monitor-enter v76

    .line 1397
    :try_start_25
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 1398
    monitor-exit v76

    goto/16 :goto_0

    :catchall_23
    move-exception v3

    monitor-exit v76
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_23

    throw v3

    .line 1390
    :cond_48
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 1404
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_49
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1405
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "send CMD_HTC_REQUEST_GET_WIFI_DRX_INFO"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$200(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0xae

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->getDrxInfo(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1410
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_4a
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "get CMD_HTC_REQUEST_GET_WIFI_DRX_INFO_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 1412
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1413
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1414
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_4b

    .line 1415
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object/from16 v63, v3

    check-cast v63, [I

    .line 1416
    .local v63, intArr:[I
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v63

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    const/16 v60, 0x0

    .restart local v60       #i:I
    :goto_2d
    move-object/from16 v0, v63

    array-length v3, v0

    move/from16 v0, v60

    if-ge v0, v3, :cond_49

    .line 1418
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "intArr["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v60

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v63, v60

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    add-int/lit8 v60, v60, 0x1

    goto :goto_2d

    .line 1420
    :cond_49
    move-object/from16 v0, v63

    move-object/from16 v1, v76

    iput-object v0, v1, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1424
    .end local v60           #i:I
    .end local v63           #intArr:[I
    :goto_2e
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v3, :cond_4a

    .line 1425
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1428
    :cond_4a
    monitor-enter v76

    .line 1429
    :try_start_26
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 1430
    monitor-exit v76

    goto/16 :goto_0

    :catchall_24
    move-exception v3

    monitor-exit v76
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_24

    throw v3

    .line 1422
    :cond_4b
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    .line 1435
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_4b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1436
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "send CMD_HTC_REQUEST_GET_POWER_INFO"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$200(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0xb2

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->requestGetPowerInfo(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1441
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_4c
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "get CMD_HTC_REQUEST_GET_POWER_INFO_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 1443
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1444
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1445
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_4e

    .line 1446
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object/from16 v63, v3

    check-cast v63, [I

    .line 1447
    .restart local v63       #intArr:[I
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v63

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    const/16 v60, 0x0

    .restart local v60       #i:I
    :goto_2f
    move-object/from16 v0, v63

    array-length v3, v0

    move/from16 v0, v60

    if-ge v0, v3, :cond_4c

    .line 1449
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "intArr["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v60

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v63, v60

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    add-int/lit8 v60, v60, 0x1

    goto :goto_2f

    .line 1451
    :cond_4c
    move-object/from16 v0, v63

    move-object/from16 v1, v76

    iput-object v0, v1, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1455
    .end local v60           #i:I
    .end local v63           #intArr:[I
    :goto_30
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v3, :cond_4d

    .line 1456
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1459
    :cond_4d
    monitor-enter v76

    .line 1460
    :try_start_27
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 1461
    monitor-exit v76

    goto/16 :goto_0

    :catchall_25
    move-exception v3

    monitor-exit v76
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_25

    throw v3

    .line 1453
    :cond_4e
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    .line 1464
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_4d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1465
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$400(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    if-nez v3, :cond_4f

    .line 1466
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    #setter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;
    invoke-static {v3, v4}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$402(Lcom/android/internal/telephony/HtcTelephonyInternal;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    .line 1468
    :cond_4f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$400(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v29

    .line 1469
    .local v29, IMEI:Ljava/lang/String;
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_GET_IMEI"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1471
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getIMEI"

    move-object/from16 v0, v29

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1472
    monitor-enter v76

    .line 1473
    :try_start_28
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 1474
    monitor-exit v76

    goto/16 :goto_0

    :catchall_26
    move-exception v3

    monitor-exit v76
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_26

    throw v3

    .line 1477
    .end local v29           #IMEI:Ljava/lang/String;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_4e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1478
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$400(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    if-nez v3, :cond_50

    .line 1479
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    #setter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;
    invoke-static {v3, v4}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$402(Lcom/android/internal/telephony/HtcTelephonyInternal;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    .line 1481
    :cond_50
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$400(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getImeiSv()Ljava/lang/String;

    move-result-object v30

    .line 1482
    .local v30, IMEISV:Ljava/lang/String;
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_GET_IMEISV"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1484
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getIMEISV"

    move-object/from16 v0, v30

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1485
    monitor-enter v76

    .line 1486
    :try_start_29
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 1487
    monitor-exit v76

    goto/16 :goto_0

    :catchall_27
    move-exception v3

    monitor-exit v76
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_27

    throw v3

    .line 1490
    .end local v30           #IMEISV:Ljava/lang/String;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_4f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1491
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    move-result-object v31

    .line 1492
    .local v31, MEID:Ljava/lang/String;
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_GET_MEID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1494
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getMEID"

    move-object/from16 v0, v31

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1495
    monitor-enter v76

    .line 1496
    :try_start_2a
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 1497
    monitor-exit v76

    goto/16 :goto_0

    :catchall_28
    move-exception v3

    monitor-exit v76
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_28

    throw v3

    .line 1500
    .end local v31           #MEID:Ljava/lang/String;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_50
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1501
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$400(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    if-nez v3, :cond_51

    .line 1502
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    #setter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;
    invoke-static {v3, v4}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$402(Lcom/android/internal/telephony/HtcTelephonyInternal;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    .line 1504
    :cond_51
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$400(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPRIVersion()Ljava/lang/String;

    move-result-object v33

    .line 1505
    .local v33, PRI:Ljava/lang/String;
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_GET_PRI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1507
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getPRI"

    move-object/from16 v0, v33

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1508
    monitor-enter v76

    .line 1509
    :try_start_2b
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 1510
    monitor-exit v76

    goto/16 :goto_0

    :catchall_29
    move-exception v3

    monitor-exit v76
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_29

    throw v3

    .line 1513
    .end local v33           #PRI:Ljava/lang/String;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_51
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1514
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v34

    .line 1515
    .local v34, PRL:Ljava/lang/String;
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_GET_PRL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1517
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getPRL"

    move-object/from16 v0, v34

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1518
    monitor-enter v76

    .line 1519
    :try_start_2c
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 1520
    monitor-exit v76

    goto/16 :goto_0

    :catchall_2a
    move-exception v3

    monitor-exit v76
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_2a

    throw v3

    .line 1523
    .end local v34           #PRL:Ljava/lang/String;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_52
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1524
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v32

    .line 1525
    .local v32, MIN:Ljava/lang/String;
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_GET_CDMAMIN: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1527
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getCDMAMIN"

    move-object/from16 v0, v32

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1528
    monitor-enter v76

    .line 1529
    :try_start_2d
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 1530
    monitor-exit v76

    goto/16 :goto_0

    :catchall_2b
    move-exception v3

    monitor-exit v76
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_2b

    throw v3

    .line 1533
    .end local v32           #MIN:Ljava/lang/String;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_53
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1534
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v28

    .line 1535
    .local v28, ICCSN:Ljava/lang/String;
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_GET_ICCSN: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1537
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getICCSN"

    move-object/from16 v0, v28

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1538
    monitor-enter v76

    .line 1539
    :try_start_2e
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 1540
    monitor-exit v76

    goto/16 :goto_0

    :catchall_2c
    move-exception v3

    monitor-exit v76
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_2c

    throw v3

    .line 1546
    .end local v28           #ICCSN:Ljava/lang/String;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_54
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$500()Z

    move-result v3

    if-eqz v3, :cond_52

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_REQUEST_GET_ATR_INFO"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    :cond_52
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$200(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x6ba

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->getAtrInfo(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1551
    :sswitch_55
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$500()Z

    move-result v3

    if-eqz v3, :cond_53

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_REQUEST_GET_ATR_INFO_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    :cond_53
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 1553
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1554
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1555
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_54

    .line 1556
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getAtrInfo"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1563
    :goto_31
    monitor-enter v76

    .line 1564
    :try_start_2f
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 1565
    monitor-exit v76

    goto/16 :goto_0

    :catchall_2d
    move-exception v3

    monitor-exit v76
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_2d

    throw v3

    .line 1559
    :cond_54
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Ljava/lang/String;

    .line 1560
    .local v40, atrInfo:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$500()Z

    move-result v3

    if-eqz v3, :cond_55

    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_HTC_REQUEST_GET_ATR_INFO_DONE="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    :cond_55
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getAtrInfo"

    move-object/from16 v0, v40

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_31

    .line 1571
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v40           #atrInfo:Ljava/lang/String;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_56
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1572
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/16 v53, 0x0

    .line 1573
    .local v53, desiredPowerState:Ljava/lang/Boolean;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    instance-of v3, v3, Lcom/android/internal/telephony/PhoneBase;

    if-eqz v3, :cond_56

    .line 1574
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v80

    .line 1576
    .local v80, sst:Lcom/android/internal/telephony/ServiceStateTracker;
    if-eqz v80, :cond_56

    .line 1577
    invoke-virtual/range {v80 .. v80}, Lcom/android/internal/telephony/ServiceStateTracker;->getDesiredPowerState()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v53

    .line 1580
    .end local v80           #sst:Lcom/android/internal/telephony/ServiceStateTracker;
    :cond_56
    const/16 v83, 0x0

    .line 1581
    .local v83, strDesiredPowerState:Ljava/lang/String;
    if-eqz v53, :cond_57

    .line 1582
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v83

    .line 1584
    :cond_57
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_HTC_REQUEST_GET_DESIRED_POWER_STATE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v83

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1586
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "DesiredPowerState"

    move-object/from16 v0, v83

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1587
    monitor-enter v76

    .line 1588
    :try_start_30
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 1589
    monitor-exit v76

    goto/16 :goto_0

    :catchall_2e
    move-exception v3

    monitor-exit v76
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_2e

    throw v3

    .line 1592
    .end local v53           #desiredPowerState:Ljava/lang/Boolean;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    .end local v83           #strDesiredPowerState:Ljava/lang/String;
    :sswitch_57
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1593
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$400(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    if-nez v3, :cond_58

    .line 1594
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    #setter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;
    invoke-static {v3, v4}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$402(Lcom/android/internal/telephony/HtcTelephonyInternal;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    .line 1596
    :cond_58
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1597
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$400(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneProxy;->getAccountInfos()[Landroid/os/Parcelable;

    move-result-object v35

    .line 1605
    .local v35, accInfos:[Landroid/os/Parcelable;
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "AccountInfos"

    move-object/from16 v0, v35

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 1606
    monitor-enter v76

    .line 1607
    :try_start_31
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 1608
    monitor-exit v76

    goto/16 :goto_0

    :catchall_2f
    move-exception v3

    monitor-exit v76
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_2f

    throw v3

    .line 1613
    .end local v35           #accInfos:[Landroid/os/Parcelable;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_58
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$200(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x6bf

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->requestGetGPSOneMode(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1616
    :sswitch_59
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$500()Z

    move-result v3

    if-eqz v3, :cond_59

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_REQUEST_GET_GPS_ONE_MODE_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    :cond_59
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 1618
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1619
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1620
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_5a

    .line 1621
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "GetGpsOneMode"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1628
    :goto_32
    monitor-enter v76

    .line 1629
    :try_start_32
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 1630
    monitor-exit v76

    goto/16 :goto_0

    :catchall_30
    move-exception v3

    monitor-exit v76
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_30

    throw v3

    .line 1624
    :cond_5a
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    const/4 v4, 0x0

    aget v26, v3, v4

    .line 1625
    .local v26, Enable:I
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "GetGpsOneMode"

    move/from16 v0, v26

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_32

    .line 1633
    .end local v26           #Enable:I
    .end local v37           #ar:Landroid/os/AsyncResult;
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_5a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1634
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v76

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/os/Bundle;

    .line 1635
    .local v27, Gpsarg:Landroid/os/Bundle;
    const-string v3, "gps"

    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v58

    .line 1636
    .local v58, gpsOneMode:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    #getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$200(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x6c1

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    move/from16 v0, v58

    invoke-interface {v3, v0, v4}, Lcom/android/internal/telephony/CommandsInterface;->requestSetGPSOneMode(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1639
    .end local v27           #Gpsarg:Landroid/os/Bundle;
    .end local v58           #gpsOneMode:I
    .end local v76           #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_5b
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$500()Z

    move-result v3

    if-eqz v3, :cond_5b

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_REQUEST_SET_GPS_ONE_MODE_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    :cond_5b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    .line 1641
    .restart local v37       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1642
    .restart local v76       #request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v76

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1643
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_5c

    .line 1644
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    :cond_5c
    move-object/from16 v0, v76

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "SetGpsOneMode"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1647
    monitor-enter v76

    .line 1648
    :try_start_33
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notifyAll()V

    .line 1649
    monitor-exit v76

    goto/16 :goto_0

    :catchall_31
    move-exception v3

    monitor-exit v76
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_31

    throw v3

    .line 335
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_2
        0x65 -> :sswitch_3
        0x66 -> :sswitch_0
        0x67 -> :sswitch_1
        0x68 -> :sswitch_6
        0x69 -> :sswitch_7
        0x6a -> :sswitch_4
        0x6b -> :sswitch_5
        0x6c -> :sswitch_a
        0x6d -> :sswitch_b
        0x6e -> :sswitch_8
        0x6f -> :sswitch_9
        0x70 -> :sswitch_c
        0x71 -> :sswitch_d
        0x72 -> :sswitch_e
        0x73 -> :sswitch_f
        0x74 -> :sswitch_10
        0x75 -> :sswitch_11
        0x76 -> :sswitch_12
        0x77 -> :sswitch_13
        0x78 -> :sswitch_14
        0x79 -> :sswitch_15
        0x7b -> :sswitch_16
        0x7c -> :sswitch_17
        0x7d -> :sswitch_18
        0x7e -> :sswitch_19
        0x7f -> :sswitch_1a
        0x80 -> :sswitch_1b
        0x81 -> :sswitch_1c
        0x82 -> :sswitch_1d
        0x83 -> :sswitch_22
        0x84 -> :sswitch_23
        0x85 -> :sswitch_20
        0x86 -> :sswitch_21
        0x88 -> :sswitch_28
        0x89 -> :sswitch_29
        0x8a -> :sswitch_2a
        0x8b -> :sswitch_2b
        0x8c -> :sswitch_2c
        0x8d -> :sswitch_30
        0x8e -> :sswitch_2d
        0x8f -> :sswitch_30
        0x90 -> :sswitch_2e
        0x91 -> :sswitch_30
        0x92 -> :sswitch_2f
        0x93 -> :sswitch_30
        0x94 -> :sswitch_31
        0x95 -> :sswitch_32
        0x96 -> :sswitch_1e
        0x97 -> :sswitch_1f
        0x98 -> :sswitch_3f
        0x99 -> :sswitch_40
        0x9a -> :sswitch_41
        0x9b -> :sswitch_42
        0x9c -> :sswitch_43
        0x9d -> :sswitch_44
        0x9e -> :sswitch_45
        0x9f -> :sswitch_46
        0xa0 -> :sswitch_47
        0xa1 -> :sswitch_48
        0xab -> :sswitch_33
        0xac -> :sswitch_34
        0xad -> :sswitch_49
        0xae -> :sswitch_4a
        0xaf -> :sswitch_26
        0xb0 -> :sswitch_27
        0xb1 -> :sswitch_4b
        0xb2 -> :sswitch_4c
        0xb3 -> :sswitch_24
        0xb4 -> :sswitch_25
        0xc8 -> :sswitch_4d
        0xc9 -> :sswitch_4e
        0xca -> :sswitch_4f
        0xcb -> :sswitch_50
        0xcc -> :sswitch_51
        0xcd -> :sswitch_52
        0xce -> :sswitch_53
        0x6ae -> :sswitch_35
        0x6af -> :sswitch_36
        0x6b0 -> :sswitch_37
        0x6b1 -> :sswitch_38
        0x6b2 -> :sswitch_39
        0x6b3 -> :sswitch_3a
        0x6b4 -> :sswitch_3b
        0x6b5 -> :sswitch_3c
        0x6b6 -> :sswitch_3d
        0x6b7 -> :sswitch_3e
        0x6b9 -> :sswitch_54
        0x6ba -> :sswitch_55
        0x6bc -> :sswitch_56
        0x6bd -> :sswitch_57
        0x6be -> :sswitch_58
        0x6bf -> :sswitch_59
        0x6c0 -> :sswitch_5a
        0x6c1 -> :sswitch_5b
    .end sparse-switch
.end method
