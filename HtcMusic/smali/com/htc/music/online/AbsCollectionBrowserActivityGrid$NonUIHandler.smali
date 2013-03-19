.class final Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$NonUIHandler;
.super Landroid/os/Handler;
.source "AbsCollectionBrowserActivityGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NonUIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;


# direct methods
.method public constructor <init>(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 817
    iput-object p1, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$NonUIHandler;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    .line 818
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 819
    return-void
.end method

.method static synthetic access$1600(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$NonUIHandler;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 816
    invoke-direct {p0, p1}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$NonUIHandler;->getCollectionDetail(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$NonUIHandler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 816
    invoke-direct {p0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$NonUIHandler;->getNextCollectionList()V

    return-void
.end method

.method static synthetic access$1800(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$NonUIHandler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 816
    invoke-direct {p0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$NonUIHandler;->getFirstCollectionList()V

    return-void
.end method

.method private getCollectionDetail(Ljava/lang/String;)V
    .locals 2
    .parameter "songlisturl"

    .prologue
    .line 832
    iget-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$NonUIHandler;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    const/4 v1, 0x1

    #calls: Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->showLoadingProgressDialog(Z)V
    invoke-static {v0, v1}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->access$1400(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;Z)V

    .line 833
    const/16 v0, 0x65

    invoke-virtual {p0, v0, p1}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$NonUIHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$NonUIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 834
    return-void
.end method

.method private getFirstCollectionList()V
    .locals 2

    .prologue
    .line 827
    iget-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$NonUIHandler;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    const/4 v1, 0x1

    #calls: Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->showLoadingProgressDialog(Z)V
    invoke-static {v0, v1}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->access$1400(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;Z)V

    .line 828
    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$NonUIHandler;->sendEmptyMessage(I)Z

    .line 829
    return-void
.end method

.method private getNextCollectionList()V
    .locals 2

    .prologue
    .line 822
    iget-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$NonUIHandler;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    #getter for: Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->access$1200(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2716

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 823
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$NonUIHandler;->sendEmptyMessage(I)Z

    .line 824
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 838
    if-eqz p1, :cond_0

    .line 839
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 859
    :cond_0
    :goto_0
    return-void

    .line 842
    :pswitch_0
    iget-object v2, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$NonUIHandler;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    #setter for: Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mIsCollectionListLoading:Z
    invoke-static {v2, v3}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->access$202(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;Z)Z

    .line 843
    iget-object v2, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$NonUIHandler;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    iget-object v2, v2, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$NonUIHandler;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    invoke-virtual {v3}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->getNextCollectionType()I

    move-result v3

    iget-object v4, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$NonUIHandler;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    #getter for: Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mSinaHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->access$2300(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;)Landroid/os/Handler;

    move-result-object v4

    invoke-static {v2, v3, v4, v6}, Lcom/htc/music/online/Util;->requestSinaAction(Landroid/content/Context;ILandroid/os/Handler;Landroid/os/Bundle;)V

    .line 844
    iget-object v2, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$NonUIHandler;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    #setter for: Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mIsCollectionListLoading:Z
    invoke-static {v2, v5}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->access$202(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;Z)Z

    goto :goto_0

    .line 847
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 848
    .local v1, songlistUrl:Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 849
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "songlist_url"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    iget-object v2, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$NonUIHandler;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    iget-object v2, v2, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mContext:Landroid/content/Context;

    const/16 v3, 0xcb

    iget-object v4, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$NonUIHandler;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    #getter for: Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mSinaHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->access$2300(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;)Landroid/os/Handler;

    move-result-object v4

    invoke-static {v2, v3, v4, v0}, Lcom/htc/music/online/Util;->requestSinaAction(Landroid/content/Context;ILandroid/os/Handler;Landroid/os/Bundle;)V

    goto :goto_0

    .line 853
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #songlistUrl:Ljava/lang/String;
    :pswitch_2
    iget-object v2, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$NonUIHandler;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    #setter for: Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mIsCollectionListLoading:Z
    invoke-static {v2, v3}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->access$202(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;Z)Z

    .line 854
    iget-object v2, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$NonUIHandler;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    iget-object v2, v2, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$NonUIHandler;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    invoke-virtual {v3}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->getFirstCollectionType()I

    move-result v3

    iget-object v4, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$NonUIHandler;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    #getter for: Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mSinaHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->access$2300(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;)Landroid/os/Handler;

    move-result-object v4

    invoke-static {v2, v3, v4, v6}, Lcom/htc/music/online/Util;->requestSinaAction(Landroid/content/Context;ILandroid/os/Handler;Landroid/os/Bundle;)V

    .line 855
    iget-object v2, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$NonUIHandler;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    #setter for: Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mIsCollectionListLoading:Z
    invoke-static {v2, v5}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->access$202(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;Z)Z

    goto :goto_0

    .line 839
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
