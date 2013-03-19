.class Lcom/htc/album/helper/FileOperationManager$FileOperationTask$2;
.super Ljava/lang/Object;
.source "FileOperationManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/FileOperationManager$FileOperationTask;->initProgressBar(Landroid/app/Activity;Lcom/htc/album/helper/FileOperationManager$PROCESS_TYPE;)V
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

    iput-object p1, p0, Lcom/htc/album/helper/FileOperationManager$FileOperationTask$2;->this$1:Lcom/htc/album/helper/FileOperationManager$FileOperationTask;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {}, Lcom/htc/album/helper/FileOperationManager;->cancel()V

    return-void
.end method
