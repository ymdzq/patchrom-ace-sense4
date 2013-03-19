.class Lcom/htc/album/helper/FileOperationManager$FileOperationTask$1;
.super Landroid/os/Handler;
.source "FileOperationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/FileOperationManager$FileOperationTask;
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

    iput-object p1, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask$1;->this$1:Lcom/htc/album/helper/FileOperationManager$FileOperationTask;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask$1;->this$1:Lcom/htc/album/helper/FileOperationManager$FileOperationTask;

    #getter for: Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mDuplicateFileWarningDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;
    invoke-static {v1}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->access$200(Lcom/htc/album/helper/FileOperationManager$FileOperationTask;)Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    move-result-object v1

    check-cast v1, Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING;

    invoke-virtual {v1, v0}, Lcom/htc/album/helper/FileOperationDialogManager$DLG_DUPLICATE_FILE_WARNING;->setFilePath(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask$1;->this$1:Lcom/htc/album/helper/FileOperationManager$FileOperationTask;

    #getter for: Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mDuplicateFileWarningDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;
    invoke-static {v1}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->access$200(Lcom/htc/album/helper/FileOperationManager$FileOperationTask;)Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask$1;->this$1:Lcom/htc/album/helper/FileOperationManager$FileOperationTask;

    #getter for: Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->mFragment:Landroid/app/Fragment;
    invoke-static {v2}, Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->access$300(Lcom/htc/album/helper/FileOperationManager$FileOperationTask;)Landroid/app/Fragment;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "FileOperationManager"

    invoke-virtual {v1, v2, v3}, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x22120
        :pswitch_0
    .end packed-switch
.end method
