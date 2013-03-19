.class Lcom/htc/music/online/util/SnsExceptionManager$1;
.super Ljava/lang/Object;
.source "SnsExceptionManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/online/util/SnsExceptionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/online/util/SnsExceptionManager;


# direct methods
.method constructor <init>(Lcom/htc/music/online/util/SnsExceptionManager;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/htc/music/online/util/SnsExceptionManager$1;->this$0:Lcom/htc/music/online/util/SnsExceptionManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/music/online/util/SnsExceptionManager$1;->this$0:Lcom/htc/music/online/util/SnsExceptionManager;

    #getter for: Lcom/htc/music/online/util/SnsExceptionManager;->mSnsException:Lcom/htc/music/online/sinamusic/SnsException;
    invoke-static {v0}, Lcom/htc/music/online/util/SnsExceptionManager;->access$100(Lcom/htc/music/online/util/SnsExceptionManager;)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/htc/music/online/util/SnsExceptionManager$1;->this$0:Lcom/htc/music/online/util/SnsExceptionManager;

    #getter for: Lcom/htc/music/online/util/SnsExceptionManager;->mLastDisplayableObj:Ljava/lang/Object;
    invoke-static {v0}, Lcom/htc/music/online/util/SnsExceptionManager;->access$200(Lcom/htc/music/online/util/SnsExceptionManager;)Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/htc/music/online/util/SnsExceptionManager$1;->this$0:Lcom/htc/music/online/util/SnsExceptionManager;

    #getter for: Lcom/htc/music/online/util/SnsExceptionManager;->mOnNextActionListener:Lcom/htc/music/online/util/SnsExceptionManager$OnNextActionListener;
    invoke-static {v0}, Lcom/htc/music/online/util/SnsExceptionManager;->access$300(Lcom/htc/music/online/util/SnsExceptionManager;)Lcom/htc/music/online/util/SnsExceptionManager$OnNextActionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/online/util/SnsExceptionManager$1;->this$0:Lcom/htc/music/online/util/SnsExceptionManager;

    #getter for: Lcom/htc/music/online/util/SnsExceptionManager;->mSnsException:Lcom/htc/music/online/sinamusic/SnsException;
    invoke-static {v1}, Lcom/htc/music/online/util/SnsExceptionManager;->access$100(Lcom/htc/music/online/util/SnsExceptionManager;)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/music/online/sinamusic/SnsException;->getChildErrorCode()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/htc/music/online/util/SnsExceptionManager$OnNextActionListener;->onNextAction(I)V

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    const-string v0, ""

    const-string v1, "[onClick] error is null"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
