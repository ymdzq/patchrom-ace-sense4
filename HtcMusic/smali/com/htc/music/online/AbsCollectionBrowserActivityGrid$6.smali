.class Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$6;
.super Ljava/lang/Object;
.source "AbsCollectionBrowserActivityGrid.java"

# interfaces
.implements Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private ifScrollUp:Z

.field private ifUserWantToLoad:Z

.field final synthetic this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;


# direct methods
.method constructor <init>(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 701
    iput-object p1, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$6;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 703
    iput-boolean v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$6;->ifUserWantToLoad:Z

    .line 704
    iput-boolean v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$6;->ifScrollUp:Z

    return-void
.end method


# virtual methods
.method public onScrollIRT(Lcom/htc/sunny2/widget/gridview/GridView;III)V
    .locals 5
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 748
    add-int v4, p2, p3

    if-ne v4, p4, :cond_1

    move v0, v2

    .line 749
    .local v0, condition_ifUserWantToLoad:Z
    :goto_0
    if-eqz v0, :cond_2

    .line 750
    iput-boolean v2, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$6;->ifUserWantToLoad:Z

    .line 751
    const-string v2, "[FriendsCollectionBrowserActivityGrid]"

    const-string v4, "[onScrollIRT] Max item reached, user want to load"

    invoke-static {v2, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    const/16 v1, 0xf

    .line 759
    .local v1, defaultAmountPerPage:I
    rem-int v2, p4, v1

    if-eqz v2, :cond_0

    .line 760
    iget-object v2, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$6;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    #setter for: Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mHasData:Z
    invoke-static {v2, v3}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->access$502(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;Z)Z

    .line 765
    .end local v1           #defaultAmountPerPage:I
    :cond_0
    :goto_1
    return-void

    .end local v0           #condition_ifUserWantToLoad:Z
    :cond_1
    move v0, v3

    .line 748
    goto :goto_0

    .line 763
    .restart local v0       #condition_ifUserWantToLoad:Z
    :cond_2
    iput-boolean v3, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$6;->ifUserWantToLoad:Z

    goto :goto_1
.end method

.method public onScrollStateChangedIRT(Lcom/htc/sunny2/widget/gridview/GridView;I)V
    .locals 4
    .parameter "view"
    .parameter "scrollState"

    .prologue
    const/4 v3, 0x1

    .line 707
    const-string v0, "[FriendsCollectionBrowserActivityGrid]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onScrollStateChangedIRT], preState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->access$2200()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " scrollState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ifUserWantToLoad = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$6;->ifUserWantToLoad:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ifScrollUp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$6;->ifScrollUp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    packed-switch p2, :pswitch_data_0

    .line 741
    :cond_0
    :goto_0
    invoke-static {p2}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->access$2202(I)I

    .line 742
    return-void

    .line 718
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$6;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    iget-object v0, v0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->resumePreparator(Z)V

    .line 720
    iget-boolean v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$6;->ifUserWantToLoad:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$6;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    #getter for: Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mIsCollectionListLoading:Z
    invoke-static {v0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->access$200(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$6;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    #getter for: Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->mHasData:Z
    invoke-static {v0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->access$500(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 723
    iget-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$6;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    sget-object v1, Lcom/htc/music/online/SinaActions;->GET_NEXT_COLLECTION:Lcom/htc/music/online/SinaActions;

    invoke-virtual {v0, v1}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->doAction(Lcom/htc/music/online/SinaActions;)V

    .line 724
    const-string v0, "[FriendsCollectionBrowserActivityGrid]"

    const-string v1, "Begin to load next 18 items"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 726
    :cond_1
    const-string v0, "[FriendsCollectionBrowserActivityGrid]"

    const-string v1, "No more data, do not load"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    iget-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$6;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    #calls: Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->showNoDataToast()V
    invoke-static {v0}, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;->access$1100(Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;)V

    goto :goto_0

    .line 733
    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$6;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    iget-object v0, v0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->resumePreparator(Z)V

    goto :goto_0

    .line 737
    :pswitch_2
    iget-object v0, p0, Lcom/htc/music/online/AbsCollectionBrowserActivityGrid$6;->this$0:Lcom/htc/music/online/AbsCollectionBrowserActivityGrid;

    iget-object v0, v0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->resumePreparator(Z)V

    goto :goto_0

    .line 716
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
