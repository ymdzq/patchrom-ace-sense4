.class Lcom/htc/music/online/TrackListActivity$6;
.super Ljava/lang/Object;
.source "TrackListActivity.java"

# interfaces
.implements Lcom/htc/music/online/util/SnsExceptionManager$OnNextActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/online/TrackListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/online/TrackListActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/online/TrackListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1399
    iput-object p1, p0, Lcom/htc/music/online/TrackListActivity$6;->this$0:Lcom/htc/music/online/TrackListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public goLogin()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1413
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity$6;->this$0:Lcom/htc/music/online/TrackListActivity;

    #getter for: Lcom/htc/music/online/TrackListActivity;->mSnsExceptionManager:Lcom/htc/music/online/util/SnsExceptionManager;
    invoke-static {v0}, Lcom/htc/music/online/TrackListActivity;->access$800(Lcom/htc/music/online/TrackListActivity;)Lcom/htc/music/online/util/SnsExceptionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1414
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity$6;->this$0:Lcom/htc/music/online/TrackListActivity;

    #getter for: Lcom/htc/music/online/TrackListActivity;->mSnsExceptionManager:Lcom/htc/music/online/util/SnsExceptionManager;
    invoke-static {v0}, Lcom/htc/music/online/TrackListActivity;->access$800(Lcom/htc/music/online/TrackListActivity;)Lcom/htc/music/online/util/SnsExceptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/online/util/SnsExceptionManager;->hideErorrMsg()V

    .line 1416
    :cond_0
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity$6;->this$0:Lcom/htc/music/online/TrackListActivity;

    iget-object v0, v0, Lcom/htc/music/online/TrackListActivity;->mSinaRequestHandler:Lcom/htc/music/online/sinamusic/SinaRequestHandler;

    if-eqz v0, :cond_1

    .line 1417
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity$6;->this$0:Lcom/htc/music/online/TrackListActivity;

    iget-object v0, v0, Lcom/htc/music/online/TrackListActivity;->mSinaRequestHandler:Lcom/htc/music/online/sinamusic/SinaRequestHandler;

    invoke-virtual {v0, v2}, Lcom/htc/music/online/sinamusic/SinaRequestHandler;->setHasRelogin(Z)V

    .line 1419
    :cond_1
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity$6;->this$0:Lcom/htc/music/online/TrackListActivity;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mIsOnlineInnerType:Z
    invoke-static {v0}, Lcom/htc/music/online/TrackListActivity;->access$1100(Lcom/htc/music/online/TrackListActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1420
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity$6;->this$0:Lcom/htc/music/online/TrackListActivity;

    const/4 v1, 0x0

    #setter for: Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mIsOnlineInnerType:Z
    invoke-static {v0, v1}, Lcom/htc/music/online/TrackListActivity;->access$1202(Lcom/htc/music/online/TrackListActivity;Z)Z

    .line 1421
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity$6;->this$0:Lcom/htc/music/online/TrackListActivity;

    iput-boolean v2, v0, Lcom/htc/music/online/TrackListActivity;->mIsInnerTypeChanged:Z

    .line 1424
    :cond_2
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity$6;->this$0:Lcom/htc/music/online/TrackListActivity;

    const/16 v1, 0xd0

    invoke-static {v0, v1, v3, v3}, Lcom/htc/music/online/Util;->requestSinaAction(Landroid/content/Context;ILandroid/os/Handler;Landroid/os/Bundle;)V

    .line 1425
    return-void
.end method

.method public onNextAction(I)V
    .locals 0
    .parameter "errorType"

    .prologue
    .line 1402
    packed-switch p1, :pswitch_data_0

    .line 1410
    :goto_0
    return-void

    .line 1404
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/music/online/TrackListActivity$6;->goLogin()V

    goto :goto_0

    .line 1407
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/music/online/TrackListActivity$6;->retry()V

    goto :goto_0

    .line 1402
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public retry()V
    .locals 1

    .prologue
    .line 1428
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity$6;->this$0:Lcom/htc/music/online/TrackListActivity;

    #getter for: Lcom/htc/music/online/TrackListActivity;->mSnsExceptionManager:Lcom/htc/music/online/util/SnsExceptionManager;
    invoke-static {v0}, Lcom/htc/music/online/TrackListActivity;->access$800(Lcom/htc/music/online/TrackListActivity;)Lcom/htc/music/online/util/SnsExceptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/online/util/SnsExceptionManager;->hideErorrMsg()V

    .line 1429
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity$6;->this$0:Lcom/htc/music/online/TrackListActivity;

    invoke-virtual {v0}, Lcom/htc/music/online/TrackListActivity;->requestSongList()V

    .line 1430
    return-void
.end method
