.class Lcom/htc/app/FilePickerCore$35;
.super Ljava/lang/Object;
.source "FilePickerCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/app/FilePickerCore;->NotifyToDoTask(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/app/FilePickerCore;


# direct methods
.method constructor <init>(Lcom/htc/app/FilePickerCore;)V
    .locals 0
    .parameter

    .prologue
    .line 4352
    iput-object p1, p0, Lcom/htc/app/FilePickerCore$35;->this$0:Lcom/htc/app/FilePickerCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 4354
    iget-object v1, p0, Lcom/htc/app/FilePickerCore$35;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v1}, Lcom/htc/app/FilePickerCore;->access$300(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerUtil;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4355
    iget-object v1, p0, Lcom/htc/app/FilePickerCore$35;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v1}, Lcom/htc/app/FilePickerCore;->access$300(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/app/FilePickerUtil;->getDataSourceType()I

    move-result v0

    .line 4357
    .local v0, cloudDataSourceType:I
    iget-object v1, p0, Lcom/htc/app/FilePickerCore$35;->this$0:Lcom/htc/app/FilePickerCore;

    #calls: Lcom/htc/app/FilePickerCore;->getCloudHelperInstance()Lcom/htc/app/FilePickerCloudHelper;
    invoke-static {v1}, Lcom/htc/app/FilePickerCore;->access$4000(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerCloudHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/app/FilePickerCloudHelper;->hasAnyAccountSignIn(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4358
    iget-object v1, p0, Lcom/htc/app/FilePickerCore$35;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mIsCloudFolderPickerEnabled:Z
    invoke-static {v1}, Lcom/htc/app/FilePickerCore;->access$8100(Lcom/htc/app/FilePickerCore;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4359
    iget-object v1, p0, Lcom/htc/app/FilePickerCore$35;->this$0:Lcom/htc/app/FilePickerCore;

    #calls: Lcom/htc/app/FilePickerCore;->launchCloudFolderPicker()V
    invoke-static {v1}, Lcom/htc/app/FilePickerCore;->access$8200(Lcom/htc/app/FilePickerCore;)V

    .line 4369
    .end local v0           #cloudDataSourceType:I
    :cond_0
    :goto_0
    return-void

    .line 4361
    .restart local v0       #cloudDataSourceType:I
    :cond_1
    iget-object v1, p0, Lcom/htc/app/FilePickerCore$35;->this$0:Lcom/htc/app/FilePickerCore;

    #calls: Lcom/htc/app/FilePickerCore;->getAppDropDownCloudAdapter()Lcom/htc/app/FilePickerAppDropDownAdapter;
    invoke-static {v1}, Lcom/htc/app/FilePickerCore;->access$8300(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerAppDropDownAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/app/FilePickerAppDropDownAdapter;->refreshAppListItems()V

    .line 4362
    iget-object v1, p0, Lcom/htc/app/FilePickerCore$35;->this$0:Lcom/htc/app/FilePickerCore;

    #calls: Lcom/htc/app/FilePickerCore;->launchCloudFilePicker()V
    invoke-static {v1}, Lcom/htc/app/FilePickerCore;->access$4900(Lcom/htc/app/FilePickerCore;)V

    goto :goto_0

    .line 4365
    :cond_2
    iget-object v1, p0, Lcom/htc/app/FilePickerCore$35;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/app/FilePickerCore;->access$3300(Lcom/htc/app/FilePickerCore;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4366
    iget-object v1, p0, Lcom/htc/app/FilePickerCore$35;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/app/FilePickerCore;->access$3300(Lcom/htc/app/FilePickerCore;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/app/FilePickerCore$35;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->notifyCloudLoginCheckRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/htc/app/FilePickerCore;->access$8400(Lcom/htc/app/FilePickerCore;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
