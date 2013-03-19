.class Lcom/htc/album/AlbumMain/FragmentLandingPage$2$1;
.super Ljava/lang/Object;
.source "FragmentLandingPage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/AlbumMain/FragmentLandingPage$2;->onItemLongClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/AlbumMain/FragmentLandingPage$2;

.field final synthetic val$removeId:I


# direct methods
.method constructor <init>(Lcom/htc/album/AlbumMain/FragmentLandingPage$2;I)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage$2$1;->this$1:Lcom/htc/album/AlbumMain/FragmentLandingPage$2;

    iput p2, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage$2$1;->val$removeId:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/4 v6, 0x0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v2, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage$2$1;->this$1:Lcom/htc/album/AlbumMain/FragmentLandingPage$2;

    iget-object v2, v2, Lcom/htc/album/AlbumMain/FragmentLandingPage$2;->this$0:Lcom/htc/album/AlbumMain/FragmentLandingPage;

    #getter for: Lcom/htc/album/AlbumMain/FragmentLandingPage;->mShowPlugin:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/album/AlbumMain/FragmentLandingPage;->access$300(Lcom/htc/album/AlbumMain/FragmentLandingPage;)Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage$2$1;->val$removeId:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;

    iget-object v2, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage$2$1;->this$1:Lcom/htc/album/AlbumMain/FragmentLandingPage$2;

    iget-object v2, v2, Lcom/htc/album/AlbumMain/FragmentLandingPage$2;->this$0:Lcom/htc/album/AlbumMain/FragmentLandingPage;

    #getter for: Lcom/htc/album/AlbumMain/FragmentLandingPage;->mHidePlugin:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/album/AlbumMain/FragmentLandingPage;->access$400(Lcom/htc/album/AlbumMain/FragmentLandingPage;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage$2$1;->this$1:Lcom/htc/album/AlbumMain/FragmentLandingPage$2;

    iget-object v2, v2, Lcom/htc/album/AlbumMain/FragmentLandingPage$2;->this$0:Lcom/htc/album/AlbumMain/FragmentLandingPage;

    iget-object v3, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage$2$1;->this$1:Lcom/htc/album/AlbumMain/FragmentLandingPage$2;

    iget-object v3, v3, Lcom/htc/album/AlbumMain/FragmentLandingPage$2;->this$0:Lcom/htc/album/AlbumMain/FragmentLandingPage;

    #getter for: Lcom/htc/album/AlbumMain/FragmentLandingPage;->mShowPlugin:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/album/AlbumMain/FragmentLandingPage;->access$300(Lcom/htc/album/AlbumMain/FragmentLandingPage;)Ljava/util/ArrayList;

    move-result-object v3

    #calls: Lcom/htc/album/AlbumMain/FragmentLandingPage;->notifyAdapter(Ljava/util/ArrayList;)V
    invoke-static {v2, v3}, Lcom/htc/album/AlbumMain/FragmentLandingPage;->access$500(Lcom/htc/album/AlbumMain/FragmentLandingPage;Ljava/util/ArrayList;)V

    iget-object v2, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage$2$1;->this$1:Lcom/htc/album/AlbumMain/FragmentLandingPage$2;

    iget-object v2, v2, Lcom/htc/album/AlbumMain/FragmentLandingPage$2;->this$0:Lcom/htc/album/AlbumMain/FragmentLandingPage;

    #getter for: Lcom/htc/album/AlbumMain/FragmentLandingPage;->mThread:Lcom/htc/album/AlbumMain/LandingPageCacheThread;
    invoke-static {v2}, Lcom/htc/album/AlbumMain/FragmentLandingPage;->access$600(Lcom/htc/album/AlbumMain/FragmentLandingPage;)Lcom/htc/album/AlbumMain/LandingPageCacheThread;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage$2$1;->this$1:Lcom/htc/album/AlbumMain/FragmentLandingPage$2;

    iget-object v3, v3, Lcom/htc/album/AlbumMain/FragmentLandingPage$2;->this$0:Lcom/htc/album/AlbumMain/FragmentLandingPage;

    #getter for: Lcom/htc/album/AlbumMain/FragmentLandingPage;->mShowPlugin:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/album/AlbumMain/FragmentLandingPage;->access$300(Lcom/htc/album/AlbumMain/FragmentLandingPage;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/album/AlbumMain/LandingPageCacheThread;->writeToTabPluginFileCache(Ljava/util/ArrayList;)V

    iget-object v2, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage$2$1;->this$1:Lcom/htc/album/AlbumMain/FragmentLandingPage$2;

    iget-object v2, v2, Lcom/htc/album/AlbumMain/FragmentLandingPage$2;->this$0:Lcom/htc/album/AlbumMain/FragmentLandingPage;

    #getter for: Lcom/htc/album/AlbumMain/FragmentLandingPage;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/album/AlbumMain/FragmentLandingPage;->access$100(Lcom/htc/album/AlbumMain/FragmentLandingPage;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage$2$1;->this$1:Lcom/htc/album/AlbumMain/FragmentLandingPage$2;

    iget-object v3, v3, Lcom/htc/album/AlbumMain/FragmentLandingPage$2;->this$0:Lcom/htc/album/AlbumMain/FragmentLandingPage;

    const v4, 0x7f0a01a1

    invoke-virtual {v3, v4}, Lcom/htc/album/AlbumMain/FragmentLandingPage;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->getTabName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void
.end method
