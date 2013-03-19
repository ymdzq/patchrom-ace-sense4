.class Lcom/htc/music/online/TrackListActivity$1;
.super Ljava/lang/Object;
.source "TrackListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/online/TrackListActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 196
    iput-object p1, p0, Lcom/htc/music/online/TrackListActivity$1;->this$0:Lcom/htc/music/online/TrackListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    .line 198
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity$1;->this$0:Lcom/htc/music/online/TrackListActivity;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mIsOnlineInnerType:Z
    invoke-static {v0}, Lcom/htc/music/online/TrackListActivity;->access$000(Lcom/htc/music/online/TrackListActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity$1;->this$0:Lcom/htc/music/online/TrackListActivity;

    const/4 v1, 0x0

    #setter for: Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mIsOnlineInnerType:Z
    invoke-static {v0, v1}, Lcom/htc/music/online/TrackListActivity;->access$102(Lcom/htc/music/online/TrackListActivity;Z)Z

    .line 200
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity$1;->this$0:Lcom/htc/music/online/TrackListActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/music/online/TrackListActivity;->mIsInnerTypeChanged:Z

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity$1;->this$0:Lcom/htc/music/online/TrackListActivity;

    iget-object v0, v0, Lcom/htc/music/online/TrackListActivity;->mSinaRequestHandler:Lcom/htc/music/online/sinamusic/SinaRequestHandler;

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity$1;->this$0:Lcom/htc/music/online/TrackListActivity;

    iget-object v0, v0, Lcom/htc/music/online/TrackListActivity;->mSinaRequestHandler:Lcom/htc/music/online/sinamusic/SinaRequestHandler;

    invoke-virtual {v0}, Lcom/htc/music/online/sinamusic/SinaRequestHandler;->setIsGotoLogin()V

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/htc/music/online/TrackListActivity$1;->this$0:Lcom/htc/music/online/TrackListActivity;

    iget-object v0, v0, Lcom/htc/music/online/TrackListActivity;->mActivity:Lcom/htc/music/online/TrackListActivity;

    const/16 v1, 0xc9

    invoke-static {v0, v1, v2, v2}, Lcom/htc/music/online/Util;->requestSinaAction(Landroid/content/Context;ILandroid/os/Handler;Landroid/os/Bundle;)V

    .line 206
    return-void
.end method
