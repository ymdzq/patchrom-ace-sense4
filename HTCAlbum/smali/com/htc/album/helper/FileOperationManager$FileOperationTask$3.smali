.class Lcom/htc/album/helper/FileOperationManager$FileOperationTask$3;
.super Ljava/lang/Object;
.source "FileOperationManager.java"

# interfaces
.implements Lcom/htc/album/helper/FileOperationDialogManager$IFileOperationDialogCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->initDuplicateFileWarningDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/helper/FileOperationManager$FileOperationTask;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/FileOperationManager$FileOperationTask;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask$3;->this$1:Lcom/htc/album/helper/FileOperationManager$FileOperationTask;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask$3;->this$1:Lcom/htc/album/helper/FileOperationManager$FileOperationTask;

    #getter for: Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mLocker:Ljava/lang/Object;
    invoke-static {v0}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->access$600(Lcom/htc/album/helper/FileOperationManager$FileOperationTask;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask$3;->this$1:Lcom/htc/album/helper/FileOperationManager$FileOperationTask;

    const/4 v2, 0x0

    #setter for: Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mIsConfirm:Z
    invoke-static {v0, v2}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->access$702(Lcom/htc/album/helper/FileOperationManager$FileOperationTask;Z)Z

    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask$3;->this$1:Lcom/htc/album/helper/FileOperationManager$FileOperationTask;

    #getter for: Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mLocker:Ljava/lang/Object;
    invoke-static {v0}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->access$600(Lcom/htc/album/helper/FileOperationManager$FileOperationTask;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onConfirm(Ljava/lang/String;Ljava/lang/String;Lcom/htc/album/modules/collection/Collection;Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;Z)V
    .locals 3

    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask$3;->this$1:Lcom/htc/album/helper/FileOperationManager$FileOperationTask;

    #getter for: Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mLocker:Ljava/lang/Object;
    invoke-static {v0}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->access$600(Lcom/htc/album/helper/FileOperationManager$FileOperationTask;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask$3;->this$1:Lcom/htc/album/helper/FileOperationManager$FileOperationTask;

    const/4 v2, 0x1

    #setter for: Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mIsConfirm:Z
    invoke-static {v0, v2}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->access$702(Lcom/htc/album/helper/FileOperationManager$FileOperationTask;Z)Z

    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask$3;->this$1:Lcom/htc/album/helper/FileOperationManager$FileOperationTask;

    #setter for: Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mIsApplyToAll:Z
    invoke-static {v0, p5}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->access$802(Lcom/htc/album/helper/FileOperationManager$FileOperationTask;Z)Z

    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask$3;->this$1:Lcom/htc/album/helper/FileOperationManager$FileOperationTask;

    #getter for: Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mLocker:Ljava/lang/Object;
    invoke-static {v0}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->access$600(Lcom/htc/album/helper/FileOperationManager$FileOperationTask;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onDismiss()V
    .locals 0

    return-void
.end method

.method public onSkip(Z)V
    .locals 3

    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask$3;->this$1:Lcom/htc/album/helper/FileOperationManager$FileOperationTask;

    #getter for: Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mLocker:Ljava/lang/Object;
    invoke-static {v0}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->access$600(Lcom/htc/album/helper/FileOperationManager$FileOperationTask;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask$3;->this$1:Lcom/htc/album/helper/FileOperationManager$FileOperationTask;

    #setter for: Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mIsApplyToAll:Z
    invoke-static {v0, p1}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->access$802(Lcom/htc/album/helper/FileOperationManager$FileOperationTask;Z)Z

    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask$3;->this$1:Lcom/htc/album/helper/FileOperationManager$FileOperationTask;

    const/4 v2, 0x1

    #setter for: Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mIsSkip:Z
    invoke-static {v0, v2}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->access$902(Lcom/htc/album/helper/FileOperationManager$FileOperationTask;Z)Z

    iget-object v0, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask$3;->this$1:Lcom/htc/album/helper/FileOperationManager$FileOperationTask;

    #getter for: Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mLocker:Ljava/lang/Object;
    invoke-static {v0}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->access$600(Lcom/htc/album/helper/FileOperationManager$FileOperationTask;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
