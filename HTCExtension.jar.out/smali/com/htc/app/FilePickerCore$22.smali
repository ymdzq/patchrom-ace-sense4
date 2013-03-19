.class Lcom/htc/app/FilePickerCore$22;
.super Ljava/lang/Object;
.source "FilePickerCore.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/app/FilePickerCore;->createSortDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/app/FilePickerCore;


# direct methods
.method constructor <init>(Lcom/htc/app/FilePickerCore;)V
    .locals 0
    .parameter

    .prologue
    .line 3822
    iput-object p1, p0, Lcom/htc/app/FilePickerCore$22;->this$0:Lcom/htc/app/FilePickerCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 3825
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3829
    const/4 v2, 0x0

    .line 3830
    .local v2, fileCount_listView:I
    iget-object v4, p0, Lcom/htc/app/FilePickerCore$22;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;
    invoke-static {v4}, Lcom/htc/app/FilePickerCore;->access$5600(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerListAdapter;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 3831
    iget-object v4, p0, Lcom/htc/app/FilePickerCore$22;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;
    invoke-static {v4}, Lcom/htc/app/FilePickerCore;->access$5600(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/app/FilePickerListAdapter;->getFileCount()I

    move-result v2

    .line 3834
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 3853
    :goto_0
    iget-object v4, p0, Lcom/htc/app/FilePickerCore$22;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mIsTypeStopScan:Z
    invoke-static {v4}, Lcom/htc/app/FilePickerCore;->access$6300(Lcom/htc/app/FilePickerCore;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3854
    iget-object v4, p0, Lcom/htc/app/FilePickerCore$22;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mFileSorter:Lcom/htc/app/FileSorter;
    invoke-static {v4}, Lcom/htc/app/FilePickerCore;->access$6400(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FileSorter;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/app/FilePickerCore$22;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mSortType:I
    invoke-static {v5}, Lcom/htc/app/FilePickerCore;->access$3500(Lcom/htc/app/FilePickerCore;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/htc/app/FileSorter;->setSortBy(I)V

    .line 3855
    iget-object v4, p0, Lcom/htc/app/FilePickerCore$22;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mFileSorter:Lcom/htc/app/FileSorter;
    invoke-static {v4}, Lcom/htc/app/FilePickerCore;->access$6400(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FileSorter;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/app/FilePickerCore$22;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mSortOrder:I
    invoke-static {v5}, Lcom/htc/app/FilePickerCore;->access$3400(Lcom/htc/app/FilePickerCore;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/htc/app/FileSorter;->setSortOrder(I)V

    .line 3856
    if-lez v2, :cond_1

    .line 3857
    iget-object v4, p0, Lcom/htc/app/FilePickerCore$22;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;
    invoke-static {v4}, Lcom/htc/app/FilePickerCore;->access$5600(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/app/FilePickerListAdapter;->sort()V

    .line 3858
    :cond_1
    iget-object v4, p0, Lcom/htc/app/FilePickerCore$22;->this$0:Lcom/htc/app/FilePickerCore;

    const-string v5, "GarbageMessage_LongVacation"

    #calls: Lcom/htc/app/FilePickerCore;->notifyTextChanged(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/htc/app/FilePickerCore;->access$6500(Lcom/htc/app/FilePickerCore;Ljava/lang/String;)V

    .line 3860
    const-string v4, "Tab_Type"

    iget-object v5, p0, Lcom/htc/app/FilePickerCore$22;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/app/FilePickerCore;->access$4500(Lcom/htc/app/FilePickerCore;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3861
    iget-object v4, p0, Lcom/htc/app/FilePickerCore$22;->this$0:Lcom/htc/app/FilePickerCore;

    #calls: Lcom/htc/app/FilePickerCore;->notifyTextChanged()V
    invoke-static {v4}, Lcom/htc/app/FilePickerCore;->access$6600(Lcom/htc/app/FilePickerCore;)V

    .line 3863
    :cond_2
    const/4 v3, 0x0

    .line 3864
    .local v3, moreExpanedObject:Lcom/htc/app/FilePickerCore$MoreExpanedObject;
    iget-object v4, p0, Lcom/htc/app/FilePickerCore$22;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v4}, Lcom/htc/app/FilePickerCore;->access$300(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/app/FilePickerUtil;->getDataSourceType()I

    move-result v1

    .line 3865
    .local v1, dataSourceType:I
    iget-object v4, p0, Lcom/htc/app/FilePickerCore$22;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;
    invoke-static {v4}, Lcom/htc/app/FilePickerCore;->access$100(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerCloudHelper;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/htc/app/FilePickerCloudHelper;->getAccountIds(I)[Ljava/lang/String;

    move-result-object v0

    .line 3867
    .local v0, accounts:[Ljava/lang/String;
    if-eqz v0, :cond_5

    array-length v4, v0

    if-lez v4, :cond_5

    .line 3868
    iget-object v4, p0, Lcom/htc/app/FilePickerCore$22;->this$0:Lcom/htc/app/FilePickerCore;

    aget-object v5, v0, v6

    #calls: Lcom/htc/app/FilePickerCore;->findMoreExpanedObjectInstance(ILjava/lang/String;)Lcom/htc/app/FilePickerCore$MoreExpanedObject;
    invoke-static {v4, v1, v5}, Lcom/htc/app/FilePickerCore;->access$6700(Lcom/htc/app/FilePickerCore;ILjava/lang/String;)Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    move-result-object v3

    .line 3875
    :goto_1
    if-eqz v3, :cond_3

    .line 3876
    iget-object v4, p0, Lcom/htc/app/FilePickerCore$22;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mSortOrder:I
    invoke-static {v4}, Lcom/htc/app/FilePickerCore;->access$3400(Lcom/htc/app/FilePickerCore;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->setSortOrder(I)V

    .line 3877
    iget-object v4, p0, Lcom/htc/app/FilePickerCore$22;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mSortType:I
    invoke-static {v4}, Lcom/htc/app/FilePickerCore;->access$3500(Lcom/htc/app/FilePickerCore;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->setSortBy(I)V

    .line 3878
    invoke-virtual {v3}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->sort()V

    .line 3880
    :cond_3
    iget-object v4, p0, Lcom/htc/app/FilePickerCore$22;->this$0:Lcom/htc/app/FilePickerCore;

    iget-object v5, p0, Lcom/htc/app/FilePickerCore$22;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mFavoritesAdapter:Lcom/htc/app/FilePickerListAdapter;
    invoke-static {v5}, Lcom/htc/app/FilePickerCore;->access$5700(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerListAdapter;

    move-result-object v5

    #calls: Lcom/htc/app/FilePickerCore;->sort(Lcom/htc/app/FilePickerListAdapter;)V
    invoke-static {v4, v5}, Lcom/htc/app/FilePickerCore;->access$6800(Lcom/htc/app/FilePickerCore;Lcom/htc/app/FilePickerListAdapter;)V

    .line 3881
    iget-object v4, p0, Lcom/htc/app/FilePickerCore$22;->this$0:Lcom/htc/app/FilePickerCore;

    iget-object v5, p0, Lcom/htc/app/FilePickerCore$22;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mRecentAdapter:Lcom/htc/app/FilePickerListAdapter;
    invoke-static {v5}, Lcom/htc/app/FilePickerCore;->access$5800(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerListAdapter;

    move-result-object v5

    #calls: Lcom/htc/app/FilePickerCore;->sort(Lcom/htc/app/FilePickerListAdapter;)V
    invoke-static {v4, v5}, Lcom/htc/app/FilePickerCore;->access$6800(Lcom/htc/app/FilePickerCore;Lcom/htc/app/FilePickerListAdapter;)V

    .line 3882
    iget-object v4, p0, Lcom/htc/app/FilePickerCore$22;->this$0:Lcom/htc/app/FilePickerCore;

    iget-object v5, p0, Lcom/htc/app/FilePickerCore$22;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mSortType:I
    invoke-static {v5}, Lcom/htc/app/FilePickerCore;->access$3500(Lcom/htc/app/FilePickerCore;)I

    move-result v5

    iget-object v6, p0, Lcom/htc/app/FilePickerCore$22;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mSortOrder:I
    invoke-static {v6}, Lcom/htc/app/FilePickerCore;->access$3400(Lcom/htc/app/FilePickerCore;)I

    move-result v6

    #calls: Lcom/htc/app/FilePickerCore;->saveSortPreferences(II)V
    invoke-static {v4, v5, v6}, Lcom/htc/app/FilePickerCore;->access$6900(Lcom/htc/app/FilePickerCore;II)V

    .line 3884
    iget-object v4, p0, Lcom/htc/app/FilePickerCore$22;->this$0:Lcom/htc/app/FilePickerCore;

    #setter for: Lcom/htc/app/FilePickerCore;->mSortSelectedItem:I
    invoke-static {v4, p2}, Lcom/htc/app/FilePickerCore;->access$7002(Lcom/htc/app/FilePickerCore;I)I

    .line 3886
    iget-object v4, p0, Lcom/htc/app/FilePickerCore$22;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/app/FilePickerCore;->access$4500(Lcom/htc/app/FilePickerCore;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 3887
    iget-object v4, p0, Lcom/htc/app/FilePickerCore$22;->this$0:Lcom/htc/app/FilePickerCore;

    iget-object v5, p0, Lcom/htc/app/FilePickerCore$22;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/app/FilePickerCore;->access$4500(Lcom/htc/app/FilePickerCore;)Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/htc/app/FilePickerCore;->showViewByTab(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/htc/app/FilePickerCore;->access$1400(Lcom/htc/app/FilePickerCore;Ljava/lang/String;)V

    .line 3888
    :cond_4
    return-void

    .line 3836
    .end local v0           #accounts:[Ljava/lang/String;
    .end local v1           #dataSourceType:I
    .end local v3           #moreExpanedObject:Lcom/htc/app/FilePickerCore$MoreExpanedObject;
    :pswitch_0
    iget-object v4, p0, Lcom/htc/app/FilePickerCore$22;->this$0:Lcom/htc/app/FilePickerCore;

    #setter for: Lcom/htc/app/FilePickerCore;->mSortType:I
    invoke-static {v4, v6}, Lcom/htc/app/FilePickerCore;->access$3502(Lcom/htc/app/FilePickerCore;I)I

    .line 3837
    iget-object v4, p0, Lcom/htc/app/FilePickerCore$22;->this$0:Lcom/htc/app/FilePickerCore;

    #setter for: Lcom/htc/app/FilePickerCore;->mSortOrder:I
    invoke-static {v4, v6}, Lcom/htc/app/FilePickerCore;->access$3402(Lcom/htc/app/FilePickerCore;I)I

    goto/16 :goto_0

    .line 3841
    :pswitch_1
    iget-object v4, p0, Lcom/htc/app/FilePickerCore$22;->this$0:Lcom/htc/app/FilePickerCore;

    #setter for: Lcom/htc/app/FilePickerCore;->mSortType:I
    invoke-static {v4, v6}, Lcom/htc/app/FilePickerCore;->access$3502(Lcom/htc/app/FilePickerCore;I)I

    .line 3842
    iget-object v4, p0, Lcom/htc/app/FilePickerCore$22;->this$0:Lcom/htc/app/FilePickerCore;

    #setter for: Lcom/htc/app/FilePickerCore;->mSortOrder:I
    invoke-static {v4, v5}, Lcom/htc/app/FilePickerCore;->access$3402(Lcom/htc/app/FilePickerCore;I)I

    goto/16 :goto_0

    .line 3845
    :pswitch_2
    iget-object v4, p0, Lcom/htc/app/FilePickerCore$22;->this$0:Lcom/htc/app/FilePickerCore;

    #setter for: Lcom/htc/app/FilePickerCore;->mSortType:I
    invoke-static {v4, v5}, Lcom/htc/app/FilePickerCore;->access$3502(Lcom/htc/app/FilePickerCore;I)I

    .line 3846
    iget-object v4, p0, Lcom/htc/app/FilePickerCore$22;->this$0:Lcom/htc/app/FilePickerCore;

    #setter for: Lcom/htc/app/FilePickerCore;->mSortOrder:I
    invoke-static {v4, v6}, Lcom/htc/app/FilePickerCore;->access$3402(Lcom/htc/app/FilePickerCore;I)I

    goto/16 :goto_0

    .line 3849
    :pswitch_3
    iget-object v4, p0, Lcom/htc/app/FilePickerCore$22;->this$0:Lcom/htc/app/FilePickerCore;

    #setter for: Lcom/htc/app/FilePickerCore;->mSortType:I
    invoke-static {v4, v5}, Lcom/htc/app/FilePickerCore;->access$3502(Lcom/htc/app/FilePickerCore;I)I

    .line 3850
    iget-object v4, p0, Lcom/htc/app/FilePickerCore$22;->this$0:Lcom/htc/app/FilePickerCore;

    #setter for: Lcom/htc/app/FilePickerCore;->mSortOrder:I
    invoke-static {v4, v5}, Lcom/htc/app/FilePickerCore;->access$3402(Lcom/htc/app/FilePickerCore;I)I

    goto/16 :goto_0

    .line 3871
    .restart local v0       #accounts:[Ljava/lang/String;
    .restart local v1       #dataSourceType:I
    .restart local v3       #moreExpanedObject:Lcom/htc/app/FilePickerCore$MoreExpanedObject;
    :cond_5
    iget-object v4, p0, Lcom/htc/app/FilePickerCore$22;->this$0:Lcom/htc/app/FilePickerCore;

    const/4 v5, 0x0

    #calls: Lcom/htc/app/FilePickerCore;->findMoreExpanedObjectInstance(ILjava/lang/String;)Lcom/htc/app/FilePickerCore$MoreExpanedObject;
    invoke-static {v4, v1, v5}, Lcom/htc/app/FilePickerCore;->access$6700(Lcom/htc/app/FilePickerCore;ILjava/lang/String;)Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    move-result-object v3

    goto/16 :goto_1

    .line 3834
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
