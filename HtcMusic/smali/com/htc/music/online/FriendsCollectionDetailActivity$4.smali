.class Lcom/htc/music/online/FriendsCollectionDetailActivity$4;
.super Ljava/lang/Object;
.source "FriendsCollectionDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/online/FriendsCollectionDetailActivity;
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
    .line 277
    iput-object p1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$4;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 281
    if-eqz p1, :cond_0

    .line 282
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 283
    iget-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$4;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    iget-object v1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$4;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    iget-object v1, v1, Lcom/htc/music/online/FriendsCollectionDetailActivity;->mCurrentAction:Lcom/htc/music/online/SinaActions;

    invoke-virtual {v0, v1}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->doAction(Lcom/htc/music/online/SinaActions;)V

    .line 285
    :cond_0
    return-void
.end method
