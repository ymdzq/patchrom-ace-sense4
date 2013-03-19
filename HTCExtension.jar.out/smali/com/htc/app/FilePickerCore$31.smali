.class Lcom/htc/app/FilePickerCore$31;
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
    .line 4283
    iput-object p1, p0, Lcom/htc/app/FilePickerCore$31;->this$0:Lcom/htc/app/FilePickerCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 4286
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$31;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v2}, Lcom/htc/app/FilePickerCore;->access$300(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerUtil;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4287
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$31;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v2}, Lcom/htc/app/FilePickerCore;->access$300(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/app/FilePickerUtil;->getSelectedDownloadedBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 4288
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 4289
    const-string v2, "output"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 4290
    .local v1, output:[Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$31;->this$0:Lcom/htc/app/FilePickerCore;

    iget-object v3, p0, Lcom/htc/app/FilePickerCore$31;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mSortType:I
    invoke-static {v3}, Lcom/htc/app/FilePickerCore;->access$3500(Lcom/htc/app/FilePickerCore;)I

    move-result v3

    iget-object v4, p0, Lcom/htc/app/FilePickerCore$31;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mSortOrder:I
    invoke-static {v4}, Lcom/htc/app/FilePickerCore;->access$3400(Lcom/htc/app/FilePickerCore;)I

    move-result v4

    #calls: Lcom/htc/app/FilePickerCore;->onResult([Ljava/lang/String;II)V
    invoke-static {v2, v1, v3, v4}, Lcom/htc/app/FilePickerCore;->access$7800(Lcom/htc/app/FilePickerCore;[Ljava/lang/String;II)V

    .line 4291
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$31;->this$0:Lcom/htc/app/FilePickerCore;

    #calls: Lcom/htc/app/FilePickerCore;->onResult(Landroid/os/Bundle;)V
    invoke-static {v2, v0}, Lcom/htc/app/FilePickerCore;->access$7900(Lcom/htc/app/FilePickerCore;Landroid/os/Bundle;)V

    .line 4292
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$31;->this$0:Lcom/htc/app/FilePickerCore;

    #calls: Lcom/htc/app/FilePickerCore;->finish()V
    invoke-static {v2}, Lcom/htc/app/FilePickerCore;->access$8000(Lcom/htc/app/FilePickerCore;)V

    .line 4294
    .end local v1           #output:[Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$31;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v2}, Lcom/htc/app/FilePickerCore;->access$300(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerUtil;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/app/FilePickerUtil;->setSelectedDownloadedBundle(Landroid/os/Bundle;)V

    .line 4296
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_1
    return-void
.end method
