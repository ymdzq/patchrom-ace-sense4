.class public Lcom/htc/album/TabPluginWatch/PhotoFullListPlugin;
.super Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;
.source "PhotoFullListPlugin.java"


# instance fields
.field private mHighQualityId:I

.field private mLowQualityId:I

.field private mUris:[Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/opensense/album/plugin/IUIHandler;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;-><init>(Landroid/content/Context;Lcom/htc/opensense/album/plugin/IUIHandler;Ljava/lang/String;)V

    return-void
.end method

.method private requestPhotoUris(II)[Landroid/net/Uri;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/net/Uri;

    const/4 v1, 0x0

    const-string v2, "content://media/external/images/media/861"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "content://media/external/images/media/862"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method


# virtual methods
.method public getActiveUser(Landroid/accounts/Account;)Lcom/htc/opensense/album/plugin/PersonData;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhotos(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/album/plugin/MediumData;",
            ">;"
        }
    .end annotation

    iget-object v10, p0, Lcom/htc/album/TabPluginWatch/PhotoFullListPlugin;->mUris:[Landroid/net/Uri;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/htc/opensense/album/plugin/MediumData;

    const-string v1, "0"

    const-string v2, "Name 1"

    const/4 v3, 0x1

    aget-object v3, v10, v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v10, v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/htc/opensense/album/plugin/MediumData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v9
.end method

.method public getPhotos(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/album/plugin/MediumData;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginWatch/PhotoFullListPlugin;->getPhotos(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onCommandBarButtonSelected(Lcom/htc/opensense/album/plugin/CommandBarButton;ILjava/lang/String;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getId()I

    move-result v0

    const v1, 0x7a121

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/album/TabPluginWatch/PhotoFullListPlugin;->getUIHandler()Lcom/htc/opensense/album/plugin/IUIHandler;

    move-result-object v0

    const v1, 0x10200001

    invoke-interface {v0, v1, v2}, Lcom/htc/opensense/album/plugin/IUIHandler;->notifyUICommand(II)I

    :cond_0
    return v2
.end method

.method public onDeInit()V
    .locals 0

    return-void
.end method

.method public onFetchUrlBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onGetComment(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onGetCommentCount(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onGetIndicatorBitmap()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onInit()V
    .locals 4

    const/4 v3, -0x1

    invoke-virtual {p0}, Lcom/htc/album/TabPluginWatch/PhotoFullListPlugin;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "watch_low_quality_id"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/htc/album/TabPluginWatch/PhotoFullListPlugin;->mLowQualityId:I

    const-string v2, "watch_high_quality_id"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/htc/album/TabPluginWatch/PhotoFullListPlugin;->mHighQualityId:I

    iget v2, p0, Lcom/htc/album/TabPluginWatch/PhotoFullListPlugin;->mLowQualityId:I

    iget v3, p0, Lcom/htc/album/TabPluginWatch/PhotoFullListPlugin;->mHighQualityId:I

    invoke-direct {p0, v2, v3}, Lcom/htc/album/TabPluginWatch/PhotoFullListPlugin;->requestPhotoUris(II)[Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/TabPluginWatch/PhotoFullListPlugin;->mUris:[Landroid/net/Uri;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;ILjava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareCommandBarButton(Lcom/htc/opensense/album/plugin/CommandBar;I)Z
    .locals 3

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/htc/opensense/album/plugin/CommandBar;->getButton(I)Lcom/htc/opensense/album/plugin/CommandBarButton;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/album/TabPluginWatch/PhotoFullListPlugin;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0130

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/opensense/album/plugin/CommandBarButton;->setButtonText(Ljava/lang/String;)V

    const v1, 0x7a121

    invoke-virtual {v0, v1}, Lcom/htc/opensense/album/plugin/CommandBarButton;->setId(I)V

    const/4 v1, 0x1

    return v1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;ILjava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onShowHeaderBar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
