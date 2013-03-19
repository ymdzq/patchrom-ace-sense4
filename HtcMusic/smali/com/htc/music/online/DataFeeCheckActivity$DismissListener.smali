.class Lcom/htc/music/online/DataFeeCheckActivity$DismissListener;
.super Ljava/lang/Object;
.source "DataFeeCheckActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/online/DataFeeCheckActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DismissListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/online/DataFeeCheckActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/online/DataFeeCheckActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/htc/music/online/DataFeeCheckActivity$DismissListener;->this$0:Lcom/htc/music/online/DataFeeCheckActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/htc/music/online/DataFeeCheckActivity$DismissListener;->this$0:Lcom/htc/music/online/DataFeeCheckActivity;

    invoke-virtual {v0}, Lcom/htc/music/online/DataFeeCheckActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/htc/music/online/DataFeeCheckActivity$DismissListener;->this$0:Lcom/htc/music/online/DataFeeCheckActivity;

    invoke-virtual {v0}, Lcom/htc/music/online/DataFeeCheckActivity;->finish()V

    .line 143
    :cond_0
    return-void
.end method
