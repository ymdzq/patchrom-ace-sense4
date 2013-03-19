.class public Lcom/htc/music/MediaButtonIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MediaButtonIntentReceiver.java"


# static fields
.field private static final ACTION_AVRCP_PANEL_OPERATION:Ljava/lang/String; = "android.bluetooth.avrcp.intent.action.AVRCP_PANEL_OPERATION"

.field private static final AVRCP_BACKWARD:Ljava/lang/String; = "Backward"

.field private static final AVRCP_FFSTART:Ljava/lang/String; = "Fastforward_Start"

.field private static final AVRCP_FFSTOP:Ljava/lang/String; = "Fastforward_Stop"

.field private static final AVRCP_FORWARD:Ljava/lang/String; = "Forward"

.field private static final AVRCP_INTENT_OPERATION:Ljava/lang/String; = "android.bluetooth.avrcp.intent.PANEL_OP"

.field private static final AVRCP_PAUSE:Ljava/lang/String; = "Pause"

.field private static final AVRCP_PLAY:Ljava/lang/String; = "Play"

.field private static final AVRCP_RWSTART:Ljava/lang/String; = "Rewind_Start"

.field private static final AVRCP_RWSTOP:Ljava/lang/String; = "Rewind_Stop"

.field private static final AVRCP_STOP:Ljava/lang/String; = "Stop"

.field private static DEBUG:Z = false

.field private static final DOUBLE_CLICK_TIMEOUT:I = 0x1f4

.field private static DoubleClickDown:Z = false

.field private static FForRWIsDone:Z = false

.field private static final KEYCODE_MEDIA_FAST_FORWARD:I = 0x5a

.field private static final KEYCODE_MEDIA_NEXT:I = 0x57

.field private static final KEYCODE_MEDIA_PLAY_PAUSE:I = 0x55

.field private static final KEYCODE_MEDIA_PREVIOUS:I = 0x58

.field private static final KEYCODE_MEDIA_REWIND:I = 0x59

.field private static final KEYCODE_MEDIA_STOP:I = 0x56

.field private static final LONG_PRESS_DELAY:I = 0x3e8

.field private static LongPressTimeout:Z = false

.field private static final MEDIA_KEY_LONG_PRESS_DELAY:I = 0x7d0

.field private static final MSG_HEADSETHOOK_DOUBLECLICK_TIMEOUT:I = 0x3

.field private static final MSG_HEADSETHOOK_LONGPRESS_TIMEOUT:I = 0x4

.field private static final MSG_LONGPRESS_TIMEOUT_FF:I = 0x1

.field private static final MSG_LONGPRESS_TIMEOUT_RW:I = 0x2

.field private static final MSG_RELEASE_WAKELOCK:I = 0x5

.field private static final TAG:Ljava/lang/String; = "[MediaButtonIntentReceiver]"

.field private static inFFOrRWMode:Z

.field private static isDownPressed:Z

.field private static isValidHookKeyDown:Z

.field private static mContext:Landroid/content/Context;

.field private static mHandler:Landroid/os/Handler;

.field private static mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private static prevPressDownTimestamp:J

.field private static previousIsDown:Z


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    sput-boolean v1, Lcom/htc/music/MediaButtonIntentReceiver;->DoubleClickDown:Z

    .line 77
    sput-boolean v1, Lcom/htc/music/MediaButtonIntentReceiver;->LongPressTimeout:Z

    .line 79
    sput-boolean v1, Lcom/htc/music/MediaButtonIntentReceiver;->inFFOrRWMode:Z

    .line 81
    sput-boolean v1, Lcom/htc/music/MediaButtonIntentReceiver;->previousIsDown:Z

    .line 83
    sput-boolean v1, Lcom/htc/music/MediaButtonIntentReceiver;->FForRWIsDone:Z

    .line 85
    sput-boolean v1, Lcom/htc/music/MediaButtonIntentReceiver;->isValidHookKeyDown:Z

    .line 89
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/music/MediaButtonIntentReceiver;->DEBUG:Z

    .line 117
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/music/MediaButtonIntentReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 120
    sput-boolean v1, Lcom/htc/music/MediaButtonIntentReceiver;->isDownPressed:Z

    .line 121
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/htc/music/MediaButtonIntentReceiver;->prevPressDownTimestamp:J

    .line 125
    new-instance v0, Lcom/htc/music/MediaButtonIntentReceiver$1;

    invoke-direct {v0}, Lcom/htc/music/MediaButtonIntentReceiver$1;-><init>()V

    sput-object v0, Lcom/htc/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/MediaButtonIntentReceiver;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/htc/music/MediaButtonIntentReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 40
    sget-boolean v0, Lcom/htc/music/MediaButtonIntentReceiver;->DEBUG:Z

    return v0
.end method

.method static synthetic access$200()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/htc/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    sput-boolean p0, Lcom/htc/music/MediaButtonIntentReceiver;->inFFOrRWMode:Z

    return p0
.end method

.method static synthetic access$402(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    sput-boolean p0, Lcom/htc/music/MediaButtonIntentReceiver;->LongPressTimeout:Z

    return p0
.end method

.method static synthetic access$502(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    sput-boolean p0, Lcom/htc/music/MediaButtonIntentReceiver;->isValidHookKeyDown:Z

    return p0
.end method

.method static synthetic access$600()Landroid/os/PowerManager$WakeLock;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/htc/music/MediaButtonIntentReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method private wakeForStarting()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    .line 456
    sget-object v1, Lcom/htc/music/MediaButtonIntentReceiver;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 457
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/htc/music/MediaButtonIntentReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 458
    sget-object v1, Lcom/htc/music/MediaButtonIntentReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 459
    sget-object v1, Lcom/htc/music/MediaButtonIntentReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 460
    sget-object v1, Lcom/htc/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 461
    sget-object v1, Lcom/htc/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 462
    return-void
.end method


# virtual methods
.method handleAVRCPEvent(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    .line 465
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.bluetooth.avrcp.intent.action.AVRCP_PANEL_OPERATION"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 466
    const/4 v0, 0x0

    .line 509
    :goto_0
    return v0

    .line 468
    :cond_0
    const/4 v0, 0x1

    .line 469
    .local v0, bConsumed:Z
    const-string v3, "android.bluetooth.avrcp.intent.PANEL_OP"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 470
    .local v2, operation:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/htc/music/MediaPlaybackService;

    invoke-direct {v1, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 471
    .local v1, i:Landroid/content/Intent;
    const-string v3, "com.htc.music.musicservicecommand"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 472
    const-string v3, "Play"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 473
    const-string v3, "command"

    const-string v4, "togglepause"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 474
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 476
    invoke-direct {p0}, Lcom/htc/music/MediaButtonIntentReceiver;->wakeForStarting()V

    goto :goto_0

    .line 477
    :cond_1
    const-string v3, "Pause"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 478
    const-string v3, "command"

    const-string v4, "togglepause"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 479
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 481
    invoke-direct {p0}, Lcom/htc/music/MediaButtonIntentReceiver;->wakeForStarting()V

    goto :goto_0

    .line 482
    :cond_2
    const-string v3, "Forward"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 483
    const-string v3, "command"

    const-string v4, "next"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 484
    const-string v3, "forcePlay"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 485
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 486
    :cond_3
    const-string v3, "Backward"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 487
    const-string v3, "command"

    const-string v4, "previous"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 488
    const-string v3, "forcePlay"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 489
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 490
    :cond_4
    const-string v3, "Stop"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 491
    const-string v3, "command"

    const-string v4, "stop"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 492
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 493
    :cond_5
    const-string v3, "Fastforward_Start"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 494
    const-string v3, "command"

    const-string v4, "ffstart"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 495
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 496
    :cond_6
    const-string v3, "Fastforward_Stop"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 497
    const-string v3, "command"

    const-string v4, "ffstop"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 498
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 499
    :cond_7
    const-string v3, "Rewind_Start"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 500
    const-string v3, "command"

    const-string v4, "rwstart"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 501
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 502
    :cond_8
    const-string v3, "Rewind_Stop"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 503
    const-string v3, "command"

    const-string v4, "rwstop"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 504
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 506
    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 187
    sget-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->DEBUG:Z

    if-eqz v14, :cond_0

    .line 188
    const-string v14, "[MediaButtonIntentReceiver]"

    const-string v15, "> onReceive <"

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_0
    sput-object p1, Lcom/htc/music/MediaButtonIntentReceiver;->mContext:Landroid/content/Context;

    .line 191
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    .line 206
    .local v11, intentAction:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "headsetowner"

    invoke-static {v14, v15}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 209
    .local v9, headsetOwner:Ljava/lang/String;
    if-eqz v9, :cond_2

    const-string v14, ""

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    const-string v14, "htcmusic"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 452
    :cond_1
    :goto_0
    return-void

    .line 213
    :cond_2
    const-string v14, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 214
    const-string v14, "[MediaButtonIntentReceiver]"

    const-string v15, "Get android.intent.action.BOOT_COMPLETED."

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    new-instance v14, Lcom/htc/wrap/android/media/HtcWrapAudioManager;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Lcom/htc/wrap/android/media/HtcWrapAudioManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/music/MediaButtonIntentReceiver;->mAudioManager:Landroid/media/AudioManager;

    .line 216
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MediaButtonIntentReceiver;->mAudioManager:Landroid/media/AudioManager;

    new-instance v15, Landroid/content/ComponentName;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v16

    const-class v17, Lcom/htc/music/MediaButtonIntentReceiver;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v15}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 220
    :cond_3
    invoke-virtual/range {p0 .. p2}, Lcom/htc/music/MediaButtonIntentReceiver;->handleAVRCPEvent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    .line 221
    .local v2, bConsumed:Z
    if-nez v2, :cond_1

    .line 225
    const-string v14, "android.intent.extra.KEY_EVENT"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/view/KeyEvent;

    .line 227
    .local v6, event:Landroid/view/KeyEvent;
    if-eqz v6, :cond_1

    .line 231
    invoke-virtual {v6}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v12

    .line 232
    .local v12, keycode:I
    invoke-virtual {v6}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    .line 233
    .local v1, action:I
    invoke-virtual {v6}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v7

    .line 234
    .local v7, eventtime:J
    invoke-virtual {v6}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v13

    .line 236
    .local v13, repeatCount:I
    sget-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->DEBUG:Z

    if-eqz v14, :cond_8

    .line 238
    if-nez v1, :cond_12

    .line 239
    const-string v14, "[MediaButtonIntentReceiver]"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Down Key,Key Code:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ",inFForRWMode:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-boolean v16, Lcom/htc/music/MediaButtonIntentReceiver;->inFFOrRWMode:Z

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ",time:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", repeatCount: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :cond_4
    :goto_1
    sget-object v14, Lcom/htc/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 245
    const-string v14, "[MediaButtonIntentReceiver]"

    const-string v15, "MSG_LONGPRESS_TIMEOUT_FF in queue"

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :cond_5
    sget-object v14, Lcom/htc/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 247
    const-string v14, "[MediaButtonIntentReceiver]"

    const-string v15, "MSG_LONGPRESS_TIMEOUT_RW in queue"

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :cond_6
    sget-object v14, Lcom/htc/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v15, 0x3

    invoke-virtual {v14, v15}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 249
    const-string v14, "[MediaButtonIntentReceiver]"

    const-string v15, "MSG_HEADSETHOOK_DOUBLECLICK_TIMEOUT in queue"

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :cond_7
    sget-object v14, Lcom/htc/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 251
    const-string v14, "[MediaButtonIntentReceiver]"

    const-string v15, "MSG_HEADSETHOOK_LONGPRESS_TIMEOUT in queue"

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :cond_8
    const/4 v3, 0x0

    .line 257
    .local v3, command:Ljava/lang/String;
    if-nez v1, :cond_19

    .line 266
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 268
    .local v4, currentTimestamp:J
    sget-wide v14, Lcom/htc/music/MediaButtonIntentReceiver;->prevPressDownTimestamp:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_9

    sget-wide v14, Lcom/htc/music/MediaButtonIntentReceiver;->prevPressDownTimestamp:J

    sub-long v14, v4, v14

    const-wide/16 v16, 0x1f4

    cmp-long v14, v14, v16

    if-lez v14, :cond_9

    .line 269
    const/4 v14, 0x0

    sput-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->previousIsDown:Z

    .line 270
    const/4 v14, 0x0

    sput-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->LongPressTimeout:Z

    .line 271
    sget-object v14, Lcom/htc/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 272
    sget-object v14, Lcom/htc/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Landroid/os/Handler;->removeMessages(I)V

    .line 275
    :cond_9
    const/16 v14, 0x4f

    if-eq v12, v14, :cond_a

    .line 276
    const/4 v14, 0x0

    sput-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->isValidHookKeyDown:Z

    .line 279
    :cond_a
    sput-wide v4, Lcom/htc/music/MediaButtonIntentReceiver;->prevPressDownTimestamp:J

    .line 281
    const/16 v14, 0x4f

    if-ne v12, v14, :cond_14

    .line 282
    if-nez v13, :cond_b

    .line 288
    const/4 v14, 0x1

    sput-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->isValidHookKeyDown:Z

    .line 290
    :cond_b
    const/4 v14, 0x0

    sput-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->DoubleClickDown:Z

    .line 291
    const/4 v14, 0x1

    sput-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->isDownPressed:Z

    .line 294
    sget-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->previousIsDown:Z

    if-nez v14, :cond_c

    .line 295
    sget-object v14, Lcom/htc/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v15, 0x3

    invoke-virtual {v14, v15}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v14

    if-eqz v14, :cond_13

    .line 297
    sget-object v14, Lcom/htc/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v15, 0x3

    invoke-virtual {v14, v15}, Landroid/os/Handler;->removeMessages(I)V

    .line 298
    const/4 v14, 0x1

    sput-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->DoubleClickDown:Z

    .line 300
    const/4 v14, 0x0

    sput-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->isValidHookKeyDown:Z

    .line 318
    :cond_c
    :goto_2
    sget-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->previousIsDown:Z

    if-nez v14, :cond_e

    .line 319
    const/16 v14, 0x57

    if-ne v12, v14, :cond_16

    .line 323
    sget-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->DEBUG:Z

    if-eqz v14, :cond_d

    .line 324
    const-string v14, "[MediaButtonIntentReceiver]"

    const-string v15, "send MSG_LONGPRESS_TIMEOUT_FF"

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    :cond_d
    sget-object v14, Lcom/htc/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v15, 0x1

    const-wide/16 v16, 0x7d0

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 340
    :cond_e
    :goto_3
    const/4 v14, 0x1

    sput-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->previousIsDown:Z

    .line 342
    sget-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->FForRWIsDone:Z

    if-nez v14, :cond_f

    .line 343
    const/16 v14, 0x5a

    if-ne v12, v14, :cond_18

    .line 344
    const/4 v14, 0x1

    sput-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->FForRWIsDone:Z

    .line 345
    const-string v3, "ffstart"

    .line 436
    .end local v4           #currentTimestamp:J
    :cond_f
    :goto_4
    sget-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->DEBUG:Z

    if-eqz v14, :cond_10

    .line 437
    const-string v14, "[MediaButtonIntentReceiver]"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "command="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    :cond_10
    if-eqz v3, :cond_1

    .line 439
    new-instance v10, Landroid/content/Intent;

    const-class v14, Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v0, p1

    invoke-direct {v10, v0, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 440
    .local v10, i:Landroid/content/Intent;
    const-string v14, "com.htc.music.musicservicecommand"

    invoke-virtual {v10, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 441
    const-string v14, "command"

    invoke-virtual {v10, v14, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 443
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 445
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaButtonIntentReceiver;->isOrderedBroadcast()Z

    move-result v14

    if-eqz v14, :cond_11

    .line 446
    const-string v14, "[MediaButtonIntentReceiver]"

    const-string v15, "Aborting an ordered broadcast intent..."

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaButtonIntentReceiver;->abortBroadcast()V

    .line 450
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/MediaButtonIntentReceiver;->wakeForStarting()V

    goto/16 :goto_0

    .line 241
    .end local v3           #command:Ljava/lang/String;
    .end local v10           #i:Landroid/content/Intent;
    :cond_12
    const/4 v14, 0x1

    if-ne v1, v14, :cond_4

    .line 242
    const-string v14, "[MediaButtonIntentReceiver]"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Up Key,Key Code:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ",inFForRWMode:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-boolean v16, Lcom/htc/music/MediaButtonIntentReceiver;->inFFOrRWMode:Z

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ",time:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 307
    .restart local v3       #command:Ljava/lang/String;
    .restart local v4       #currentTimestamp:J
    :cond_13
    const/4 v14, 0x0

    sput-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->LongPressTimeout:Z

    .line 308
    sget-object v14, Lcom/htc/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v15, 0x4

    const-wide/16 v16, 0x3e8

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    .line 312
    :cond_14
    const/16 v14, 0x55

    if-eq v12, v14, :cond_15

    const/16 v14, 0x7e

    if-eq v12, v14, :cond_15

    const/16 v14, 0x7f

    if-ne v12, v14, :cond_c

    .line 315
    :cond_15
    const/4 v14, 0x1

    sput-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->isDownPressed:Z

    goto/16 :goto_2

    .line 328
    :cond_16
    const/16 v14, 0x58

    if-ne v12, v14, :cond_e

    .line 332
    sget-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->DEBUG:Z

    if-eqz v14, :cond_17

    .line 333
    const-string v14, "[MediaButtonIntentReceiver]"

    const-string v15, "send MSG_LONGPRESS_TIMEOUT_RW"

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :cond_17
    sget-object v14, Lcom/htc/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v15, 0x2

    const-wide/16 v16, 0x7d0

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_3

    .line 346
    :cond_18
    const/16 v14, 0x59

    if-ne v12, v14, :cond_f

    .line 347
    const/4 v14, 0x1

    sput-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->FForRWIsDone:Z

    .line 348
    const-string v3, "rwstart"

    goto/16 :goto_4

    .line 352
    .end local v4           #currentTimestamp:J
    :cond_19
    const/4 v14, 0x1

    if-ne v1, v14, :cond_f

    .line 353
    sparse-switch v12, :sswitch_data_0

    .line 425
    :cond_1a
    :goto_5
    const/4 v14, 0x0

    sput-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->previousIsDown:Z

    .line 426
    const/4 v14, 0x0

    sput-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->FForRWIsDone:Z

    .line 427
    const/4 v14, 0x0

    sput-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->isValidHookKeyDown:Z

    goto/16 :goto_4

    .line 355
    :sswitch_0
    const-string v3, "stop"

    .line 356
    goto :goto_5

    .line 358
    :sswitch_1
    sget-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->isDownPressed:Z

    if-eqz v14, :cond_1a

    .line 360
    const-string v3, "togglepause"

    .line 361
    const/4 v14, 0x0

    sput-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->isDownPressed:Z

    goto :goto_5

    .line 365
    :sswitch_2
    sget-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->isDownPressed:Z

    if-eqz v14, :cond_1a

    .line 367
    const-string v3, "play"

    .line 368
    const/4 v14, 0x0

    sput-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->isDownPressed:Z

    goto :goto_5

    .line 372
    :sswitch_3
    sget-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->isDownPressed:Z

    if-eqz v14, :cond_1a

    .line 374
    const-string v3, "pause"

    .line 375
    const/4 v14, 0x0

    sput-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->isDownPressed:Z

    goto :goto_5

    .line 381
    :sswitch_4
    sget-object v14, Lcom/htc/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/os/Handler;->removeMessages(I)V

    .line 382
    sget-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->inFFOrRWMode:Z

    if-eqz v14, :cond_1b

    .line 383
    const-string v3, "ffstop"

    .line 384
    const/4 v14, 0x0

    sput-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->inFFOrRWMode:Z

    goto :goto_5

    .line 386
    :cond_1b
    const-string v3, "next"

    .line 388
    goto :goto_5

    .line 392
    :sswitch_5
    sget-object v14, Lcom/htc/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Landroid/os/Handler;->removeMessages(I)V

    .line 393
    sget-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->inFFOrRWMode:Z

    if-eqz v14, :cond_1c

    .line 394
    const-string v3, "rwstop"

    .line 395
    const/4 v14, 0x0

    sput-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->inFFOrRWMode:Z

    goto :goto_5

    .line 397
    :cond_1c
    const-string v3, "previous"

    .line 399
    goto :goto_5

    .line 401
    :sswitch_6
    sget-object v14, Lcom/htc/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Landroid/os/Handler;->removeMessages(I)V

    .line 402
    sget-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->DoubleClickDown:Z

    if-nez v14, :cond_1a

    .line 404
    sget-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->LongPressTimeout:Z

    if-nez v14, :cond_1a

    .line 406
    sget-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->isDownPressed:Z

    if-eqz v14, :cond_1d

    sget-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->isValidHookKeyDown:Z

    if-eqz v14, :cond_1d

    .line 409
    sget-object v14, Lcom/htc/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v15, 0x3

    const-wide/16 v16, 0x1f4

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 412
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/MediaButtonIntentReceiver;->wakeForStarting()V

    .line 413
    const/4 v14, 0x0

    sput-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->isDownPressed:Z

    goto :goto_5

    .line 415
    :cond_1d
    const-string v14, "[MediaButtonIntentReceiver]"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Not handle this time headset hook key. isValidHookKeyDown: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-boolean v16, Lcom/htc/music/MediaButtonIntentReceiver;->isValidHookKeyDown:Z

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 419
    :sswitch_7
    const-string v3, "ffstop"

    .line 420
    goto/16 :goto_5

    .line 422
    :sswitch_8
    const-string v3, "rwstop"

    goto/16 :goto_5

    .line 353
    nop

    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_6
        0x55 -> :sswitch_1
        0x56 -> :sswitch_0
        0x57 -> :sswitch_4
        0x58 -> :sswitch_5
        0x59 -> :sswitch_8
        0x5a -> :sswitch_7
        0x7e -> :sswitch_2
        0x7f -> :sswitch_3
    .end sparse-switch
.end method
