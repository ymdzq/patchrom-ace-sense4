.class Lcom/htc/music/online/FriendsCollectionDetailActivity$7;
.super Ljava/lang/Object;
.source "FriendsCollectionDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/online/FriendsCollectionDetailActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/online/FriendsCollectionDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 601
    iput-object p1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$7;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 603
    iget-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$7;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    #getter for: Lcom/htc/music/online/FriendsCollectionDetailActivity;->mUIHandler:Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;
    invoke-static {v0}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$000(Lcom/htc/music/online/FriendsCollectionDetailActivity;)Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$7;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    #getter for: Lcom/htc/music/online/FriendsCollectionDetailActivity;->mSelectedData:Landroid/os/Bundle;
    invoke-static {v1}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$1100(Lcom/htc/music/online/FriendsCollectionDetailActivity;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "audioid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;->deleteTrack(I)V

    .line 604
    return-void
.end method
