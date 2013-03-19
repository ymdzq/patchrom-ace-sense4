.class public Lcom/android/internal/policy/impl/VenomButtonsManager;
.super Ljava/lang/Object;
.source "VenomButtonsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/VenomButtonsManager$flashTimer;
    }
.end annotation


# instance fields
.field public final ACTION_EXPAND_STATUSBAR:I

.field public final ACTION_KILL_FOREGROUND:I

.field public final ACTION_MUSIC_NEXT:I

.field public final ACTION_MUSIC_PLAY:I

.field public final ACTION_MUSIC_PREV:I

.field public final ACTION_NONE:I

.field public final ACTION_OPEN_RECENTAPPS:I

.field public final ACTION_POWERMENU:I

.field public final ACTION_REBOOT:I

.field public final ACTION_SCREENOFF:I

.field public final ACTION_SCREENSHOT:I

.field public final ACTION_SEARCH:I

.field public final ACTION_START_CUSTOM:I

.field public final ACTION_TOOGLE_FLASH:I

.field private final DEFAULT_LONGPRESS_DELAY:I

.field private final MODE_MUSIC_TWK_DISABLED:I

.field private final MODE_MUSIC_TWK_FOW_BACK:I

.field private final MSG_APP_KILLED:I

.field private mBackLongPress:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mHandleLongPressOnHomeLockscreen:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mHomeLongPress:Ljava/lang/Runnable;

.field private mMenuLongPress:Ljava/lang/Runnable;

.field private mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field private mSearchLongPress:Ljava/lang/Runnable;

.field private mSearchShortPress:Ljava/lang/Runnable;

.field private mSleepWake:Ljava/lang/Runnable;

.field private mVolumeLongPressF:Ljava/lang/Runnable;

.field private mVolumeLongPressR:Ljava/lang/Runnable;

.field runTimer:Z

.field threadExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->ACTION_NONE:I

    iput v2, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->ACTION_OPEN_RECENTAPPS:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->ACTION_REBOOT:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->ACTION_SEARCH:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->ACTION_START_CUSTOM:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->ACTION_TOOGLE_FLASH:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->ACTION_EXPAND_STATUSBAR:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->ACTION_KILL_FOREGROUND:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->ACTION_SCREENSHOT:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->ACTION_MUSIC_NEXT:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->ACTION_MUSIC_PREV:I

    const/16 v0, 0xb

    iput v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->ACTION_MUSIC_PLAY:I

    const/16 v0, 0xc

    iput v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->ACTION_SCREENOFF:I

    const/16 v0, 0xd

    iput v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->ACTION_POWERMENU:I

    iput v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->MODE_MUSIC_TWK_DISABLED:I

    iput v2, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->MODE_MUSIC_TWK_FOW_BACK:I

    const v0, 0x10405f7

    iput v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->MSG_APP_KILLED:I

    const/16 v0, 0x15e

    iput v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->DEFAULT_LONGPRESS_DELAY:I

    new-instance v0, Lcom/android/internal/policy/impl/VenomButtonsManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/VenomButtonsManager$1;-><init>(Lcom/android/internal/policy/impl/VenomButtonsManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mSleepWake:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/policy/impl/VenomButtonsManager$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/VenomButtonsManager$2;-><init>(Lcom/android/internal/policy/impl/VenomButtonsManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mVolumeLongPressF:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/policy/impl/VenomButtonsManager$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/VenomButtonsManager$3;-><init>(Lcom/android/internal/policy/impl/VenomButtonsManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mVolumeLongPressR:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/policy/impl/VenomButtonsManager$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/VenomButtonsManager$4;-><init>(Lcom/android/internal/policy/impl/VenomButtonsManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mHandleLongPressOnHomeLockscreen:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/policy/impl/VenomButtonsManager$5;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/VenomButtonsManager$5;-><init>(Lcom/android/internal/policy/impl/VenomButtonsManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mMenuLongPress:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/policy/impl/VenomButtonsManager$6;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/VenomButtonsManager$6;-><init>(Lcom/android/internal/policy/impl/VenomButtonsManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mBackLongPress:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/policy/impl/VenomButtonsManager$7;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/VenomButtonsManager$7;-><init>(Lcom/android/internal/policy/impl/VenomButtonsManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mHomeLongPress:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/policy/impl/VenomButtonsManager$8;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/VenomButtonsManager$8;-><init>(Lcom/android/internal/policy/impl/VenomButtonsManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mSearchLongPress:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/policy/impl/VenomButtonsManager$9;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/VenomButtonsManager$9;-><init>(Lcom/android/internal/policy/impl/VenomButtonsManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mSearchShortPress:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-object p2, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$0(Lcom/android/internal/policy/impl/VenomButtonsManager;)Lcom/android/internal/policy/impl/PhoneWindowManager;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/internal/policy/impl/VenomButtonsManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2(Lcom/android/internal/policy/impl/VenomButtonsManager;Ljava/lang/String;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/VenomButtonsManager;->startAction(Ljava/lang/String;ZI)V

    return-void
.end method

.method static synthetic access$3(Lcom/android/internal/policy/impl/VenomButtonsManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/VenomButtonsManager;->setFlashlightEnabled(Z)V

    return-void
.end method

.method private expandStatusBar()V
    .locals 1

    :try_start_0
    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->expand()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getFlashlightEnabled()Z
    .locals 3

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    const-string v2, "/sys/class/leds/flashlight/brightness"

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->read()I

    move-result v0

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x30

    if-ne v0, v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :catch_0
    move-exception v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private getLongPressDelay()I
    .locals 3

    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tweaks_longpress_delay"

    const/16 v2, 0x15e

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private killForegroundProcess()V
    .locals 19

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mContext:Landroid/content/Context;

    const-string v15, "activity"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v12

    const/4 v14, 0x0

    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v6, v14, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_2

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v13, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    const/16 v15, 0x2710

    if-lt v13, v15, :cond_0

    const v15, 0x1869f

    if-gt v13, v15, :cond_0

    iget v15, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v16, 0x64

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    iget-object v15, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v15, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_0

    iget-object v15, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    new-instance v8, Landroid/content/Intent;

    const-string v15, "android.intent.action.MAIN"

    invoke-direct {v8, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v15, "android.intent.category.HOME"

    invoke-virtual {v8, v15}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v8, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v11

    iget-object v15, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v0, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    :try_start_1
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_3

    :try_start_2
    invoke-virtual {v10, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    :goto_3
    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v9, v15}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;)V

    iget v15, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v15}, Landroid/os/Process;->killProcess(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mContext:Landroid/content/Context;

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x10405f7

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v17, ": "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :catch_0
    move-exception v14

    goto/16 :goto_1

    :catch_1
    move-exception v7

    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    const-string v4, "(unknown)"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3
.end method

.method private openRecentApps()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->toggleRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private performHapticFeedback()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    return-void
.end method

.method private searchAction()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEARCH_LONG_PRESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private setFlashlightEnabled(Z)V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    const-string v1, "/sys/class/leds/flashlight/brightness"

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/16 v1, 0x30

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/VenomButtonsManager;->startTimer(Z)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->runTimer:Z

    :goto_0
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    :goto_1
    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->runTimer:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private startAction(Ljava/lang/String;ZI)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const-string v1, "m0narX_tweaks"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Longpress "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tweaks_longpress_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/VenomButtonsManager;->performHapticFeedback()V

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    :goto_1
    return-void

    :cond_1
    const-string v1, "m0narX_tweaks"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Shortpress "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tweaks_shortpress_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/VenomButtonsManager;->expandStatusBar()V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/VenomButtonsManager;->killForegroundProcess()V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/VenomButtonsManager;->openRecentApps()V

    goto :goto_1

    :pswitch_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->takeScreenShotAction()V

    goto :goto_1

    :pswitch_4
    if-eqz p2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tweaks_longpress_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_package"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tweaks_longpress_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_activity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/impl/VenomButtonsManager;->startActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tweaks_shortpress_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_package"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tweaks_shortpress_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_activity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/impl/VenomButtonsManager;->startActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->showAdvRebootDialog()V

    goto/16 :goto_1

    :pswitch_6
    invoke-direct {p0}, Lcom/android/internal/policy/impl/VenomButtonsManager;->searchAction()V

    goto/16 :goto_1

    :pswitch_7
    invoke-direct {p0}, Lcom/android/internal/policy/impl/VenomButtonsManager;->toogleFlash()V

    goto/16 :goto_1

    :pswitch_8
    const/16 v1, 0x57

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/VenomButtonsManager;->sendMediaButtonEvent(I)V

    goto/16 :goto_1

    :pswitch_9
    const/16 v1, 0x58

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/VenomButtonsManager;->sendMediaButtonEvent(I)V

    goto/16 :goto_1

    :pswitch_a
    const/16 v1, 0x55

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/VenomButtonsManager;->sendMediaButtonEvent(I)V

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/VenomButtonsManager;->screenOff()V

    goto/16 :goto_1

    :pswitch_c
    iget-object v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->showGlobalActionsDialog()V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_7
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private startActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget-object v3, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardOn()Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    :goto_1
    return-void

    :cond_2
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method private startTimer(Z)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->threadExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_0

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->threadExecutor:Ljava/util/concurrent/ExecutorService;

    :cond_0
    new-instance v0, Lcom/android/internal/policy/impl/VenomButtonsManager$flashTimer;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/VenomButtonsManager$flashTimer;-><init>(Lcom/android/internal/policy/impl/VenomButtonsManager;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->threadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private toogleFlash()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/VenomButtonsManager;->getFlashlightEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/VenomButtonsManager;->setFlashlightEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/VenomButtonsManager;->setFlashlightEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public cleanCallBacks(I)V
    .locals 2

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mVolumeLongPressR:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mSleepWake:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mVolumeLongPressF:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mBackLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mMenuLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mSearchLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mSearchShortPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mHomeLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mHandleLongPressOnHomeLockscreen:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_5
        0x4 -> :sswitch_2
        0x18 -> :sswitch_1
        0x19 -> :sswitch_0
        0x52 -> :sswitch_3
        0x54 -> :sswitch_4
    .end sparse-switch
.end method

.method public handleVolumeLongPress(I)V
    .locals 5

    const-wide/16 v3, 0x1f4

    const-string v0, "m0narX_tweaks"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Handle volume button longpress: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x18

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mVolumeLongPressF:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x19

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mVolumeLongPressR:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public handleVolumeLongPressAbort()V
    .locals 1

    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/VenomButtonsManager;->cleanCallBacks(I)V

    const/16 v0, 0x19

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/VenomButtonsManager;->cleanCallBacks(I)V

    return-void
.end method

.method public longPressBack()Ljava/lang/Boolean;
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tweaks_longpress_back"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mBackLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/VenomButtonsManager;->getLongPressDelay()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public longPressHome()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mHomeLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/VenomButtonsManager;->getLongPressDelay()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public longPressHomeLockscreen()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mHandleLongPressOnHomeLockscreen:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/VenomButtonsManager;->getLongPressDelay()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public longPressMenu()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mMenuLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/VenomButtonsManager;->getLongPressDelay()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public longPressSearch()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mSearchLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/VenomButtonsManager;->getLongPressDelay()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public screenOff()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mSleepWake:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public sendMediaButtonEvent(I)V
    .locals 12

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    new-instance v11, Landroid/content/Intent;

    const-string v0, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "android.intent.extra.KEY_EVENT"

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-wide v3, v1

    move v6, p1

    invoke-direct/range {v0 .. v7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    invoke-virtual {v11, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v11

    invoke-virtual/range {v3 .. v10}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    new-instance v11, Landroid/content/Intent;

    const-string v0, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "android.intent.extra.KEY_EVENT"

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x1

    const/4 v7, 0x0

    move-wide v3, v1

    move v6, p1

    invoke-direct/range {v0 .. v7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    invoke-virtual {v11, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v11

    invoke-virtual/range {v3 .. v10}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public shortPressSearch(Z)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tweaks_shortpress_search"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/VenomButtonsManager;->mSearchShortPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method
