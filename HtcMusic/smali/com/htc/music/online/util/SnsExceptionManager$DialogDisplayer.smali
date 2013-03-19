.class Lcom/htc/music/online/util/SnsExceptionManager$DialogDisplayer;
.super Lcom/htc/music/online/util/SnsExceptionManager$Displayer;
.source "SnsExceptionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/online/util/SnsExceptionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogDisplayer"
.end annotation


# instance fields
.field private mHtcAlertDialog:Lcom/htc/widget/HtcAlertDialog;

.field final synthetic this$0:Lcom/htc/music/online/util/SnsExceptionManager;


# direct methods
.method public constructor <init>(Lcom/htc/music/online/util/SnsExceptionManager;Lcom/htc/widget/HtcAlertDialog;)V
    .locals 1
    .parameter
    .parameter "dialog"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/htc/music/online/util/SnsExceptionManager$DialogDisplayer;->this$0:Lcom/htc/music/online/util/SnsExceptionManager;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/music/online/util/SnsExceptionManager$Displayer;-><init>(Lcom/htc/music/online/util/SnsExceptionManager;Lcom/htc/music/online/util/SnsExceptionManager$1;)V

    .line 117
    iput-object p2, p0, Lcom/htc/music/online/util/SnsExceptionManager$DialogDisplayer;->mHtcAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 118
    return-void
.end method


# virtual methods
.method dismiss()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/htc/music/online/util/SnsExceptionManager$DialogDisplayer;->mHtcAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/util/SnsExceptionManager$DialogDisplayer;->mHtcAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/htc/music/online/util/SnsExceptionManager$DialogDisplayer;->mHtcAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 124
    :cond_0
    return-void
.end method

.method show()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/htc/music/online/util/SnsExceptionManager$DialogDisplayer;->mHtcAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/util/SnsExceptionManager$DialogDisplayer;->mHtcAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/htc/music/online/util/SnsExceptionManager$DialogDisplayer;->mHtcAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 130
    :cond_0
    return-void
.end method
