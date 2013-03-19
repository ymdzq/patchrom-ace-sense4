.class public Lcom/m0narx/tweaks/widgets/ShellCMD;
.super Ljava/lang/Object;
.source "ShellCMD.java"


# static fields
.field public static final CMD_SYSRO:Ljava/lang/String; = "busybox mount -o remount,ro /system;"

.field public static final CMD_SYSRW:Ljava/lang/String; = "busybox mount -o remount,rw /system;"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSystemRW()Z
    .locals 6

    const/4 v5, -0x1

    const/4 v3, 0x0

    new-instance v1, Ljava/io/File;

    const-string v4, "/proc/mounts"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    :try_start_0
    new-instance v2, Ljava/util/Scanner;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v4}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/util/Scanner;->hasNextLine()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-nez v4, :cond_2

    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_0

    :cond_2
    :try_start_3
    invoke-virtual {v2}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v0

    const-string v4, "/system"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v5, :cond_1

    const-string v4, "rw"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v4

    if-eq v4, v5, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :catchall_0
    move-exception v4

    :try_start_4
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    throw v4
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method public static killLockCMD()Ljava/lang/String;
    .locals 1

    const-string v0, "pkill com.htc.clock3dwidget;pkill com.htc.idlescreen.shortcut;pkill com.htc.weatheridlescreen;pkill com.htc.idlescreen.people;pkill com.htc.idlescreen.basepkill com.htc.idlescreen.socialnetworkpkill com.htc.ml.PhotoLockScreenpkill com.htc.productivitylockscreen"

    return-object v0
.end method
