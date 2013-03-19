.class Lcom/htc/album/helper/FileOperationManager$1;
.super Ljava/lang/Object;
.source "FileOperationManager.java"

# interfaces
.implements Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/FileOperationManager;->fileOperationStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/helper/FileOperationManager;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/FileOperationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/helper/FileOperationManager$1;->this$0:Lcom/htc/album/helper/FileOperationManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleteCancel()V
    .locals 2

    invoke-static {}, Lcom/htc/album/helper/FileOperationManager;->access$000()Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;

    move-result-object v0

    const v1, 0x68565

    invoke-interface {v0, v1}, Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;->onFileOperationEnd(I)V

    return-void
.end method

.method public onDeleteEnd()V
    .locals 2

    invoke-static {}, Lcom/htc/album/helper/FileOperationManager;->access$000()Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;

    move-result-object v0

    const v1, 0x68560

    invoke-interface {v0, v1}, Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;->onFileOperationEnd(I)V

    return-void
.end method

.method public onDeleteStart()V
    .locals 1

    invoke-static {}, Lcom/htc/album/helper/FileOperationManager;->access$000()Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/album/helper/FileOperationManager$IFileOperationManagerCallBack;->onFileOperationBegin()V

    return-void
.end method

.method public onDismissDeleteAll()V
    .locals 0

    return-void
.end method
