.class Lcom/android/server/am/HtcErrorReportManager$2;
.super Ljava/lang/Object;
.source "HtcErrorReportManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/HtcErrorReportManager;->addErrorToDropBoxForHTC(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/HtcErrorReportManager;

.field final synthetic val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

.field final synthetic val$dbox:Landroid/os/DropBoxManager;

.field final synthetic val$dropboxTag:Ljava/lang/String;

.field final synthetic val$eventType:Ljava/lang/String;

.field final synthetic val$isNeedRunBySelf:Z

.field final synthetic val$logFile:Ljava/io/File;

.field final synthetic val$report:Ljava/lang/String;

.field final synthetic val$rosieDiedIntent:Landroid/content/Intent;

.field final synthetic val$sb:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/android/server/am/HtcErrorReportManager;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;ZLandroid/os/DropBoxManager;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 261
    iput-object p1, p0, Lcom/android/server/am/HtcErrorReportManager$2;->this$0:Lcom/android/server/am/HtcErrorReportManager;

    iput-object p2, p0, Lcom/android/server/am/HtcErrorReportManager$2;->val$dropboxTag:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/am/HtcErrorReportManager$2;->val$sb:Ljava/lang/StringBuilder;

    iput-object p4, p0, Lcom/android/server/am/HtcErrorReportManager$2;->val$report:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/am/HtcErrorReportManager$2;->val$logFile:Ljava/io/File;

    iput-object p6, p0, Lcom/android/server/am/HtcErrorReportManager$2;->val$eventType:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/am/HtcErrorReportManager$2;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iput-boolean p8, p0, Lcom/android/server/am/HtcErrorReportManager$2;->val$isNeedRunBySelf:Z

    iput-object p9, p0, Lcom/android/server/am/HtcErrorReportManager$2;->val$dbox:Landroid/os/DropBoxManager;

    iput-object p10, p0, Lcom/android/server/am/HtcErrorReportManager$2;->val$rosieDiedIntent:Landroid/content/Intent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 25

    .prologue
    .line 265
    new-instance v4, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/misc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$dropboxTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".dbox_tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 266
    .local v4, temp_file:Ljava/io/File;
    const/4 v13, 0x0

    .line 267
    .local v13, fileWriter:Ljava/io/OutputStreamWriter;
    const/16 v16, 0x0

    .line 268
    .local v16, fos:Ljava/io/FileOutputStream;
    const/4 v15, 0x0

    .line 270
    .local v15, finishDump:Z
    :try_start_0
    new-instance v17, Ljava/io/FileOutputStream;

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    .line 271
    .end local v16           #fos:Ljava/io/FileOutputStream;
    .local v17, fos:Ljava/io/FileOutputStream;
    const/16 v20, 0x0

    .line 272
    .local v20, os:Ljava/io/OutputStream;
    const/4 v2, 0x1

    :try_start_1
    sget-object v3, Lcom/android/server/am/HtcErrorReportManager;->SEED_GETTER:Lcom/htc/utils/ulog/io/LogStream$SeedGetter;

    move-object/from16 v0, v17

    invoke-static {v0, v2, v3}, Lcom/htc/utils/ulog/io/LogStream;->concatenateOutputStream(Ljava/io/OutputStream;ZLcom/htc/utils/ulog/io/LogStream$SeedGetter;)Ljava/io/OutputStream;

    move-result-object v20

    .line 273
    new-instance v14, Ljava/io/OutputStreamWriter;

    move-object/from16 v0, v20

    invoke-direct {v14, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 275
    .end local v13           #fileWriter:Ljava/io/OutputStreamWriter;
    .local v14, fileWriter:Ljava/io/OutputStreamWriter;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 276
    const-string v2, "\n----- KERNEL -----\n"

    invoke-virtual {v14, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 277
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->this$0:Lcom/android/server/am/HtcErrorReportManager;

    new-instance v3, Ljava/io/File;

    const-string v22, "/proc/version"

    move-object/from16 v0, v22

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v22, 0x5

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    #calls: Lcom/android/server/am/HtcErrorReportManager;->logTextFile(Ljava/io/File;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;)V
    invoke-static {v2, v3, v14, v0}, Lcom/android/server/am/HtcErrorReportManager;->access$000(Lcom/android/server/am/HtcErrorReportManager;Ljava/io/File;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;)V

    .line 279
    const-string v2, "\n----- CMDLINE -----\n"

    invoke-virtual {v14, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 280
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->this$0:Lcom/android/server/am/HtcErrorReportManager;

    new-instance v3, Ljava/io/File;

    const-string v22, "/proc/cmdline"

    move-object/from16 v0, v22

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v22, 0x5

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    #calls: Lcom/android/server/am/HtcErrorReportManager;->logTextFile(Ljava/io/File;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;)V
    invoke-static {v2, v3, v14, v0}, Lcom/android/server/am/HtcErrorReportManager;->access$000(Lcom/android/server/am/HtcErrorReportManager;Ljava/io/File;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;)V

    .line 282
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$report:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 283
    const-string v2, "\n----- REPORT -----\n"

    invoke-virtual {v14, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$report:Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 285
    invoke-virtual {v14}, Ljava/io/OutputStreamWriter;->flush()V

    .line 287
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$logFile:Ljava/io/File;

    if-eqz v2, :cond_2

    .line 288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$eventType:Ljava/lang/String;

    const-string v3, "native_crash"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 289
    const-string v2, "\n----- LOG FILE -----\n"

    invoke-virtual {v14, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 291
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->this$0:Lcom/android/server/am/HtcErrorReportManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$logFile:Ljava/io/File;

    #calls: Lcom/android/server/am/HtcErrorReportManager;->logTextFile(Ljava/io/File;Ljava/io/OutputStreamWriter;)V
    invoke-static {v2, v3, v14}, Lcom/android/server/am/HtcErrorReportManager;->access$100(Lcom/android/server/am/HtcErrorReportManager;Ljava/io/File;Ljava/io/OutputStreamWriter;)V

    .line 293
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v2, v2, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 294
    const-string v2, "\n----- STACK TRACE -----\n"

    invoke-virtual {v14, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 295
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v2, v2, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 296
    invoke-virtual {v14}, Ljava/io/OutputStreamWriter;->flush()V

    .line 299
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "logcat_for_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$dropboxTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 300
    .local v21, setting:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->this$0:Lcom/android/server/am/HtcErrorReportManager;

    iget-object v2, v2, Lcom/android/server/am/HtcErrorReportManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-static {v2, v0, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    .line 302
    .local v18, lines:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$eventType:Ljava/lang/String;

    const-string v3, "crash"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$eventType:Ljava/lang/String;

    const-string v3, "anr"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$eventType:Ljava/lang/String;

    const-string v3, "watchdog"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$dropboxTag:Ljava/lang/String;

    const-string v3, "HTC_ROSIE_DIED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$dropboxTag:Ljava/lang/String;

    const-string v3, "HTC_APP_NATIVE_CRASH"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 303
    :cond_4
    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "userdebug"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/16 v18, 0x1000

    .line 304
    :cond_5
    :goto_0
    if-lez v18, :cond_6

    .line 305
    const-string v2, "\n----- SYSTEM LOG -----\n"

    invoke-virtual {v14, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 306
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->this$0:Lcom/android/server/am/HtcErrorReportManager;

    new-instance v3, Ljava/lang/ProcessBuilder;

    const/16 v22, 0x5

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string v24, "/system/bin/logcat"

    aput-object v24, v22, v23

    const/16 v23, 0x1

    const-string v24, "-v"

    aput-object v24, v22, v23

    const/16 v23, 0x2

    const-string v24, "time"

    aput-object v24, v22, v23

    const/16 v23, 0x3

    const-string v24, "-t"

    aput-object v24, v22, v23

    const/16 v23, 0x4

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, v22

    invoke-direct {v3, v0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v3

    const/16 v22, 0x0

    move-object/from16 v0, v22

    #calls: Lcom/android/server/am/HtcErrorReportManager;->logProcessResult(Ljava/lang/ProcessBuilder;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;)V
    invoke-static {v2, v3, v14, v0}, Lcom/android/server/am/HtcErrorReportManager;->access$200(Lcom/android/server/am/HtcErrorReportManager;Ljava/lang/ProcessBuilder;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;)V

    .line 308
    const-string v2, "\n----- EVENT LOG -----\n"

    invoke-virtual {v14, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 309
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->this$0:Lcom/android/server/am/HtcErrorReportManager;

    new-instance v3, Ljava/lang/ProcessBuilder;

    const/16 v22, 0x7

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string v24, "/system/bin/logcat"

    aput-object v24, v22, v23

    const/16 v23, 0x1

    const-string v24, "-v"

    aput-object v24, v22, v23

    const/16 v23, 0x2

    const-string v24, "time"

    aput-object v24, v22, v23

    const/16 v23, 0x3

    const-string v24, "-b"

    aput-object v24, v22, v23

    const/16 v23, 0x4

    const-string v24, "events"

    aput-object v24, v22, v23

    const/16 v23, 0x5

    const-string v24, "-t"

    aput-object v24, v22, v23

    const/16 v23, 0x6

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, v22

    invoke-direct {v3, v0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v3

    const/16 v22, 0x0

    move-object/from16 v0, v22

    #calls: Lcom/android/server/am/HtcErrorReportManager;->logProcessResult(Ljava/lang/ProcessBuilder;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;)V
    invoke-static {v2, v3, v14, v0}, Lcom/android/server/am/HtcErrorReportManager;->access$200(Lcom/android/server/am/HtcErrorReportManager;Ljava/lang/ProcessBuilder;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;)V

    .line 311
    const-string v2, "\n----- RADIO LOG -----\n"

    invoke-virtual {v14, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 312
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->this$0:Lcom/android/server/am/HtcErrorReportManager;

    new-instance v3, Ljava/lang/ProcessBuilder;

    const/16 v22, 0x7

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string v24, "/system/bin/logcat"

    aput-object v24, v22, v23

    const/16 v23, 0x1

    const-string v24, "-v"

    aput-object v24, v22, v23

    const/16 v23, 0x2

    const-string v24, "time"

    aput-object v24, v22, v23

    const/16 v23, 0x3

    const-string v24, "-b"

    aput-object v24, v22, v23

    const/16 v23, 0x4

    const-string v24, "radio"

    aput-object v24, v22, v23

    const/16 v23, 0x5

    const-string v24, "-t"

    aput-object v24, v22, v23

    const/16 v23, 0x6

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, v22

    invoke-direct {v3, v0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v3

    const/16 v22, 0x0

    move-object/from16 v0, v22

    #calls: Lcom/android/server/am/HtcErrorReportManager;->logProcessResult(Ljava/lang/ProcessBuilder;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;)V
    invoke-static {v2, v3, v14, v0}, Lcom/android/server/am/HtcErrorReportManager;->access$200(Lcom/android/server/am/HtcErrorReportManager;Ljava/lang/ProcessBuilder;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;)V

    .line 314
    const-string v2, "\n----- KERNEL MSG -----\n"

    invoke-virtual {v14, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 315
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->this$0:Lcom/android/server/am/HtcErrorReportManager;

    new-instance v3, Ljava/lang/ProcessBuilder;

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string v24, "/system/bin/dmesg"

    aput-object v24, v22, v23

    move-object/from16 v0, v22

    invoke-direct {v3, v0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    #calls: Lcom/android/server/am/HtcErrorReportManager;->logProcessResult(Ljava/lang/ProcessBuilder;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;)V
    invoke-static {v2, v3, v14, v0}, Lcom/android/server/am/HtcErrorReportManager;->access$200(Lcom/android/server/am/HtcErrorReportManager;Ljava/lang/ProcessBuilder;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;)V

    .line 316
    const-string v2, "\n----- PROCRANK (procrank) -----\n"

    invoke-virtual {v14, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 317
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->this$0:Lcom/android/server/am/HtcErrorReportManager;

    new-instance v3, Ljava/lang/ProcessBuilder;

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string v24, "/system/xbin/procrank"

    aput-object v24, v22, v23

    move-object/from16 v0, v22

    invoke-direct {v3, v0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/16 v22, 0x0

    move-object/from16 v0, v22

    #calls: Lcom/android/server/am/HtcErrorReportManager;->logProcessResult(Ljava/lang/ProcessBuilder;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;)V
    invoke-static {v2, v3, v14, v0}, Lcom/android/server/am/HtcErrorReportManager;->access$200(Lcom/android/server/am/HtcErrorReportManager;Ljava/lang/ProcessBuilder;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;)V

    .line 320
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->this$0:Lcom/android/server/am/HtcErrorReportManager;

    iget-object v2, v2, Lcom/android/server/am/HtcErrorReportManager;->mContext:Landroid/content/Context;

    const-string v3, "com.htc.feedback"

    const-string v22, "com.htc.feedback.DeviceStatus"

    move-object/from16 v0, v22

    #calls: Lcom/android/server/am/HtcErrorReportManager;->getClassFromHtcFeedback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    invoke-static {v2, v3, v0}, Lcom/android/server/am/HtcErrorReportManager;->access$300(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    .line 321
    .local v10, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v10, :cond_7

    .line 322
    const/4 v2, 0x2

    new-array v9, v2, [Ljava/lang/Class;

    .line 323
    .local v9, arguTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const/4 v2, 0x2

    new-array v8, v2, [Ljava/lang/Object;

    .line 324
    .local v8, arguList:[Ljava/lang/Object;
    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v9, v2

    .line 325
    const/4 v2, 0x0

    const-string v3, "/data"

    aput-object v3, v8, v2

    .line 326
    const/4 v2, 0x1

    const-class v3, Ljava/io/OutputStreamWriter;

    aput-object v3, v9, v2

    .line 327
    const/4 v2, 0x1

    aput-object v14, v8, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 329
    :try_start_3
    const-string v2, "dump"

    invoke-virtual {v10, v2, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v19

    .line 330
    .local v19, method:Ljava/lang/reflect/Method;
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    invoke-virtual {v14}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 338
    .end local v8           #arguList:[Ljava/lang/Object;
    .end local v9           #arguTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .end local v19           #method:Ljava/lang/reflect/Method;
    :cond_7
    :goto_1
    if-eqz v14, :cond_23

    .line 339
    :try_start_4
    invoke-virtual {v14}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 340
    const/4 v13, 0x0

    .line 343
    .end local v14           #fileWriter:Ljava/io/OutputStreamWriter;
    .restart local v13       #fileWriter:Ljava/io/OutputStreamWriter;
    :goto_2
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 344
    .local v6, entryStartTime:J
    const/16 v5, 0x8

    .line 345
    .local v5, flags:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$isNeedRunBySelf:Z

    if-eqz v2, :cond_8

    .line 346
    or-int/lit16 v5, v5, 0x4000

    .line 347
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$dbox:Landroid/os/DropBoxManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$dropboxTag:Ljava/lang/String;

    invoke-virtual/range {v2 .. v7}, Landroid/os/DropBoxManager;->addFile(Ljava/lang/String;Ljava/io/File;IJ)V

    .line 348
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 349
    const/4 v15, 0x1

    .line 351
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$dropboxTag:Ljava/lang/String;

    const-string v3, "SYSTEM_CRASH"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 352
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$eventType:Ljava/lang/String;

    const-string v3, "watchdog"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-static {}, Landroid/os/Process;->isDumpStateExist()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-result v2

    if-eqz v2, :cond_14

    .line 370
    if-eqz v13, :cond_9

    .line 371
    :try_start_6
    invoke-virtual {v13}, Ljava/io/OutputStreamWriter;->close()V

    .line 372
    :cond_9
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 373
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 375
    :cond_a
    sget-boolean v2, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v2, :cond_b

    .line 376
    const-string v2, "ActivityManager"

    const-string v3, "End---add error logs to dropbox"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_b
    if-eqz v15, :cond_d

    const-string v2, "rosie_died"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$eventType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "dying_provider"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$eventType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 378
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->this$0:Lcom/android/server/am/HtcErrorReportManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$rosieDiedIntent:Landroid/content/Intent;

    #calls: Lcom/android/server/am/HtcErrorReportManager;->notifyUploadRosieDied(Landroid/content/Intent;)V
    invoke-static {v2, v3}, Lcom/android/server/am/HtcErrorReportManager;->access$500(Lcom/android/server/am/HtcErrorReportManager;Landroid/content/Intent;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    :cond_d
    :goto_3
    move-object/from16 v16, v17

    .line 384
    .end local v5           #flags:I
    .end local v6           #entryStartTime:J
    .end local v10           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v17           #fos:Ljava/io/FileOutputStream;
    .end local v18           #lines:I
    .end local v20           #os:Ljava/io/OutputStream;
    .end local v21           #setting:Ljava/lang/String;
    .restart local v16       #fos:Ljava/io/FileOutputStream;
    :cond_e
    :goto_4
    return-void

    .line 303
    .end local v13           #fileWriter:Ljava/io/OutputStreamWriter;
    .end local v16           #fos:Ljava/io/FileOutputStream;
    .restart local v14       #fileWriter:Ljava/io/OutputStreamWriter;
    .restart local v17       #fos:Ljava/io/FileOutputStream;
    .restart local v18       #lines:I
    .restart local v20       #os:Ljava/io/OutputStream;
    .restart local v21       #setting:Ljava/lang/String;
    :cond_f
    const/16 v18, 0x400

    goto/16 :goto_0

    .line 332
    .restart local v8       #arguList:[Ljava/lang/Object;
    .restart local v9       #arguTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .restart local v10       #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_0
    move-exception v11

    .line 333
    .local v11, e:Ljava/lang/NoSuchMethodException;
    :try_start_7
    sget-boolean v2, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v2, :cond_7

    .line 334
    const-string v2, "ActivityManager"

    const-string v3, "Can\'t get method from HtcFeedback"

    invoke-static {v2, v3, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_1

    .line 366
    .end local v8           #arguList:[Ljava/lang/Object;
    .end local v9           #arguTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .end local v10           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v11           #e:Ljava/lang/NoSuchMethodException;
    .end local v18           #lines:I
    .end local v21           #setting:Ljava/lang/String;
    :catch_1
    move-exception v11

    move-object/from16 v16, v17

    .end local v17           #fos:Ljava/io/FileOutputStream;
    .restart local v16       #fos:Ljava/io/FileOutputStream;
    move-object v13, v14

    .line 367
    .end local v14           #fileWriter:Ljava/io/OutputStreamWriter;
    .end local v20           #os:Ljava/io/OutputStream;
    .local v11, e:Ljava/lang/Exception;
    .restart local v13       #fileWriter:Ljava/io/OutputStreamWriter;
    :goto_5
    :try_start_8
    const-string v2, "ActivityManager"

    const-string v3, "Error in dumping error information"

    invoke-static {v2, v3, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 370
    if-eqz v13, :cond_10

    .line 371
    :try_start_9
    invoke-virtual {v13}, Ljava/io/OutputStreamWriter;->close()V

    .line 372
    :cond_10
    if-eqz v4, :cond_11

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 373
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 375
    :cond_11
    sget-boolean v2, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v2, :cond_12

    .line 376
    const-string v2, "ActivityManager"

    const-string v3, "End---add error logs to dropbox"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_12
    if-eqz v15, :cond_e

    const-string v2, "rosie_died"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$eventType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    const-string v2, "dying_provider"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$eventType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 378
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->this$0:Lcom/android/server/am/HtcErrorReportManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$rosieDiedIntent:Landroid/content/Intent;

    #calls: Lcom/android/server/am/HtcErrorReportManager;->notifyUploadRosieDied(Landroid/content/Intent;)V
    invoke-static {v2, v3}, Lcom/android/server/am/HtcErrorReportManager;->access$500(Lcom/android/server/am/HtcErrorReportManager;Landroid/content/Intent;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_4

    .line 380
    :catch_2
    move-exception v12

    .line 381
    .local v12, ex:Ljava/lang/Exception;
    const-string v2, "ActivityManager"

    const-string v3, "Error in finally block"

    invoke-static {v2, v3, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 355
    .end local v11           #e:Ljava/lang/Exception;
    .end local v12           #ex:Ljava/lang/Exception;
    .end local v16           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #flags:I
    .restart local v6       #entryStartTime:J
    .restart local v10       #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v17       #fos:Ljava/io/FileOutputStream;
    .restart local v18       #lines:I
    .restart local v20       #os:Ljava/io/OutputStream;
    .restart local v21       #setting:Ljava/lang/String;
    :cond_14
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$eventType:Ljava/lang/String;

    const-string v3, "watchdog"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v2

    if-nez v2, :cond_16

    .line 356
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    if-eqz v2, :cond_1d

    .line 357
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v2, v2, Landroid/app/ApplicationErrorReport$CrashInfo;->hprofFileName:Ljava/lang/String;

    if-eqz v2, :cond_1c

    .line 358
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->this$0:Lcom/android/server/am/HtcErrorReportManager;

    const-string v3, "/data/system/last_crash_msg"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$dropboxTag:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->hprofFileName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    #calls: Lcom/android/server/am/HtcErrorReportManager;->createLogEntry(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v0}, Lcom/android/server/am/HtcErrorReportManager;->access$400(Lcom/android/server/am/HtcErrorReportManager;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 370
    :cond_16
    :goto_6
    if-eqz v13, :cond_17

    .line 371
    :try_start_b
    invoke-virtual {v13}, Ljava/io/OutputStreamWriter;->close()V

    .line 372
    :cond_17
    if-eqz v4, :cond_18

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 373
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 375
    :cond_18
    sget-boolean v2, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v2, :cond_19

    .line 376
    const-string v2, "ActivityManager"

    const-string v3, "End---add error logs to dropbox"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_19
    if-eqz v15, :cond_1b

    const-string v2, "rosie_died"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$eventType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    const-string v2, "dying_provider"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$eventType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 378
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->this$0:Lcom/android/server/am/HtcErrorReportManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$rosieDiedIntent:Landroid/content/Intent;

    #calls: Lcom/android/server/am/HtcErrorReportManager;->notifyUploadRosieDied(Landroid/content/Intent;)V
    invoke-static {v2, v3}, Lcom/android/server/am/HtcErrorReportManager;->access$500(Lcom/android/server/am/HtcErrorReportManager;Landroid/content/Intent;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    :cond_1b
    :goto_7
    move-object/from16 v16, v17

    .line 383
    .end local v17           #fos:Ljava/io/FileOutputStream;
    .restart local v16       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_4

    .line 360
    .end local v16           #fos:Ljava/io/FileOutputStream;
    .restart local v17       #fos:Ljava/io/FileOutputStream;
    :cond_1c
    :try_start_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->this$0:Lcom/android/server/am/HtcErrorReportManager;

    const-string v3, "/data/system/last_crash_msg"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$dropboxTag:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    #calls: Lcom/android/server/am/HtcErrorReportManager;->createLogEntry(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v0}, Lcom/android/server/am/HtcErrorReportManager;->access$400(Lcom/android/server/am/HtcErrorReportManager;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 366
    .end local v5           #flags:I
    .end local v6           #entryStartTime:J
    .end local v10           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v18           #lines:I
    .end local v21           #setting:Ljava/lang/String;
    :catch_3
    move-exception v11

    move-object/from16 v16, v17

    .end local v17           #fos:Ljava/io/FileOutputStream;
    .restart local v16       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_5

    .line 363
    .end local v16           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #flags:I
    .restart local v6       #entryStartTime:J
    .restart local v10       #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v17       #fos:Ljava/io/FileOutputStream;
    .restart local v18       #lines:I
    .restart local v21       #setting:Ljava/lang/String;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->this$0:Lcom/android/server/am/HtcErrorReportManager;

    const-string v3, "/data/system/last_crash_msg"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$dropboxTag:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    #calls: Lcom/android/server/am/HtcErrorReportManager;->createLogEntry(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v0}, Lcom/android/server/am/HtcErrorReportManager;->access$400(Lcom/android/server/am/HtcErrorReportManager;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    goto/16 :goto_6

    .line 369
    .end local v5           #flags:I
    .end local v6           #entryStartTime:J
    .end local v10           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v18           #lines:I
    .end local v21           #setting:Ljava/lang/String;
    :catchall_0
    move-exception v2

    move-object/from16 v16, v17

    .line 370
    .end local v17           #fos:Ljava/io/FileOutputStream;
    .end local v20           #os:Ljava/io/OutputStream;
    .restart local v16       #fos:Ljava/io/FileOutputStream;
    :goto_8
    if-eqz v13, :cond_1e

    .line 371
    :try_start_d
    invoke-virtual {v13}, Ljava/io/OutputStreamWriter;->close()V

    .line 372
    :cond_1e
    if-eqz v4, :cond_1f

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 373
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 375
    :cond_1f
    sget-boolean v3, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v3, :cond_20

    .line 376
    const-string v3, "ActivityManager"

    const-string v22, "End---add error logs to dropbox"

    move-object/from16 v0, v22

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_20
    if-eqz v15, :cond_22

    const-string v3, "rosie_died"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$eventType:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    const-string v3, "dying_provider"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$eventType:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 378
    :cond_21
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/HtcErrorReportManager$2;->this$0:Lcom/android/server/am/HtcErrorReportManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$rosieDiedIntent:Landroid/content/Intent;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    #calls: Lcom/android/server/am/HtcErrorReportManager;->notifyUploadRosieDied(Landroid/content/Intent;)V
    invoke-static {v3, v0}, Lcom/android/server/am/HtcErrorReportManager;->access$500(Lcom/android/server/am/HtcErrorReportManager;Landroid/content/Intent;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    .line 369
    :cond_22
    :goto_9
    throw v2

    .line 380
    :catch_4
    move-exception v12

    .line 381
    .restart local v12       #ex:Ljava/lang/Exception;
    const-string v3, "ActivityManager"

    const-string v22, "Error in finally block"

    move-object/from16 v0, v22

    invoke-static {v3, v0, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 380
    .end local v12           #ex:Ljava/lang/Exception;
    .end local v16           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #flags:I
    .restart local v6       #entryStartTime:J
    .restart local v10       #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v17       #fos:Ljava/io/FileOutputStream;
    .restart local v18       #lines:I
    .restart local v20       #os:Ljava/io/OutputStream;
    .restart local v21       #setting:Ljava/lang/String;
    :catch_5
    move-exception v12

    .line 381
    .restart local v12       #ex:Ljava/lang/Exception;
    const-string v2, "ActivityManager"

    const-string v3, "Error in finally block"

    invoke-static {v2, v3, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 380
    .end local v12           #ex:Ljava/lang/Exception;
    :catch_6
    move-exception v12

    .line 381
    .restart local v12       #ex:Ljava/lang/Exception;
    const-string v2, "ActivityManager"

    const-string v3, "Error in finally block"

    invoke-static {v2, v3, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 369
    .end local v5           #flags:I
    .end local v6           #entryStartTime:J
    .end local v10           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v12           #ex:Ljava/lang/Exception;
    .end local v17           #fos:Ljava/io/FileOutputStream;
    .end local v18           #lines:I
    .end local v20           #os:Ljava/io/OutputStream;
    .end local v21           #setting:Ljava/lang/String;
    .restart local v16       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v2

    goto :goto_8

    .end local v13           #fileWriter:Ljava/io/OutputStreamWriter;
    .end local v16           #fos:Ljava/io/FileOutputStream;
    .restart local v14       #fileWriter:Ljava/io/OutputStreamWriter;
    .restart local v17       #fos:Ljava/io/FileOutputStream;
    .restart local v20       #os:Ljava/io/OutputStream;
    :catchall_2
    move-exception v2

    move-object/from16 v16, v17

    .end local v17           #fos:Ljava/io/FileOutputStream;
    .restart local v16       #fos:Ljava/io/FileOutputStream;
    move-object v13, v14

    .end local v14           #fileWriter:Ljava/io/OutputStreamWriter;
    .restart local v13       #fileWriter:Ljava/io/OutputStreamWriter;
    goto :goto_8

    .line 366
    .end local v20           #os:Ljava/io/OutputStream;
    :catch_7
    move-exception v11

    goto/16 :goto_5

    .end local v13           #fileWriter:Ljava/io/OutputStreamWriter;
    .end local v16           #fos:Ljava/io/FileOutputStream;
    .restart local v10       #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v14       #fileWriter:Ljava/io/OutputStreamWriter;
    .restart local v17       #fos:Ljava/io/FileOutputStream;
    .restart local v18       #lines:I
    .restart local v20       #os:Ljava/io/OutputStream;
    .restart local v21       #setting:Ljava/lang/String;
    :cond_23
    move-object v13, v14

    .end local v14           #fileWriter:Ljava/io/OutputStreamWriter;
    .restart local v13       #fileWriter:Ljava/io/OutputStreamWriter;
    goto/16 :goto_2
.end method
