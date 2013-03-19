.class Lcom/htc/music/LandingPageActivity$3;
.super Ljava/lang/Object;
.source "LandingPageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/LandingPageActivity;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 848
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity$3;->this$0:Lcom/htc/music/LandingPageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 850
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 852
    iget-object v8, p0, Lcom/htc/music/LandingPageActivity$3;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mLongClickedItemType:I
    invoke-static {v8}, Lcom/htc/music/LandingPageActivity;->access$900(Lcom/htc/music/LandingPageActivity;)I

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/htc/music/LandingPageActivity$3;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mLongClickedItemType:I
    invoke-static {v8}, Lcom/htc/music/LandingPageActivity;->access$900(Lcom/htc/music/LandingPageActivity;)I

    move-result v8

    const/4 v11, 0x4

    if-eq v8, v11, :cond_0

    iget-object v8, p0, Lcom/htc/music/LandingPageActivity$3;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mLongClickedItemType:I
    invoke-static {v8}, Lcom/htc/music/LandingPageActivity;->access$900(Lcom/htc/music/LandingPageActivity;)I

    move-result v8

    const/4 v11, 0x5

    if-ne v8, v11, :cond_1

    .line 901
    :cond_0
    :goto_0
    return-void

    .line 857
    :cond_1
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    iget-object v8, p0, Lcom/htc/music/LandingPageActivity$3;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/htc/music/LandingPageActivity;->access$2600(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_0

    .line 859
    iget-object v8, p0, Lcom/htc/music/LandingPageActivity$3;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/htc/music/LandingPageActivity;->access$2600(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/LandingPageActivity$LaunchItem;

    .line 860
    .local v3, curLaunchItem:Lcom/htc/music/LandingPageActivity$LaunchItem;
    const/4 v4, 0x0

    .line 861
    .local v4, curPkgName:Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 862
    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getPackageName()Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2700(Lcom/htc/music/LandingPageActivity$LaunchItem;)Ljava/lang/String;

    move-result-object v4

    .line 864
    :cond_2
    if-eqz v3, :cond_5

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->isCustApp()Z
    invoke-static {v3}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2800(Lcom/htc/music/LandingPageActivity$LaunchItem;)Z

    move-result v8

    if-eqz v8, :cond_5

    if-eqz v4, :cond_5

    iget-object v8, p0, Lcom/htc/music/LandingPageActivity$3;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mLongClickedPackageName:Ljava/lang/String;
    invoke-static {v8}, Lcom/htc/music/LandingPageActivity;->access$1200(Lcom/htc/music/LandingPageActivity;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v0, v9

    .line 866
    .local v0, canCustAppRemoved:Z
    :goto_2
    iget-object v8, p0, Lcom/htc/music/LandingPageActivity$3;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mLongClickedLaunchIntent:Landroid/content/Intent;
    invoke-static {v8}, Lcom/htc/music/LandingPageActivity;->access$1000(Lcom/htc/music/LandingPageActivity;)Landroid/content/Intent;

    move-result-object v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/htc/music/LandingPageActivity$3;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mLongClickedLaunchIntent:Landroid/content/Intent;
    invoke-static {v8}, Lcom/htc/music/LandingPageActivity;->access$1000(Lcom/htc/music/LandingPageActivity;)Landroid/content/Intent;

    move-result-object v11

    iget-object v8, p0, Lcom/htc/music/LandingPageActivity$3;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/htc/music/LandingPageActivity;->access$2600(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getLaunchIntent()Landroid/content/Intent;
    invoke-static {v8}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2900(Lcom/htc/music/LandingPageActivity$LaunchItem;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    move v1, v9

    .line 868
    .local v1, canNormalAppRemoved:Z
    :goto_3
    if-nez v0, :cond_3

    if-eqz v1, :cond_7

    :cond_3
    move v2, v9

    .line 869
    .local v2, canRemove:Z
    :goto_4
    if-eqz v2, :cond_a

    .line 873
    iget-object v8, p0, Lcom/htc/music/LandingPageActivity$3;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/htc/music/LandingPageActivity;->access$2600(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getItemType()I
    invoke-static {v8}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$3000(Lcom/htc/music/LandingPageActivity$LaunchItem;)I

    move-result v8

    if-ne v8, v9, :cond_8

    .line 874
    iget-object v8, p0, Lcom/htc/music/LandingPageActivity$3;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mRemoveList:Ljava/lang/StringBuilder;
    invoke-static {v8}, Lcom/htc/music/LandingPageActivity;->access$3100(Lcom/htc/music/LandingPageActivity;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v8, p0, Lcom/htc/music/LandingPageActivity$3;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/htc/music/LandingPageActivity;->access$2600(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getPackageName()Ljava/lang/String;
    invoke-static {v8}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2700(Lcom/htc/music/LandingPageActivity$LaunchItem;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 875
    iget-object v8, p0, Lcom/htc/music/LandingPageActivity$3;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mRemoveList:Ljava/lang/StringBuilder;
    invoke-static {v8}, Lcom/htc/music/LandingPageActivity;->access$3100(Lcom/htc/music/LandingPageActivity;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, ";"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 876
    iget-object v8, p0, Lcom/htc/music/LandingPageActivity$3;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mPreloadList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/htc/music/LandingPageActivity;->access$3200(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v8

    iget-object v11, p0, Lcom/htc/music/LandingPageActivity$3;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/htc/music/LandingPageActivity;->access$2600(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 892
    :cond_4
    :goto_5
    iget-object v8, p0, Lcom/htc/music/LandingPageActivity$3;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/htc/music/LandingPageActivity;->access$2600(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v8

    iget-object v11, p0, Lcom/htc/music/LandingPageActivity$3;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/htc/music/LandingPageActivity;->access$2600(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 893
    iget-object v8, p0, Lcom/htc/music/LandingPageActivity$3;->this$0:Lcom/htc/music/LandingPageActivity;

    #calls: Lcom/htc/music/LandingPageActivity;->updateLaunchItemsUI()V
    invoke-static {v8}, Lcom/htc/music/LandingPageActivity;->access$2100(Lcom/htc/music/LandingPageActivity;)V

    .line 895
    iget-object v8, p0, Lcom/htc/music/LandingPageActivity$3;->this$0:Lcom/htc/music/LandingPageActivity;

    invoke-virtual {v8}, Lcom/htc/music/LandingPageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    iget-object v11, p0, Lcom/htc/music/LandingPageActivity$3;->this$0:Lcom/htc/music/LandingPageActivity;

    const v12, 0x7f0701d4

    invoke-virtual {v11, v12}, Lcom/htc/music/LandingPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v12, p0, Lcom/htc/music/LandingPageActivity$3;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mLongClickedName:Ljava/lang/String;
    invoke-static {v12}, Lcom/htc/music/LandingPageActivity;->access$1100(Lcom/htc/music/LandingPageActivity;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v9, v10

    invoke-static {v11, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    .line 896
    .local v7, toast:Landroid/widget/Toast;
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .end local v0           #canCustAppRemoved:Z
    .end local v1           #canNormalAppRemoved:Z
    .end local v2           #canRemove:Z
    .end local v7           #toast:Landroid/widget/Toast;
    :cond_5
    move v0, v10

    .line 864
    goto/16 :goto_2

    .restart local v0       #canCustAppRemoved:Z
    :cond_6
    move v1, v10

    .line 866
    goto/16 :goto_3

    .restart local v1       #canNormalAppRemoved:Z
    :cond_7
    move v2, v10

    .line 868
    goto/16 :goto_4

    .line 877
    .restart local v2       #canRemove:Z
    :cond_8
    iget-object v8, p0, Lcom/htc/music/LandingPageActivity$3;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/htc/music/LandingPageActivity;->access$2600(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getItemType()I
    invoke-static {v8}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$3000(Lcom/htc/music/LandingPageActivity$LaunchItem;)I

    move-result v8

    const/4 v11, 0x2

    if-ne v8, v11, :cond_9

    .line 878
    iget-object v8, p0, Lcom/htc/music/LandingPageActivity$3;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mRemoveList:Ljava/lang/StringBuilder;
    invoke-static {v8}, Lcom/htc/music/LandingPageActivity;->access$3100(Lcom/htc/music/LandingPageActivity;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v8, p0, Lcom/htc/music/LandingPageActivity$3;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/htc/music/LandingPageActivity;->access$2600(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getPackageName()Ljava/lang/String;
    invoke-static {v8}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2700(Lcom/htc/music/LandingPageActivity$LaunchItem;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    iget-object v8, p0, Lcom/htc/music/LandingPageActivity$3;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mRemoveList:Ljava/lang/StringBuilder;
    invoke-static {v8}, Lcom/htc/music/LandingPageActivity;->access$3100(Lcom/htc/music/LandingPageActivity;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, ";"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 880
    iget-object v8, p0, Lcom/htc/music/LandingPageActivity$3;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mAutoDetectList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/htc/music/LandingPageActivity;->access$3300(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v8

    iget-object v11, p0, Lcom/htc/music/LandingPageActivity$3;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/htc/music/LandingPageActivity;->access$2600(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 882
    :cond_9
    iget-object v8, p0, Lcom/htc/music/LandingPageActivity$3;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/htc/music/LandingPageActivity;->access$2600(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getItemType()I
    invoke-static {v8}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$3000(Lcom/htc/music/LandingPageActivity$LaunchItem;)I

    move-result v8

    const/4 v11, 0x6

    if-ne v8, v11, :cond_4

    .line 883
    iget-object v8, p0, Lcom/htc/music/LandingPageActivity$3;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/htc/music/LandingPageActivity;->access$2600(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getPackageName()Ljava/lang/String;
    invoke-static {v8}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2700(Lcom/htc/music/LandingPageActivity$LaunchItem;)Ljava/lang/String;

    move-result-object v6

    .line 884
    .local v6, pkgName:Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 885
    iget-object v8, p0, Lcom/htc/music/LandingPageActivity$3;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mRemoveList:Ljava/lang/StringBuilder;
    invoke-static {v8}, Lcom/htc/music/LandingPageActivity;->access$3100(Lcom/htc/music/LandingPageActivity;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 886
    iget-object v8, p0, Lcom/htc/music/LandingPageActivity$3;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mRemoveList:Ljava/lang/StringBuilder;
    invoke-static {v8}, Lcom/htc/music/LandingPageActivity;->access$3100(Lcom/htc/music/LandingPageActivity;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, ";"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    iget-object v8, p0, Lcom/htc/music/LandingPageActivity$3;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mCustItemList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/htc/music/LandingPageActivity;->access$3400(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v8

    iget-object v11, p0, Lcom/htc/music/LandingPageActivity$3;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/htc/music/LandingPageActivity;->access$2600(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 857
    .end local v6           #pkgName:Ljava/lang/String;
    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1
.end method
