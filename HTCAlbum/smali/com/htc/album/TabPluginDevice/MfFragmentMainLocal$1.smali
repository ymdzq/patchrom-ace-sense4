.class Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$1;
.super Ljava/lang/Object;
.source "MfFragmentMainLocal.java"

# interfaces
.implements Lcom/htc/album/helper/HtcDialogManager$IDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->onNotifyServiceFirstTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;

.field final synthetic val$dlgCheckBox:Lcom/htc/widget/HtcCheckBox;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;Lcom/htc/widget/HtcCheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$1;->this$0:Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;

    iput-object p2, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$1;->val$dlgCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$1;->val$dlgCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v1}, Lcom/htc/widget/HtcCheckBox;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$1;->this$0:Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;

    #calls: Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->saveTipsDialogStatus(Z)V
    invoke-static {v1, v0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->access$700(Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;Z)V

    return-void
.end method

.method public onConfirm()V
    .locals 2

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$1;->val$dlgCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v1}, Lcom/htc/widget/HtcCheckBox;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$1;->this$0:Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;

    #calls: Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->saveTipsDialogStatus(Z)V
    invoke-static {v1, v0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->access$700(Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;Z)V

    return-void
.end method

.method public onDismiss()Z
    .locals 2

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$1;->val$dlgCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v1}, Lcom/htc/widget/HtcCheckBox;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$1;->this$0:Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;

    #calls: Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->saveTipsDialogStatus(Z)V
    invoke-static {v1, v0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->access$700(Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;Z)V

    const/4 v1, 0x0

    return v1
.end method
