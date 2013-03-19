.class public Lcom/htc/album/addons/AdapterTagPhotos;
.super Landroid/widget/BaseAdapter;
.source "AdapterTagPhotos.java"

# interfaces
.implements Lcom/htc/opensense2/album/SocialNetworkManager/NotifyBaseUI;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AdaterTagPhotos"


# instance fields
.field private mHandlerUI:Landroid/os/Handler;

.field private mIntent:Landroid/content/Intent;

.field private mTagPhotoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TagUtils/TagPhotoInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/addons/AdapterTagPhotos;->mTagPhotoList:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/htc/album/addons/AdapterTagPhotos;->mIntent:Landroid/content/Intent;

    iput-object v1, p0, Lcom/htc/album/addons/AdapterTagPhotos;->mHandlerUI:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public bindAdapter()V
    .locals 3

    iget-object v2, p0, Lcom/htc/album/addons/AdapterTagPhotos;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/album/addons/AdapterTagPhotos;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "photoList"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/addons/AdapterTagPhotos;->mTagPhotoList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/album/addons/AdapterTagPhotos;->mTagPhotoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/album/addons/AdapterTagPhotos;->getCount()I

    move-result v1

    if-le v1, p1, :cond_0

    iget-object v1, p0, Lcom/htc/album/addons/AdapterTagPhotos;->mTagPhotoList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getUIHandler()Landroid/os/Handler;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onUIUpdateNotify(ILjava/lang/Object;I)V
    .locals 4

    iget-object v0, p0, Lcom/htc/album/addons/AdapterTagPhotos;->mHandlerUI:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/addons/AdapterTagPhotos;->mHandlerUI:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/album/addons/AdapterTagPhotos;->mHandlerUI:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public setForwardIntent(Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/addons/AdapterTagPhotos;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method public setUIHandler(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/addons/AdapterTagPhotos;->mHandlerUI:Landroid/os/Handler;

    return-void
.end method

.method public unbindAdapter()V
    .locals 0

    return-void
.end method
