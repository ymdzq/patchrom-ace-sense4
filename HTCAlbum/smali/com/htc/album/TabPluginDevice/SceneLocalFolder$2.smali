.class Lcom/htc/album/TabPluginDevice/SceneLocalFolder$2;
.super Ljava/lang/Object;
.source "SceneLocalFolder.java"

# interfaces
.implements Lcom/htc/album/helper/HtcDialogManager$IDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->initFileOperationManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalFolder;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$2;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onConfirm()V
    .locals 0

    return-void
.end method

.method public onDismiss()Z
    .locals 2

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$2;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    iget-object v1, v1, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mFileOPMgr:Lcom/htc/album/helper/FileOperationManager;

    invoke-virtual {v1}, Lcom/htc/album/helper/FileOperationManager;->getOperationType()Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    move-result-object v0

    sget-object v1, Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;->TYPE_DELETE_FOLDER:Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/htc/album/helper/FileOperationManager;->cancel()V

    :cond_0
    const/4 v1, 0x1

    return v1
.end method
