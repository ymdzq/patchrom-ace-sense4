.class final Lcom/android/server/PowerManagerService$LockRecordList;
.super Ljava/util/ArrayList;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LockRecordList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/server/PowerManagerService$WakeLockRecord;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 1115
    iput-object p1, p0, Lcom/android/server/PowerManagerService$LockRecordList;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1115
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService$LockRecordList;-><init>(Lcom/android/server/PowerManagerService;)V

    return-void
.end method

.method private getRecord(Lcom/android/server/PowerManagerService$WakeLock;)Lcom/android/server/PowerManagerService$WakeLockRecord;
    .locals 4
    .parameter "wl"

    .prologue
    .line 1117
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService$LockRecordList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PowerManagerService$WakeLockRecord;

    .line 1118
    .local v1, r:Lcom/android/server/PowerManagerService$WakeLockRecord;
    iget-object v2, v1, Lcom/android/server/PowerManagerService$WakeLockRecord;->tag:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1122
    .end local v1           #r:Lcom/android/server/PowerManagerService$WakeLockRecord;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private makeRecord(Lcom/android/server/PowerManagerService$WakeLock;)Lcom/android/server/PowerManagerService$WakeLockRecord;
    .locals 2
    .parameter "lock"

    .prologue
    .line 1138
    new-instance v0, Lcom/android/server/PowerManagerService$WakeLockRecord;

    iget-object v1, p0, Lcom/android/server/PowerManagerService$LockRecordList;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct {v0, v1, p1}, Lcom/android/server/PowerManagerService$WakeLockRecord;-><init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$WakeLock;)V

    return-object v0
.end method

.method private update()V
    .locals 4

    .prologue
    const/16 v3, 0x32

    .line 1126
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService$LockRecordList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PowerManagerService$WakeLockRecord;

    .line 1127
    .local v1, record:Lcom/android/server/PowerManagerService$WakeLockRecord;
    invoke-virtual {v1}, Lcom/android/server/PowerManagerService$WakeLockRecord;->update()V

    goto :goto_0

    .line 1129
    .end local v1           #record:Lcom/android/server/PowerManagerService$WakeLockRecord;
    :cond_0
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1131
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService$LockRecordList;->size()I

    move-result v2

    if-le v2, v3, :cond_1

    .line 1132
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService$LockRecordList;->size()I

    move-result v2

    invoke-virtual {p0, v3, v2}, Lcom/android/server/PowerManagerService$LockRecordList;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1133
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService$LockRecordList;->trimToSize()V

    .line 1135
    :cond_1
    return-void
.end method


# virtual methods
.method public dump()V
    .locals 6

    .prologue
    const/16 v5, 0xa

    .line 1179
    monitor-enter p0

    .line 1180
    :try_start_0
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "[embedded] WakeLock Record Dumping: \n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1181
    .local v3, sb:Ljava/lang/StringBuffer;
    invoke-direct {p0}, Lcom/android/server/PowerManagerService$LockRecordList;->update()V

    .line 1182
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService$LockRecordList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PowerManagerService$WakeLockRecord;

    .line 1183
    .local v2, record:Lcom/android/server/PowerManagerService$WakeLockRecord;
    invoke-virtual {p0, v2}, Lcom/android/server/PowerManagerService$LockRecordList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1184
    .local v1, index:I
    if-ne v1, v5, :cond_2

    .line 1191
    .end local v1           #index:I
    .end local v2           #record:Lcom/android/server/PowerManagerService$WakeLockRecord;
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService$LockRecordList;->size()I

    move-result v4

    if-le v4, v5, :cond_1

    .line 1192
    const-string v4, "[embedded] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1193
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService$LockRecordList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1194
    const-string v4, " more...\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1196
    :cond_1
    const-string v4, "PowerManagerService"

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    monitor-exit p0

    .line 1198
    return-void

    .line 1185
    .restart local v1       #index:I
    .restart local v2       #record:Lcom/android/server/PowerManagerService$WakeLockRecord;
    :cond_2
    const-string v4, "[embedded] Lock("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1186
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1187
    const-string v4, "):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1188
    invoke-virtual {v2}, Lcom/android/server/PowerManagerService$WakeLockRecord;->info()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1189
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1197
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #index:I
    .end local v2           #record:Lcom/android/server/PowerManagerService$WakeLockRecord;
    .end local v3           #sb:Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public startRecord(Lcom/android/server/PowerManagerService$WakeLock;)V
    .locals 3
    .parameter "lock"

    .prologue
    .line 1142
    monitor-enter p0

    .line 1143
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService$LockRecordList;->size()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_0

    .line 1144
    invoke-direct {p0}, Lcom/android/server/PowerManagerService$LockRecordList;->update()V

    .line 1146
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService$LockRecordList;->getRecord(Lcom/android/server/PowerManagerService$WakeLock;)Lcom/android/server/PowerManagerService$WakeLockRecord;

    move-result-object v0

    .line 1148
    .local v0, record:Lcom/android/server/PowerManagerService$WakeLockRecord;
    if-nez v0, :cond_1

    .line 1149
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService$LockRecordList;->makeRecord(Lcom/android/server/PowerManagerService$WakeLock;)Lcom/android/server/PowerManagerService$WakeLockRecord;

    move-result-object v0

    .line 1150
    invoke-virtual {p0, v0}, Lcom/android/server/PowerManagerService$LockRecordList;->add(Ljava/lang/Object;)Z

    .line 1152
    :cond_1
    iget-object v1, p1, Lcom/android/server/PowerManagerService$WakeLock;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/android/server/PowerManagerService$WakeLockRecord;->start(Landroid/os/IBinder;)V

    .line 1153
    monitor-exit p0

    .line 1154
    return-void

    .line 1153
    .end local v0           #record:Lcom/android/server/PowerManagerService$WakeLockRecord;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stopDeadRecord(Landroid/os/IBinder;)V
    .locals 3
    .parameter "binder"

    .prologue
    .line 1169
    monitor-enter p0

    .line 1170
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService$LockRecordList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PowerManagerService$WakeLockRecord;

    .line 1171
    .local v1, record:Lcom/android/server/PowerManagerService$WakeLockRecord;
    invoke-virtual {v1, p1}, Lcom/android/server/PowerManagerService$WakeLockRecord;->stop(Landroid/os/IBinder;)V

    goto :goto_0

    .line 1173
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #record:Lcom/android/server/PowerManagerService$WakeLockRecord;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1174
    return-void
.end method

.method public stopRecord(Lcom/android/server/PowerManagerService$WakeLock;)V
    .locals 2
    .parameter "lock"

    .prologue
    .line 1158
    monitor-enter p0

    .line 1159
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService$LockRecordList;->getRecord(Lcom/android/server/PowerManagerService$WakeLock;)Lcom/android/server/PowerManagerService$WakeLockRecord;

    move-result-object v0

    .line 1161
    .local v0, record:Lcom/android/server/PowerManagerService$WakeLockRecord;
    if-eqz v0, :cond_0

    .line 1162
    iget-object v1, p1, Lcom/android/server/PowerManagerService$WakeLock;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/android/server/PowerManagerService$WakeLockRecord;->stop(Landroid/os/IBinder;)V

    .line 1164
    :cond_0
    monitor-exit p0

    .line 1165
    return-void

    .line 1164
    .end local v0           #record:Lcom/android/server/PowerManagerService$WakeLockRecord;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
