.class Lcom/htc/music/online/FriendsCollectionDetailActivity$DetailListAdapter$2;
.super Ljava/lang/Object;
.source "FriendsCollectionDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/online/FriendsCollectionDetailActivity$DetailListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity$DetailListAdapter;

.field final synthetic val$tempActivity:Lcom/htc/music/online/FriendsCollectionDetailActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/online/FriendsCollectionDetailActivity$DetailListAdapter;Lcom/htc/music/online/FriendsCollectionDetailActivity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1532
    iput-object p1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$DetailListAdapter$2;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity$DetailListAdapter;

    iput-object p2, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$DetailListAdapter$2;->val$tempActivity:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "clickedView"

    .prologue
    .line 1535
    iget-object v1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$DetailListAdapter$2;->val$tempActivity:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    #setter for: Lcom/htc/music/online/FriendsCollectionDetailActivity;->mSelectedData:Landroid/os/Bundle;
    invoke-static {v1, v0}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$1102(Lcom/htc/music/online/FriendsCollectionDetailActivity;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 1536
    iget-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$DetailListAdapter$2;->val$tempActivity:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    #calls: Lcom/htc/music/online/FriendsCollectionDetailActivity;->showTrackOptions()V
    invoke-static {v0}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$3000(Lcom/htc/music/online/FriendsCollectionDetailActivity;)V

    .line 1537
    return-void
.end method
