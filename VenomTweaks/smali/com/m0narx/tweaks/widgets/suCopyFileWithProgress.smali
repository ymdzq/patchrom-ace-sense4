.class public Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;
.super Ljava/lang/Thread;
.source "suCopyFileWithProgress.java"


# static fields
.field private static Pref:Ljava/lang/String;

.field private static Tweak:Ljava/lang/String;


# instance fields
.field private Dest:Ljava/lang/String;

.field private Source:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private pDialog:Lcom/htc/app/HtcProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->Tweak:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->Pref:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress$1;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress$1;-><init>(Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->handler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->mContext:Landroid/content/Context;

    const v1, 0x7f0a009a

    invoke-static {v0, v1}, Lcom/m0narx/tweaks/widgets/Dialogs;->progressDialog(Landroid/content/Context;I)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->pDialog:Lcom/htc/app/HtcProgressDialog;

    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->pDialog:Lcom/htc/app/HtcProgressDialog;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMax(I)V

    iput-object p2, p0, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->Source:Ljava/lang/String;

    iput-object p3, p0, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->Dest:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->Tweak:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->Pref:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;)Lcom/htc/app/HtcProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->pDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-static {}, Landroid/os/Looper;->prepare()V

    const-string v5, "m0narX_tweaks"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "bgCopy "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->Source:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->Dest:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->handler:Landroid/os/Handler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    new-instance v2, Ljava/io/File;

    iget-object v5, p0, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->Source:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/m0narx/tweaks/widgets/ShellCMD;->isSystemRW()Z

    move-result v3

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/tmp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_0
    iget-object v5, p0, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->handler:Landroid/os/Handler;

    const/16 v6, 0x9

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :try_start_0
    invoke-static {v2, v4}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    iget-object v5, p0, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->handler:Landroid/os/Handler;

    const/16 v6, 0x32

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string v0, ""

    if-nez v3, :cond_1

    const-string v0, "busybox mount -o remount,rw /system;"

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "cp -f "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/tmp "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->Dest:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "chmod 655 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->Dest:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    iget-object v5, p0, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->handler:Landroid/os/Handler;

    const/16 v6, 0x28

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez v3, :cond_2

    const-string v5, "busybox mount -o remount,ro /system;"

    invoke-static {v5}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    iget-object v5, p0, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->handler:Landroid/os/Handler;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string v5, "m0narX_tweaks"

    const-string v6, "bgCopy done"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catch_0
    move-exception v1

    const-string v5, "m0narX_tweaks"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Copy "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->Source:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/tmp failed!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "m0narX_tweaks"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public toogleCheckBox(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->Pref:Ljava/lang/String;

    return-void
.end method

.method public toogleSystemSetting(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/m0narx/tweaks/widgets/suCopyFileWithProgress;->Tweak:Ljava/lang/String;

    return-void
.end method
