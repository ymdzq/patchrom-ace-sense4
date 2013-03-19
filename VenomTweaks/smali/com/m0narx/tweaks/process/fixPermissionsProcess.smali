.class public Lcom/m0narx/tweaks/process/fixPermissionsProcess;
.super Ljava/lang/Thread;
.source "fixPermissionsProcess.java"


# instance fields
.field private final DONE:I

.field private final PROGRESS:I

.field private Res:Landroid/content/res/Resources;

.field private final STARTED:I

.field private final WAIT:I

.field private handler:Landroid/os/Handler;

.field private okDialog:Lcom/htc/widget/HtcAlertDialog$Builder;

.field private pDialog:Lcom/htc/app/HtcProgressDialog;

.field private xContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/app/HtcProgressDialog;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/m0narx/tweaks/process/fixPermissionsProcess;->WAIT:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/m0narx/tweaks/process/fixPermissionsProcess;->STARTED:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/m0narx/tweaks/process/fixPermissionsProcess;->PROGRESS:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/m0narx/tweaks/process/fixPermissionsProcess;->DONE:I

    new-instance v0, Lcom/m0narx/tweaks/process/fixPermissionsProcess$1;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/process/fixPermissionsProcess$1;-><init>(Lcom/m0narx/tweaks/process/fixPermissionsProcess;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/process/fixPermissionsProcess;->handler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/m0narx/tweaks/process/fixPermissionsProcess;->xContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/m0narx/tweaks/process/fixPermissionsProcess;->pDialog:Lcom/htc/app/HtcProgressDialog;

    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/m0narx/tweaks/process/fixPermissionsProcess;->xContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x7f02

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a00c9

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a007e

    new-instance v2, Lcom/m0narx/tweaks/process/fixPermissionsProcess$2;

    invoke-direct {v2, p0}, Lcom/m0narx/tweaks/process/fixPermissionsProcess$2;-><init>(Lcom/m0narx/tweaks/process/fixPermissionsProcess;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/m0narx/tweaks/process/fixPermissionsProcess;->okDialog:Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v0, p0, Lcom/m0narx/tweaks/process/fixPermissionsProcess;->xContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/m0narx/tweaks/process/fixPermissionsProcess;->Res:Landroid/content/res/Resources;

    return-void
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/process/fixPermissionsProcess;)Lcom/htc/app/HtcProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/m0narx/tweaks/process/fixPermissionsProcess;->pDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/m0narx/tweaks/process/fixPermissionsProcess;)Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/m0narx/tweaks/process/fixPermissionsProcess;->Res:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$2(Lcom/m0narx/tweaks/process/fixPermissionsProcess;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/m0narx/tweaks/process/fixPermissionsProcess;->okDialog:Lcom/htc/widget/HtcAlertDialog$Builder;

    return-object v0
.end method

.method private copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v2, 0x400

    new-array v0, v2, [B

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 25

    invoke-static {}, Landroid/os/Looper;->prepare()V

    const-wide/16 v22, 0x64

    :try_start_0
    invoke-static/range {v22 .. v23}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    const/16 v17, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/process/fixPermissionsProcess;->xContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    const/4 v13, 0x0

    const/16 v18, 0x0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/process/fixPermissionsProcess;->xContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/fix_permissions"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :try_start_1
    const-string v22, "fix_permissions"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v13

    new-instance v19, Ljava/io/FileOutputStream;

    move-object/from16 v0, v19

    invoke-direct {v0, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v13, v1}, Lcom/m0narx/tweaks/process/fixPermissionsProcess;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    const/4 v13, 0x0

    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->flush()V

    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    const/16 v18, 0x0

    :goto_1
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "chmod 755 "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/m0narx/tweaks/widgets/ShellCMD;->isSystemRW()Z

    move-result v22

    if-nez v22, :cond_0

    const-string v22, "busybox mount -o remount,rw /system;"

    invoke-static/range {v22 .. v22}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/process/fixPermissionsProcess;->xContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/result.tmp"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "busybox cat /data/system/packages.xml | busybox  grep -c \"^<package\" > "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runSU(Ljava/lang/String;)Ljava/lang/String;

    const/4 v4, 0x0

    :try_start_3
    new-instance v20, Ljava/util/Scanner;

    new-instance v22, Ljava/io/FileInputStream;

    move-object/from16 v0, v22

    invoke-direct {v0, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_2
    :try_start_4
    invoke-virtual/range {v20 .. v20}, Ljava/util/Scanner;->hasNextLine()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v22

    if-nez v22, :cond_3

    :try_start_5
    invoke-virtual/range {v20 .. v20}, Ljava/util/Scanner;->close()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    :goto_3
    new-instance v17, Landroid/os/Message;

    invoke-direct/range {v17 .. v17}, Landroid/os/Message;-><init>()V

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v22, "status"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v22, "total"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/process/fixPermissionsProcess;->handler:Landroid/os/Handler;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/process/fixPermissionsProcess;->xContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/fix_permissions.log"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_1

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    :cond_1
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "."

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runBgSU(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    :goto_4
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_4

    const-string v21, ""

    const/16 v16, 0x1

    :goto_5
    if-nez v16, :cond_5

    :cond_2
    new-instance v17, Landroid/os/Message;

    invoke-direct/range {v17 .. v17}, Landroid/os/Message;-><init>()V

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v22, "status"

    const/16 v23, 0xa

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v22, "total"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/process/fixPermissionsProcess;->handler:Landroid/os/Handler;

    move-object/from16 v22, v0

    const-wide/16 v23, 0x3e8

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    move-wide/from16 v2, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :cond_3
    :try_start_6
    invoke-virtual/range {v20 .. v20}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v4

    goto/16 :goto_2

    :catchall_0
    move-exception v22

    :try_start_7
    invoke-virtual/range {v20 .. v20}, Ljava/util/Scanner;->close()V

    throw v22
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    move-exception v11

    const/4 v4, 0x0

    goto/16 :goto_3

    :cond_4
    const-wide/16 v22, 0x64

    :try_start_8
    invoke-static/range {v22 .. v23}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_4

    :catch_1
    move-exception v22

    goto :goto_4

    :cond_5
    const/4 v12, 0x0

    const-string v14, ""

    :try_start_9
    new-instance v20, Ljava/util/Scanner;

    new-instance v22, Ljava/io/FileInputStream;

    move-object/from16 v0, v22

    invoke-direct {v0, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_3

    :cond_6
    :goto_6
    :try_start_a
    invoke-virtual/range {v20 .. v20}, Ljava/util/Scanner;->hasNextLine()Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-result v22

    if-nez v22, :cond_a

    :try_start_b
    invoke-virtual/range {v20 .. v20}, Ljava/util/Scanner;->close()V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_3

    :goto_7
    if-nez v6, :cond_7

    const/16 v16, 0x0

    :cond_7
    if-le v12, v4, :cond_8

    const/16 v16, 0x0

    :cond_8
    if-eqz v16, :cond_2

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_9

    move-object/from16 v21, v14

    new-instance v17, Landroid/os/Message;

    invoke-direct/range {v17 .. v17}, Landroid/os/Message;-><init>()V

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v22, "status"

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v22, "pkg"

    const-string v23, "--Checking"

    const-string v24, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/m0narx/tweaks/process/fixPermissionsProcess;->handler:Landroid/os/Handler;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_9
    const-wide/16 v22, 0x64

    :try_start_c
    invoke-static/range {v22 .. v23}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_2

    goto/16 :goto_5

    :catch_2
    move-exception v22

    goto/16 :goto_5

    :cond_a
    :try_start_d
    invoke-virtual/range {v20 .. v20}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v15

    const-string v22, "--Checking"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v22

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_b

    add-int/lit8 v12, v12, 0x1

    move-object v14, v15

    :cond_b
    const-string v22, "-done-"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    move-result v22

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_6

    const/16 v16, 0x0

    goto/16 :goto_6

    :catchall_1
    move-exception v22

    :try_start_e
    invoke-virtual/range {v20 .. v20}, Ljava/util/Scanner;->close()V

    throw v22
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_3

    :catch_3
    move-exception v11

    const/4 v4, 0x0

    goto/16 :goto_7

    :catch_4
    move-exception v22

    goto/16 :goto_0

    :catch_5
    move-exception v22

    goto/16 :goto_1

    :catch_6
    move-exception v22

    move-object/from16 v18, v19

    goto/16 :goto_1
.end method
