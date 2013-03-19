.class Lcom/htc/music/online/DataFeeCheckActivity$DataFeeWanringDialogClickListener;
.super Ljava/lang/Object;
.source "DataFeeCheckActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/online/DataFeeCheckActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DataFeeWanringDialogClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/online/DataFeeCheckActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/online/DataFeeCheckActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/htc/music/online/DataFeeCheckActivity$DataFeeWanringDialogClickListener;->this$0:Lcom/htc/music/online/DataFeeCheckActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 110
    packed-switch p2, :pswitch_data_0

    .line 120
    const-string v0, "[DataFeeCheckActivity]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown button clicked. which is = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :goto_0
    return-void

    .line 112
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/online/DataFeeCheckActivity$DataFeeWanringDialogClickListener;->this$0:Lcom/htc/music/online/DataFeeCheckActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/music/online/DataFeeCheckActivity;->setResult(I)V

    .line 113
    iget-object v0, p0, Lcom/htc/music/online/DataFeeCheckActivity$DataFeeWanringDialogClickListener;->this$0:Lcom/htc/music/online/DataFeeCheckActivity;

    #calls: Lcom/htc/music/online/DataFeeCheckActivity;->saveDataFeeChecked()V
    invoke-static {v0}, Lcom/htc/music/online/DataFeeCheckActivity;->access$000(Lcom/htc/music/online/DataFeeCheckActivity;)V

    .line 114
    iget-object v0, p0, Lcom/htc/music/online/DataFeeCheckActivity$DataFeeWanringDialogClickListener;->this$0:Lcom/htc/music/online/DataFeeCheckActivity;

    invoke-virtual {v0}, Lcom/htc/music/online/DataFeeCheckActivity;->finish()V

    goto :goto_0

    .line 117
    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/online/DataFeeCheckActivity$DataFeeWanringDialogClickListener;->this$0:Lcom/htc/music/online/DataFeeCheckActivity;

    invoke-virtual {v0}, Lcom/htc/music/online/DataFeeCheckActivity;->finish()V

    goto :goto_0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
