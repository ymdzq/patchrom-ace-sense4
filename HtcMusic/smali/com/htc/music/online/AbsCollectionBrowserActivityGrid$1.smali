.class Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$1;
.super Landroid/os/Handler;
.source "AbsCollectionBrowserActivityGrid.java"


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
    .line 169
    iput-object p1, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$1;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    .line 171
    if-eqz p1, :cond_0

    .line 172
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 175
    :sswitch_0
    iget-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$1;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->setCategoryProgressVisible(Z)V

    goto :goto_0

    .line 178
    :sswitch_1
    iget-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$1;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    invoke-virtual {v0, v1}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->setCategoryProgressVisible(Z)V

    goto :goto_0

    .line 181
    :sswitch_2
    iget-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$1;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    #calls: Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->clearSonglist()V
    invoke-static {v0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->access$000(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;)V

    .line 182
    iget-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$1;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    #getter for: Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->access$100(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$1;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    #getter for: Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->access$100(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$1;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    #getter for: Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mIsCollectionListLoading:Z
    invoke-static {v0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->access$200(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$1;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    #getter for: Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->access$100(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$1;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    #calls: Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->checkLogin()V
    invoke-static {v0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->access$300(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;)V

    goto :goto_0

    .line 188
    :sswitch_3
    iget-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$1;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    iget-object v0, v0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$1;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    iget-object v0, v0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/view/SSurfaceView;->setVisibility(I)V

    goto :goto_0

    .line 193
    :sswitch_4
    iget-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$1;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    iget-object v0, v0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$1;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    iget-object v0, v0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/view/SSurfaceView;->setVisibility(I)V

    goto :goto_0

    .line 172
    :sswitch_data_0
    .sparse-switch
        0x2716 -> :sswitch_0
        0x2717 -> :sswitch_1
        0x186a1 -> :sswitch_2
        0x186a2 -> :sswitch_4
        0x186a3 -> :sswitch_3
    .end sparse-switch
.end method
