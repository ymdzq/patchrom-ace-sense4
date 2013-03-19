.class Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$4;
.super Ljava/lang/Object;
.source "AbsCollectionBrowserActivityGrid.java"

# interfaces
.implements Lcom/htc/music/online/util/SnsExceptionManager$OnNextActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;


# direct methods
.method constructor <init>(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;)V
    .locals 0
    .parameter

    .prologue
    .line 337
    iput-object p1, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$4;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public goLogin()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 351
    iget-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$4;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    #getter for: Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mSnsExceptionManager:Lcom/htc/music/online/util/SnsExceptionManager;
    invoke-static {v0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->access$2000(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;)Lcom/htc/music/online/util/SnsExceptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/online/util/SnsExceptionManager;->hideErorrMsg()V

    .line 352
    iget-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$4;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    #setter for: Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mIsStartMutiProcessActivity:Z
    invoke-static {v0, v1}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->access$2102(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;Z)Z

    .line 353
    iget-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$4;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    #setter for: Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mHasRequestRelogin:Z
    invoke-static {v0, v1}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->access$802(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;Z)Z

    .line 354
    iget-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$4;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    iget-object v0, v0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mContext:Landroid/content/Context;

    const/16 v1, 0xd0

    invoke-static {v0, v1, v2, v2}, Lcom/htc/music/online/Util;->requestSinaAction(Landroid/content/Context;ILandroid/os/Handler;Landroid/os/Bundle;)V

    .line 355
    return-void
.end method

.method public onNextAction(I)V
    .locals 0
    .parameter "errorType"

    .prologue
    .line 340
    packed-switch p1, :pswitch_data_0

    .line 348
    :goto_0
    return-void

    .line 342
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$4;->goLogin()V

    goto :goto_0

    .line 345
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$4;->retry()V

    goto :goto_0

    .line 340
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public retry()V
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$4;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    #getter for: Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mSnsExceptionManager:Lcom/htc/music/online/util/SnsExceptionManager;
    invoke-static {v0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->access$2000(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;)Lcom/htc/music/online/util/SnsExceptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/online/util/SnsExceptionManager;->hideErorrMsg()V

    .line 360
    iget-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$4;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    iget-object v1, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$4;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    #getter for: Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mCurrentAction:Lcom/htc/music/online/SinaActions;
    invoke-static {v1}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->access$1900(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;)Lcom/htc/music/online/SinaActions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->doAction(Lcom/htc/music/online/SinaActions;)V

    .line 361
    return-void
.end method
