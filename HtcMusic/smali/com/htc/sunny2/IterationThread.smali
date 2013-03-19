.class public Lcom/htc/sunny2/IterationThread;
.super Landroid/os/HandlerThread;
.source "IterationThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/IterationThread$1;,
        Lcom/htc/sunny2/IterationThread$IterateRunnable;
    }
.end annotation


# static fields
.field private static final PAUSECHECKTIMEOUT:I = 0xa


# instance fields
.field private hasThreadBegun:Z

.field private hasThreadEnded:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsPaused:Z

.field private mIterateRunnable:Ljava/lang/Runnable;

.field private mPause:Z

.field private final mPauseChecker:Ljava/lang/Object;

.field private mResumeRequest:Z

.field private final modeChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "threadName"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 19
    const-string v0, "ITERATION_THREAD"

    iput-object v0, p0, Lcom/htc/sunny2/IterationThread;->name:Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/IterationThread;->modeChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 23
    iput-boolean v1, p0, Lcom/htc/sunny2/IterationThread;->hasThreadBegun:Z

    .line 24
    iput-boolean v1, p0, Lcom/htc/sunny2/IterationThread;->hasThreadEnded:Z

    .line 27
    iput-boolean v1, p0, Lcom/htc/sunny2/IterationThread;->mPause:Z

    .line 29
    iput-boolean v1, p0, Lcom/htc/sunny2/IterationThread;->mResumeRequest:Z

    .line 33
    iput-boolean v1, p0, Lcom/htc/sunny2/IterationThread;->mIsPaused:Z

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/IterationThread;->mPauseChecker:Ljava/lang/Object;

    .line 37
    new-instance v0, Lcom/htc/sunny2/IterationThread$IterateRunnable;

    invoke-direct {v0, p0, v2}, Lcom/htc/sunny2/IterationThread$IterateRunnable;-><init>(Lcom/htc/sunny2/IterationThread;Lcom/htc/sunny2/IterationThread$1;)V

    iput-object v0, p0, Lcom/htc/sunny2/IterationThread;->mIterateRunnable:Ljava/lang/Runnable;

    .line 38
    iput-object v2, p0, Lcom/htc/sunny2/IterationThread;->mHandler:Landroid/os/Handler;

    .line 45
    iput-object p1, p0, Lcom/htc/sunny2/IterationThread;->name:Ljava/lang/String;

    .line 46
    return-void
.end method

.method static synthetic access$100(Lcom/htc/sunny2/IterationThread;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/htc/sunny2/IterationThread;->modeChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/sunny2/IterationThread;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/htc/sunny2/IterationThread;->mResumeRequest:Z

    return v0
.end method

.method static synthetic access$202(Lcom/htc/sunny2/IterationThread;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/htc/sunny2/IterationThread;->mResumeRequest:Z

    return p1
.end method

.method static synthetic access$300(Lcom/htc/sunny2/IterationThread;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/htc/sunny2/IterationThread;->mPause:Z

    return v0
.end method

.method static synthetic access$302(Lcom/htc/sunny2/IterationThread;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/htc/sunny2/IterationThread;->mPause:Z

    return p1
.end method

.method static synthetic access$400(Lcom/htc/sunny2/IterationThread;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/htc/sunny2/IterationThread;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$502(Lcom/htc/sunny2/IterationThread;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/htc/sunny2/IterationThread;->mIsPaused:Z

    return p1
.end method

.method static synthetic access$600(Lcom/htc/sunny2/IterationThread;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/htc/sunny2/IterationThread;->mPauseChecker:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public beginThread()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/sunny2/IterationThread;->name:Ljava/lang/String;

    const-string v1, "beginThread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-virtual {p0}, Lcom/htc/sunny2/IterationThread;->start()V

    .line 53
    iget-object v0, p0, Lcom/htc/sunny2/IterationThread;->name:Ljava/lang/String;

    const-string v1, "Wait for thread begin. +"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :goto_0
    iget-boolean v0, p0, Lcom/htc/sunny2/IterationThread;->hasThreadBegun:Z

    if-nez v0, :cond_0

    .line 58
    const-wide/16 v0, 0x1

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    goto :goto_0

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/IterationThread;->name:Ljava/lang/String;

    const-string v1, "Wait for thread begin. -"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void
.end method

.method public endThread()V
    .locals 6

    .prologue
    .line 68
    iget-object v2, p0, Lcom/htc/sunny2/IterationThread;->name:Ljava/lang/String;

    const-string v3, "endThread +"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {p0}, Lcom/htc/sunny2/IterationThread;->pauseThread()V

    .line 76
    iget-object v2, p0, Lcom/htc/sunny2/IterationThread;->name:Ljava/lang/String;

    const-string v3, "Send end thread request."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {p0}, Lcom/htc/sunny2/IterationThread;->quit()Z

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 82
    .local v0, waitStartTime:J
    iget-boolean v2, p0, Lcom/htc/sunny2/IterationThread;->hasThreadEnded:Z

    if-nez v2, :cond_2

    .line 84
    iget-object v2, p0, Lcom/htc/sunny2/IterationThread;->name:Ljava/lang/String;

    const-string v3, "Wait for thread end. +"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/htc/sunny2/IterationThread;->hasThreadEnded:Z

    if-nez v2, :cond_1

    .line 90
    const-wide/16 v2, 0xa

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0xc8

    add-long/2addr v4, v0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 97
    iget-object v2, p0, Lcom/htc/sunny2/IterationThread;->name:Ljava/lang/String;

    const-string v3, "Re-notify thread in endThread()"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    monitor-enter p0

    .line 100
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 101
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0

    .line 101
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 107
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/IterationThread;->name:Ljava/lang/String;

    const-string v3, "Wait for thread end. -"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/sunny2/IterationThread;->name:Ljava/lang/String;

    .line 115
    iget-object v2, p0, Lcom/htc/sunny2/IterationThread;->name:Ljava/lang/String;

    const-string v3, "endThread -"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void

    .line 92
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public iterate()Z
    .locals 2

    .prologue
    .line 131
    sget-boolean v0, Lcom/htc/sunny2/common/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/IterationThread;->name:Ljava/lang/String;

    const-string v1, "default iterate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onLooperPrepared()V
    .locals 2

    .prologue
    .line 190
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/IterationThread;->mHandler:Landroid/os/Handler;

    .line 191
    iget-object v0, p0, Lcom/htc/sunny2/IterationThread;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/sunny2/IterationThread;->mIterateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 192
    return-void
.end method

.method public onThreadBegin()Z
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x1

    return v0
.end method

.method public onThreadEnd()V
    .locals 0

    .prologue
    .line 127
    return-void
.end method

.method public pauseThread()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 140
    sget-boolean v1, Lcom/htc/sunny2/common/Constants;->DEBUG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/IterationThread;->name:Ljava/lang/String;

    const-string v2, "pauseThread +"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/IterationThread;->modeChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 143
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/htc/sunny2/IterationThread;->mPause:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    iget-object v1, p0, Lcom/htc/sunny2/IterationThread;->modeChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 150
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v1, p0, :cond_2

    .line 151
    iget-object v2, p0, Lcom/htc/sunny2/IterationThread;->mPauseChecker:Ljava/lang/Object;

    monitor-enter v2

    .line 153
    :goto_0
    :try_start_1
    iget-boolean v1, p0, Lcom/htc/sunny2/IterationThread;->mIsPaused:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/sunny2/IterationThread;->mPause:Z

    if-ne v5, v1, :cond_1

    .line 154
    iget-object v1, p0, Lcom/htc/sunny2/IterationThread;->mPauseChecker:Ljava/lang/Object;

    const-wide/16 v3, 0xa

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, ite:Ljava/lang/InterruptedException;
    :try_start_2
    sget-boolean v1, Lcom/htc/sunny2/common/Constants;->DEBUG:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/sunny2/IterationThread;->name:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pauseThread: mIsPaused="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/sunny2/IterationThread;->mIsPaused:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    .end local v0           #ite:Ljava/lang/InterruptedException;
    :cond_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 163
    :cond_2
    sget-boolean v1, Lcom/htc/sunny2/common/Constants;->DEBUG:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/sunny2/IterationThread;->name:Ljava/lang/String;

    const-string v2, "pauseThread -"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_3
    return-void

    .line 146
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/htc/sunny2/IterationThread;->modeChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    .line 160
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public resumeThread()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 170
    iget-object v0, p0, Lcom/htc/sunny2/IterationThread;->modeChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 172
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/sunny2/IterationThread;->mPause:Z

    if-ne v0, v1, :cond_1

    .line 173
    sget-boolean v0, Lcom/htc/sunny2/common/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/IterationThread;->name:Ljava/lang/String;

    const-string v1, "resumeThread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/IterationThread;->mPause:Z

    .line 175
    iget-object v0, p0, Lcom/htc/sunny2/IterationThread;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/sunny2/IterationThread;->mIterateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 178
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/IterationThread;->mResumeRequest:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    iget-object v0, p0, Lcom/htc/sunny2/IterationThread;->modeChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 184
    return-void

    .line 181
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/htc/sunny2/IterationThread;->modeChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/sunny2/IterationThread;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/sunny2/IterationThread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/IterationThread;->name:Ljava/lang/String;

    .line 202
    iput-boolean v3, p0, Lcom/htc/sunny2/IterationThread;->hasThreadBegun:Z

    .line 203
    iget-object v0, p0, Lcom/htc/sunny2/IterationThread;->name:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "run begin "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-virtual {p0}, Lcom/htc/sunny2/IterationThread;->onThreadBegin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/htc/sunny2/IterationThread;->name:Ljava/lang/String;

    const-string v1, "run end due to cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iput-boolean v3, p0, Lcom/htc/sunny2/IterationThread;->hasThreadEnded:Z

    .line 219
    :goto_0
    return-void

    .line 213
    :cond_0
    invoke-super {p0}, Landroid/os/HandlerThread;->run()V

    .line 215
    invoke-virtual {p0}, Lcom/htc/sunny2/IterationThread;->onThreadEnd()V

    .line 217
    iget-object v0, p0, Lcom/htc/sunny2/IterationThread;->name:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "run end "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iput-boolean v3, p0, Lcom/htc/sunny2/IterationThread;->hasThreadEnded:Z

    goto :goto_0
.end method
