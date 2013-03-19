.class public Lcom/htc/server/gesture/FingerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FingerReceiver.java"


# instance fields
.field private final ACTION_CUSTOM_APP:I

.field private final ACTION_HOME:I

.field private final ACTION_IGNORE:I

.field private final ACTION_KILL:I

.field private final ACTION_NEXT_TRACK:I

.field private final ACTION_OPEN_NOTIF:I

.field private final ACTION_PLAY:I

.field private final ACTION_PREV_APP:I

.field private final ACTION_PREV_TRACK:I

.field private final ACTION_RECENT_APPS:I

.field private final GESTURE_DOWN:I

.field private final GESTURE_LEFT:I

.field private final GESTURE_RIGHT:I

.field private final GESTURE_UP:I


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput v1, p0, Lcom/htc/server/gesture/FingerReceiver;->GESTURE_UP:I

    iput v2, p0, Lcom/htc/server/gesture/FingerReceiver;->GESTURE_RIGHT:I

    iput v3, p0, Lcom/htc/server/gesture/FingerReceiver;->GESTURE_DOWN:I

    iput v4, p0, Lcom/htc/server/gesture/FingerReceiver;->GESTURE_LEFT:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/server/gesture/FingerReceiver;->ACTION_IGNORE:I

    iput v1, p0, Lcom/htc/server/gesture/FingerReceiver;->ACTION_CUSTOM_APP:I

    iput v2, p0, Lcom/htc/server/gesture/FingerReceiver;->ACTION_RECENT_APPS:I

    iput v3, p0, Lcom/htc/server/gesture/FingerReceiver;->ACTION_PREV_APP:I

    iput v4, p0, Lcom/htc/server/gesture/FingerReceiver;->ACTION_HOME:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/server/gesture/FingerReceiver;->ACTION_KILL:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/htc/server/gesture/FingerReceiver;->ACTION_PLAY:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/htc/server/gesture/FingerReceiver;->ACTION_NEXT_TRACK:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/htc/server/gesture/FingerReceiver;->ACTION_PREV_TRACK:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/htc/server/gesture/FingerReceiver;->ACTION_OPEN_NOTIF:I

    return-void
.end method

.method private getDirectionStr(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const-string v0, ""

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "up"

    goto :goto_0

    :pswitch_1
    const-string v0, "down"

    goto :goto_0

    :pswitch_2
    const-string v0, "left"

    goto :goto_0

    :pswitch_3
    const-string v0, "right"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getStatusBar()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 2

    const-string v1, "statusbar"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    return-object v1
.end method

.method private goHome(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private killApp(Landroid/content/Context;)V
    .locals 6

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    :goto_1
    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    const/16 v4, 0x2710

    if-lt v3, v4, :cond_0

    const v4, 0x1869f

    if-gt v3, v4, :cond_0

    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v5, 0x64

    if-ne v4, v5, :cond_0

    iget-object v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-interface {v2, v4}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;)V

    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v4}, Landroid/os/Process;->killProcess(I)V

    const v4, 0x10405f7

    const/4 v5, 0x1

    invoke-static {p1, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private prevApp(Landroid/content/Context;)V
    .locals 7

    :try_start_0
    const-string v5, "activity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    const/16 v5, 0x8

    const/4 v6, 0x2

    invoke-virtual {v1, v5, v6}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v4, 0x1

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.intent.action.MAIN"

    if-ne v5, v6, :cond_2

    invoke-virtual {v3}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v5

    const-string v6, "android.intent.category.LAUNCHER"

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {p1, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private sendMediaKey(Landroid/content/Context;I)V
    .locals 14

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    new-instance v13, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v13, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/view/KeyEvent;

    const-wide/16 v1, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x1

    move/from16 v6, p2

    invoke-direct/range {v0 .. v7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    const-string v1, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v13, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, p1

    move-object v6, v13

    invoke-virtual/range {v5 .. v12}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    new-instance v13, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v13, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/view/KeyEvent;

    const-wide/16 v1, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x1

    move/from16 v6, p2

    invoke-direct/range {v0 .. v7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    const-string v1, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v13, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, p1

    move-object v6, v13

    invoke-virtual/range {v5 .. v12}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.pkmn.action.MULTIPLE_FINGER_SWIPE_EVENT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "Direction"

    const/4 v7, -0x1

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/4 v6, 0x1

    if-lt v3, v6, :cond_0

    const/4 v6, 0x4

    if-gt v3, v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "tweaks_gesture_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/htc/server/gesture/FingerReceiver;->getDirectionStr(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v2, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v6, "m0narX_3finger"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Direction = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "tweaks_gesture_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/htc/server/gesture/FingerReceiver;->getDirectionStr(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_package"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "tweaks_gesture_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/htc/server/gesture/FingerReceiver;->getDirectionStr(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_activity"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v6, 0x1000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v6, Landroid/content/ComponentName;

    invoke-direct {v6, v4, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p1, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v6

    goto/16 :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/htc/server/gesture/FingerReceiver;->prevApp(Landroid/content/Context;)V

    goto/16 :goto_0

    :pswitch_3
    :try_start_1
    invoke-direct {p0}, Lcom/htc/server/gesture/FingerReceiver;->getStatusBar()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/statusbar/IStatusBarService;->toggleRecentApps()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v6

    goto/16 :goto_0

    :pswitch_4
    :try_start_2
    invoke-direct {p0}, Lcom/htc/server/gesture/FingerReceiver;->getStatusBar()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/statusbar/IStatusBarService;->expand()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v6

    goto/16 :goto_0

    :pswitch_5
    invoke-direct {p0, p1}, Lcom/htc/server/gesture/FingerReceiver;->goHome(Landroid/content/Context;)V

    goto/16 :goto_0

    :pswitch_6
    invoke-direct {p0, p1}, Lcom/htc/server/gesture/FingerReceiver;->killApp(Landroid/content/Context;)V

    goto/16 :goto_0

    :pswitch_7
    const/16 v6, 0x55

    invoke-direct {p0, p1, v6}, Lcom/htc/server/gesture/FingerReceiver;->sendMediaKey(Landroid/content/Context;I)V

    goto/16 :goto_0

    :pswitch_8
    const/16 v6, 0x57

    invoke-direct {p0, p1, v6}, Lcom/htc/server/gesture/FingerReceiver;->sendMediaKey(Landroid/content/Context;I)V

    goto/16 :goto_0

    :pswitch_9
    const/16 v6, 0x58

    invoke-direct {p0, p1, v6}, Lcom/htc/server/gesture/FingerReceiver;->sendMediaKey(Landroid/content/Context;I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_4
    .end packed-switch
.end method
