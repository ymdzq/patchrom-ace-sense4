.class Lcom/htc/album/AlbumMain/FragmentLandingPage$1;
.super Ljava/lang/Object;
.source "FragmentLandingPage.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/AlbumMain/FragmentLandingPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/AlbumMain/FragmentLandingPage;


# direct methods
.method constructor <init>(Lcom/htc/album/AlbumMain/FragmentLandingPage;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage$1;->this$0:Lcom/htc/album/AlbumMain/FragmentLandingPage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v4, 0x0

    :try_start_0
    iget-object v7, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage$1;->this$0:Lcom/htc/album/AlbumMain/FragmentLandingPage;

    #getter for: Lcom/htc/album/AlbumMain/FragmentLandingPage;->mAdapter:Lcom/htc/album/AlbumMain/AdapterLandingPage;
    invoke-static {v7}, Lcom/htc/album/AlbumMain/FragmentLandingPage;->access$000(Lcom/htc/album/AlbumMain/FragmentLandingPage;)Lcom/htc/album/AlbumMain/AdapterLandingPage;

    move-result-object v7

    invoke-virtual {v7, p3}, Lcom/htc/album/AlbumMain/AdapterLandingPage;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->getTabPlugin()Lcom/htc/opensense/plugin/TabPlugin;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_0
    if-nez v4, :cond_0

    :goto_1
    return-void

    :catch_0
    move-exception v2

    const-string v7, "FragmentLandingPage"

    const-string v8, "[HTCAlbum][FragmentLandingPage][onItemClick]: no plugin..."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Lcom/htc/opensense/plugin/TabPlugin;->getActivityIntent()Landroid/content/Intent;

    move-result-object v3

    iget-object v7, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage$1;->this$0:Lcom/htc/album/AlbumMain/FragmentLandingPage;

    #getter for: Lcom/htc/album/AlbumMain/FragmentLandingPage;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/htc/album/AlbumMain/FragmentLandingPage;->access$100(Lcom/htc/album/AlbumMain/FragmentLandingPage;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a019c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->getTabName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage$1;->this$0:Lcom/htc/album/AlbumMain/FragmentLandingPage;

    #calls: Lcom/htc/album/AlbumMain/FragmentLandingPage;->launchPluginFragment(Lcom/htc/opensense/plugin/TabPlugin;Landroid/content/Intent;)V
    invoke-static {v7, v4, v1}, Lcom/htc/album/AlbumMain/FragmentLandingPage;->access$200(Lcom/htc/album/AlbumMain/FragmentLandingPage;Lcom/htc/opensense/plugin/TabPlugin;Landroid/content/Intent;)V

    goto :goto_1

    :cond_1
    iget-object v7, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage$1;->this$0:Lcom/htc/album/AlbumMain/FragmentLandingPage;

    #calls: Lcom/htc/album/AlbumMain/FragmentLandingPage;->launchPluginFragment(Lcom/htc/opensense/plugin/TabPlugin;Landroid/content/Intent;)V
    invoke-static {v7, v4, v3}, Lcom/htc/album/AlbumMain/FragmentLandingPage;->access$200(Lcom/htc/album/AlbumMain/FragmentLandingPage;Lcom/htc/opensense/plugin/TabPlugin;Landroid/content/Intent;)V

    goto :goto_1
.end method
