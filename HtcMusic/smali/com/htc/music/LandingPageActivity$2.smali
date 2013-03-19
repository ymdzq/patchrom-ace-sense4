.class Lcom/htc/music/LandingPageActivity$2;
.super Landroid/os/Handler;
.source "LandingPageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/LandingPageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/LandingPageActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/LandingPageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 640
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity$2;->this$0:Lcom/htc/music/LandingPageActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 643
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 679
    :cond_0
    :goto_0
    return-void

    .line 645
    :pswitch_0
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity$2;->this$0:Lcom/htc/music/LandingPageActivity;

    iget-object v1, p0, Lcom/htc/music/LandingPageActivity$2;->this$0:Lcom/htc/music/LandingPageActivity;

    const-string v3, "layout_inflater"

    invoke-virtual {v1, v3}, Lcom/htc/music/LandingPageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    #setter for: Lcom/htc/music/LandingPageActivity;->mLayoutInflater:Landroid/view/LayoutInflater;
    invoke-static {v2, v1}, Lcom/htc/music/LandingPageActivity;->access$1402(Lcom/htc/music/LandingPageActivity;Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    .line 647
    iget-object v1, p0, Lcom/htc/music/LandingPageActivity$2;->this$0:Lcom/htc/music/LandingPageActivity;

    iget-object v2, p0, Lcom/htc/music/LandingPageActivity$2;->this$0:Lcom/htc/music/LandingPageActivity;

    invoke-virtual {v2}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    #setter for: Lcom/htc/music/LandingPageActivity;->mOrientation:I
    invoke-static {v1, v2}, Lcom/htc/music/LandingPageActivity;->access$1502(Lcom/htc/music/LandingPageActivity;I)I

    .line 649
    iget-object v1, p0, Lcom/htc/music/LandingPageActivity$2;->this$0:Lcom/htc/music/LandingPageActivity;

    #calls: Lcom/htc/music/LandingPageActivity;->initConstant()V
    invoke-static {v1}, Lcom/htc/music/LandingPageActivity;->access$1600(Lcom/htc/music/LandingPageActivity;)V

    .line 651
    iget-object v1, p0, Lcom/htc/music/LandingPageActivity$2;->this$0:Lcom/htc/music/LandingPageActivity;

    #calls: Lcom/htc/music/LandingPageActivity;->initCustMap()V
    invoke-static {v1}, Lcom/htc/music/LandingPageActivity;->access$1700(Lcom/htc/music/LandingPageActivity;)V

    .line 652
    iget-object v1, p0, Lcom/htc/music/LandingPageActivity$2;->this$0:Lcom/htc/music/LandingPageActivity;

    #calls: Lcom/htc/music/LandingPageActivity;->initCustTypeMap()V
    invoke-static {v1}, Lcom/htc/music/LandingPageActivity;->access$1800(Lcom/htc/music/LandingPageActivity;)V

    .line 654
    iget-object v1, p0, Lcom/htc/music/LandingPageActivity$2;->this$0:Lcom/htc/music/LandingPageActivity;

    new-instance v2, Lcom/htc/music/ShortcutPageInfo;

    iget-object v3, p0, Lcom/htc/music/LandingPageActivity$2;->this$0:Lcom/htc/music/LandingPageActivity;

    invoke-direct {v2, v3}, Lcom/htc/music/ShortcutPageInfo;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/htc/music/LandingPageActivity;->mShortcutPageInfo:Lcom/htc/music/ShortcutPageInfo;
    invoke-static {v1, v2}, Lcom/htc/music/LandingPageActivity;->access$1902(Lcom/htc/music/LandingPageActivity;Lcom/htc/music/ShortcutPageInfo;)Lcom/htc/music/ShortcutPageInfo;

    .line 655
    iget-object v1, p0, Lcom/htc/music/LandingPageActivity$2;->this$0:Lcom/htc/music/LandingPageActivity;

    #calls: Lcom/htc/music/LandingPageActivity;->reloadLaunchItemList()V
    invoke-static {v1}, Lcom/htc/music/LandingPageActivity;->access$2000(Lcom/htc/music/LandingPageActivity;)V

    .line 656
    iget-object v1, p0, Lcom/htc/music/LandingPageActivity$2;->this$0:Lcom/htc/music/LandingPageActivity;

    #calls: Lcom/htc/music/LandingPageActivity;->updateLaunchItemsUI()V
    invoke-static {v1}, Lcom/htc/music/LandingPageActivity;->access$2100(Lcom/htc/music/LandingPageActivity;)V

    .line 658
    iget-object v1, p0, Lcom/htc/music/LandingPageActivity$2;->this$0:Lcom/htc/music/LandingPageActivity;

    new-instance v2, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;

    iget-object v3, p0, Lcom/htc/music/LandingPageActivity$2;->this$0:Lcom/htc/music/LandingPageActivity;

    invoke-virtual {v3}, Lcom/htc/music/LandingPageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/LandingPageActivity$2;->this$0:Lcom/htc/music/LandingPageActivity;

    invoke-direct {v2, v3, v4}, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;-><init>(Landroid/content/Context;Lcom/htc/music/LandingPageActivity;)V

    #setter for: Lcom/htc/music/LandingPageActivity;->mAdapter:Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;
    invoke-static {v1, v2}, Lcom/htc/music/LandingPageActivity;->access$2202(Lcom/htc/music/LandingPageActivity;Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;)Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;

    .line 659
    iget-object v1, p0, Lcom/htc/music/LandingPageActivity$2;->this$0:Lcom/htc/music/LandingPageActivity;

    iget-object v2, p0, Lcom/htc/music/LandingPageActivity$2;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mAdapter:Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;
    invoke-static {v2}, Lcom/htc/music/LandingPageActivity;->access$2200(Lcom/htc/music/LandingPageActivity;)Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/music/LandingPageActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 662
    :pswitch_1
    iget-object v1, p0, Lcom/htc/music/LandingPageActivity$2;->this$0:Lcom/htc/music/LandingPageActivity;

    #calls: Lcom/htc/music/LandingPageActivity;->hideRecentlyAlbumDialogs()V
    invoke-static {v1}, Lcom/htc/music/LandingPageActivity;->access$2300(Lcom/htc/music/LandingPageActivity;)V

    .line 663
    iget-object v1, p0, Lcom/htc/music/LandingPageActivity$2;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/music/LandingPageActivity;->access$2400(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 664
    new-instance v0, Lcom/htc/music/LandingPageActivity$BaseItem;

    invoke-direct {v0}, Lcom/htc/music/LandingPageActivity$BaseItem;-><init>()V

    .line 665
    .local v0, addItem:Lcom/htc/music/LandingPageActivity$BaseItem;
    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/htc/music/LandingPageActivity$BaseItem;->setId(I)V

    .line 666
    iget-object v1, p0, Lcom/htc/music/LandingPageActivity$2;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/music/LandingPageActivity;->access$2400(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 667
    iget-object v1, p0, Lcom/htc/music/LandingPageActivity$2;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mAdapter:Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;
    invoke-static {v1}, Lcom/htc/music/LandingPageActivity;->access$2200(Lcom/htc/music/LandingPageActivity;)Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 668
    iget-object v1, p0, Lcom/htc/music/LandingPageActivity$2;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mAdapter:Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;
    invoke-static {v1}, Lcom/htc/music/LandingPageActivity;->access$2200(Lcom/htc/music/LandingPageActivity;)Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 673
    .end local v0           #addItem:Lcom/htc/music/LandingPageActivity$BaseItem;
    :pswitch_2
    iget-object v1, p0, Lcom/htc/music/LandingPageActivity$2;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mAdapter:Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;
    invoke-static {v1}, Lcom/htc/music/LandingPageActivity;->access$2200(Lcom/htc/music/LandingPageActivity;)Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 674
    iget-object v1, p0, Lcom/htc/music/LandingPageActivity$2;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mAdapter:Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;
    invoke-static {v1}, Lcom/htc/music/LandingPageActivity;->access$2200(Lcom/htc/music/LandingPageActivity;)Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 643
    nop

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
