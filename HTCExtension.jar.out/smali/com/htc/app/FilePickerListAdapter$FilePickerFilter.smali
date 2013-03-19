.class Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;
.super Landroid/widget/Filter;
.source "FilePickerListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/FilePickerListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilePickerFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/app/FilePickerListAdapter;


# direct methods
.method private constructor <init>(Lcom/htc/app/FilePickerListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 520
    iput-object p1, p0, Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;->this$0:Lcom/htc/app/FilePickerListAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/app/FilePickerListAdapter;Lcom/htc/app/FilePickerListAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 520
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;-><init>(Lcom/htc/app/FilePickerListAdapter;)V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 14
    .parameter "prefix"

    .prologue
    .line 528
    iget-object v11, p0, Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->DEBUG:Z
    invoke-static {v11}, Lcom/htc/app/FilePickerListAdapter;->access$400(Lcom/htc/app/FilePickerListAdapter;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 529
    iget-object v11, p0, Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->TAG:Ljava/lang/String;
    invoke-static {v11}, Lcom/htc/app/FilePickerListAdapter;->access$500(Lcom/htc/app/FilePickerListAdapter;)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "FilePickerFilter: performFiltering("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    :cond_0
    new-instance v7, Landroid/widget/Filter$FilterResults;

    invoke-direct {v7}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 531
    .local v7, results:Landroid/widget/Filter$FilterResults;
    iget-object v11, p0, Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;
    invoke-static {v11}, Lcom/htc/app/FilePickerListAdapter;->access$600(Lcom/htc/app/FilePickerListAdapter;)Ljava/util/List;

    move-result-object v11

    if-nez v11, :cond_1

    .line 532
    iget-object v11, p0, Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;
    invoke-static {v11}, Lcom/htc/app/FilePickerListAdapter;->access$700(Lcom/htc/app/FilePickerListAdapter;)[Lcom/htc/app/ItemInfo;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 533
    .local v6, resultList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    iget-object v11, p0, Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->mLock:Ljava/lang/Object;
    invoke-static {v11}, Lcom/htc/app/FilePickerListAdapter;->access$800(Lcom/htc/app/FilePickerListAdapter;)Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    .line 534
    :try_start_0
    iget-object v11, p0, Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #setter for: Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;
    invoke-static {v11, v6}, Lcom/htc/app/FilePickerListAdapter;->access$602(Lcom/htc/app/FilePickerListAdapter;Ljava/util/List;)Ljava/util/List;

    .line 535
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    .end local v6           #resultList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-eqz v11, :cond_2

    const-string v11, "GarbageMessage_LongVacation"

    if-ne p1, v11, :cond_6

    .line 539
    :cond_2
    iget-object v11, p0, Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->DEBUG:Z
    invoke-static {v11}, Lcom/htc/app/FilePickerListAdapter;->access$400(Lcom/htc/app/FilePickerListAdapter;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 540
    iget-object v11, p0, Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->TAG:Ljava/lang/String;
    invoke-static {v11}, Lcom/htc/app/FilePickerListAdapter;->access$500(Lcom/htc/app/FilePickerListAdapter;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "FilePickerFilter: if --> "

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_3
    iget-object v11, p0, Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->mLock:Ljava/lang/Object;
    invoke-static {v11}, Lcom/htc/app/FilePickerListAdapter;->access$800(Lcom/htc/app/FilePickerListAdapter;)Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    .line 542
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;
    invoke-static {v11}, Lcom/htc/app/FilePickerListAdapter;->access$600(Lcom/htc/app/FilePickerListAdapter;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v3, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 543
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/app/ItemInfo;>;"
    iget-object v11, p0, Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;->this$0:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v11, v3}, Lcom/htc/app/FilePickerListAdapter;->sort(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    iput-object v11, v7, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 544
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    iput v11, v7, Landroid/widget/Filter$FilterResults;->count:I

    .line 545
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 579
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/app/ItemInfo;>;"
    :cond_4
    :goto_0
    iget-object v11, p0, Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->DEBUG:Z
    invoke-static {v11}, Lcom/htc/app/FilePickerListAdapter;->access$400(Lcom/htc/app/FilePickerListAdapter;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 580
    iget-object v11, p0, Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->TAG:Ljava/lang/String;
    invoke-static {v11}, Lcom/htc/app/FilePickerListAdapter;->access$500(Lcom/htc/app/FilePickerListAdapter;)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "FilePickerFilter: return --> "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :cond_5
    return-object v7

    .line 535
    .restart local v6       #resultList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    :catchall_0
    move-exception v11

    :try_start_2
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v11

    .line 545
    .end local v6           #resultList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    :catchall_1
    move-exception v11

    :try_start_3
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v11

    .line 548
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 549
    .local v5, prefixString:Ljava/lang/String;
    iget-object v11, p0, Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->DEBUG:Z
    invoke-static {v11}, Lcom/htc/app/FilePickerListAdapter;->access$400(Lcom/htc/app/FilePickerListAdapter;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 550
    iget-object v11, p0, Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->TAG:Ljava/lang/String;
    invoke-static {v11}, Lcom/htc/app/FilePickerListAdapter;->access$500(Lcom/htc/app/FilePickerListAdapter;)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "FilePickerFilter: else --> "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :cond_7
    new-instance v10, Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;
    invoke-static {v11}, Lcom/htc/app/FilePickerListAdapter;->access$600(Lcom/htc/app/FilePickerListAdapter;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 552
    .local v10, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/app/ItemInfo;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 553
    .local v0, count:I
    iget-object v11, p0, Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->DEBUG:Z
    invoke-static {v11}, Lcom/htc/app/FilePickerListAdapter;->access$400(Lcom/htc/app/FilePickerListAdapter;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 554
    iget-object v11, p0, Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->TAG:Ljava/lang/String;
    invoke-static {v11}, Lcom/htc/app/FilePickerListAdapter;->access$500(Lcom/htc/app/FilePickerListAdapter;)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "FilePickerFilter: count = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :cond_8
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 557
    .local v4, newValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/app/ItemInfo;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_b

    .line 558
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/app/ItemInfo;

    .line 559
    .local v8, value:Lcom/htc/app/ItemInfo;
    invoke-virtual {v8}, Lcom/htc/app/ItemInfo;->isFolder()Z

    move-result v2

    .line 561
    .local v2, isFolder:Z
    if-eqz v2, :cond_a

    .line 562
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 557
    :cond_9
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 564
    :cond_a
    invoke-virtual {v8}, Lcom/htc/app/ItemInfo;->getFileName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 565
    .local v9, valueText:Ljava/lang/String;
    invoke-virtual {v9, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 566
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 567
    iget-object v11, p0, Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->DEBUG:Z
    invoke-static {v11}, Lcom/htc/app/FilePickerListAdapter;->access$400(Lcom/htc/app/FilePickerListAdapter;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 568
    iget-object v11, p0, Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->TAG:Ljava/lang/String;
    invoke-static {v11}, Lcom/htc/app/FilePickerListAdapter;->access$500(Lcom/htc/app/FilePickerListAdapter;)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "FilePickerFilter: valueText="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 573
    .end local v2           #isFolder:Z
    .end local v8           #value:Lcom/htc/app/ItemInfo;
    .end local v9           #valueText:Ljava/lang/String;
    :cond_b
    iget-object v11, p0, Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;->this$0:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v11, v4}, Lcom/htc/app/FilePickerListAdapter;->sort(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    iput-object v11, v7, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 574
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    iput v11, v7, Landroid/widget/Filter$FilterResults;->count:I

    .line 575
    iget-object v11, p0, Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->DEBUG:Z
    invoke-static {v11}, Lcom/htc/app/FilePickerListAdapter;->access$400(Lcom/htc/app/FilePickerListAdapter;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 576
    iget-object v11, p0, Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->TAG:Ljava/lang/String;
    invoke-static {v11}, Lcom/htc/app/FilePickerListAdapter;->access$500(Lcom/htc/app/FilePickerListAdapter;)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "FilePickerFilter: results.count --> "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v7, Landroid/widget/Filter$FilterResults;->count:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 3
    .parameter "constraint"
    .parameter "results"

    .prologue
    .line 592
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->DEBUG:Z
    invoke-static {v0}, Lcom/htc/app/FilePickerListAdapter;->access$400(Lcom/htc/app/FilePickerListAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/app/FilePickerListAdapter;->access$500(Lcom/htc/app/FilePickerListAdapter;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FilePickerFilter: publishResults("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_0
    const-string v0, "GarbageMessage_LongVacation"

    if-eq p1, v0, :cond_1

    .line 597
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;->this$0:Lcom/htc/app/FilePickerListAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    #setter for: Lcom/htc/app/FilePickerListAdapter;->mSearchResultList:Ljava/util/List;
    invoke-static {v1, v0}, Lcom/htc/app/FilePickerListAdapter;->access$902(Lcom/htc/app/FilePickerListAdapter;Ljava/util/List;)Ljava/util/List;

    .line 598
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;->this$0:Lcom/htc/app/FilePickerListAdapter;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerListAdapter;->NotifyListChanged(I)V

    .line 600
    :cond_1
    return-void
.end method
