.class Lcom/htc/album/AlbumMain/FragmentLandingPage$2;
.super Ljava/lang/Object;
.source "FragmentLandingPage.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;


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

    iput-object p1, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage$2;->this$0:Lcom/htc/album/AlbumMain/FragmentLandingPage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-array v1, v5, [Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage$2;->this$0:Lcom/htc/album/AlbumMain/FragmentLandingPage;

    const v7, 0x7f0a01a0

    invoke-virtual {v6, v7}, Lcom/htc/album/AlbumMain/FragmentLandingPage;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v4

    move v2, p3

    iget-object v6, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage$2;->this$0:Lcom/htc/album/AlbumMain/FragmentLandingPage;

    #getter for: Lcom/htc/album/AlbumMain/FragmentLandingPage;->mAdapter:Lcom/htc/album/AlbumMain/AdapterLandingPage;
    invoke-static {v6}, Lcom/htc/album/AlbumMain/FragmentLandingPage;->access$000(Lcom/htc/album/AlbumMain/FragmentLandingPage;)Lcom/htc/album/AlbumMain/AdapterLandingPage;

    move-result-object v6

    invoke-virtual {v6, p3}, Lcom/htc/album/AlbumMain/AdapterLandingPage;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;

    const-string v6, "com.htc.album-com.htc.album.TabPluginDevice.TabPluginDevice"

    invoke-virtual {v3}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->getTabTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    :goto_0
    return v4

    :cond_0
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v6, p0, Lcom/htc/album/AlbumMain/FragmentLandingPage$2;->this$0:Lcom/htc/album/AlbumMain/FragmentLandingPage;

    #getter for: Lcom/htc/album/AlbumMain/FragmentLandingPage;->mActivity:Lcom/htc/album/AlbumMain/MfMainActivityBase;
    invoke-static {v6}, Lcom/htc/album/AlbumMain/FragmentLandingPage;->access$700(Lcom/htc/album/AlbumMain/FragmentLandingPage;)Lcom/htc/album/AlbumMain/MfMainActivityBase;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->getTabName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    new-instance v6, Lcom/htc/album/AlbumMain/FragmentLandingPage$2$1;

    invoke-direct {v6, p0, v2}, Lcom/htc/album/AlbumMain/FragmentLandingPage$2$1;-><init>(Lcom/htc/album/AlbumMain/FragmentLandingPage$2;I)V

    invoke-virtual {v4, v1, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    :cond_1
    move v4, v5

    goto :goto_0
.end method
