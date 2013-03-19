.class Lcom/htc/music/online/TrackListActivity$3;
.super Ljava/lang/Object;
.source "TrackListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/online/TrackListActivity;->getSnsExceptionListener(I)Landroid/content/DialogInterface$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/online/TrackListActivity;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/htc/music/online/TrackListActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 506
    iput-object p1, p0, Lcom/htc/music/online/TrackListActivity$3;->this$0:Lcom/htc/music/online/TrackListActivity;

    iput p2, p0, Lcom/htc/music/online/TrackListActivity$3;->val$type:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x2

    .line 510
    if-eqz p1, :cond_0

    .line 511
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 514
    :cond_0
    iget v0, p0, Lcom/htc/music/online/TrackListActivity$3;->val$type:I

    packed-switch v0, :pswitch_data_0

    .line 528
    :cond_1
    :goto_0
    return-void

    .line 518
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity$3;->this$0:Lcom/htc/music/online/TrackListActivity;

    iget-object v0, v0, Lcom/htc/music/online/TrackListActivity;->mTrackListUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 519
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity$3;->this$0:Lcom/htc/music/online/TrackListActivity;

    iget-object v0, v0, Lcom/htc/music/online/TrackListActivity;->mTrackListUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 520
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity$3;->this$0:Lcom/htc/music/online/TrackListActivity;

    iget-object v0, v0, Lcom/htc/music/online/TrackListActivity;->mTrackListUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 522
    :cond_2
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity$3;->this$0:Lcom/htc/music/online/TrackListActivity;

    iget-object v0, v0, Lcom/htc/music/online/TrackListActivity;->mNonUIHandler:Lcom/htc/music/online/TrackListActivity$NonUIHandler;

    if-eqz v0, :cond_1

    .line 523
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity$3;->this$0:Lcom/htc/music/online/TrackListActivity;

    iget-object v0, v0, Lcom/htc/music/online/TrackListActivity;->mNonUIHandler:Lcom/htc/music/online/TrackListActivity$NonUIHandler;

    invoke-virtual {v0, v1}, Lcom/htc/music/online/TrackListActivity$NonUIHandler;->removeMessages(I)V

    .line 524
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity$3;->this$0:Lcom/htc/music/online/TrackListActivity;

    iget-object v0, v0, Lcom/htc/music/online/TrackListActivity;->mNonUIHandler:Lcom/htc/music/online/TrackListActivity$NonUIHandler;

    invoke-virtual {v0, v1}, Lcom/htc/music/online/TrackListActivity$NonUIHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 514
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
