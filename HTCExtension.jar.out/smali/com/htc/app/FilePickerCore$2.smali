.class Lcom/htc/app/FilePickerCore$2;
.super Ljava/lang/Object;
.source "FilePickerCore.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/FilePickerCore;
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
    .line 655
    iput-object p1, p0, Lcom/htc/app/FilePickerCore$2;->this$0:Lcom/htc/app/FilePickerCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 659
    iget-object v0, p0, Lcom/htc/app/FilePickerCore$2;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;
    invoke-static {v0}, Lcom/htc/app/FilePickerCore;->access$900(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerActionBarExtController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/htc/app/FilePickerCore$2;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;
    invoke-static {v0}, Lcom/htc/app/FilePickerCore;->access$900(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerActionBarExtController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/app/FilePickerActionBarExtController;->dismissDropDown()V

    .line 661
    :cond_0
    iget-object v0, p0, Lcom/htc/app/FilePickerCore$2;->this$0:Lcom/htc/app/FilePickerCore;

    invoke-virtual {v0}, Lcom/htc/app/FilePickerCore;->performBackKey()V

    .line 662
    return-void
.end method
