.class Lcom/htc/music/online/FriendsCollectionDetailActivity$DetailListAdapter$1;
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
    .line 1360
    iput-object p1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$DetailListAdapter$1;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity$DetailListAdapter;

    iput-object p2, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$DetailListAdapter$1;->val$tempActivity:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 1363
    iget-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$DetailListAdapter$1;->val$tempActivity:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    #calls: Lcom/htc/music/online/FriendsCollectionDetailActivity;->showAlbumOptions()V
    invoke-static {v0}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$2900(Lcom/htc/music/online/FriendsCollectionDetailActivity;)V

    .line 1364
    return-void
.end method
