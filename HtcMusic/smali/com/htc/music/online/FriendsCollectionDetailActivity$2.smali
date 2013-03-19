.class Lcom/htc/music/online/FriendsCollectionDetailActivity$2;
.super Ljava/lang/Object;
.source "FriendsCollectionDetailActivity.java"

# interfaces
.implements Lcom/htc/music/util/AsyncImageDecoder$IOnlineImageDecodeListener;


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
    .line 203
    iput-object p1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$2;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs onOnlineImageDecoded(ILandroid/graphics/Bitmap;J[Ljava/lang/Object;)V
    .locals 1
    .parameter "position"
    .parameter "bitmap"
    .parameter "timeStamp"
    .parameter "varargs"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$2;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    #getter for: Lcom/htc/music/online/FriendsCollectionDetailActivity;->mUIHandler:Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;
    invoke-static {v0}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$000(Lcom/htc/music/online/FriendsCollectionDetailActivity;)Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;->updateAlbumArt(Landroid/graphics/Bitmap;)V

    .line 210
    return-void
.end method
