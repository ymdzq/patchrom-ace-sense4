.class public Lcom/htc/album/helper/DetailsViewHelper$GeocoderTask;
.super Landroid/os/AsyncTask;
.source "DetailsViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/DetailsViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "GeocoderTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLatitude:F

.field private mLongitude:F

.field private mViewContainer:Landroid/view/ViewGroup;

.field final synthetic this$0:Lcom/htc/album/helper/DetailsViewHelper;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/DetailsViewHelper;Landroid/content/Context;FFLandroid/view/ViewGroup;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/htc/album/helper/DetailsViewHelper$GeocoderTask;->this$0:Lcom/htc/album/helper/DetailsViewHelper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object v1, p0, Lcom/htc/album/helper/DetailsViewHelper$GeocoderTask;->mContext:Landroid/content/Context;

    iput v0, p0, Lcom/htc/album/helper/DetailsViewHelper$GeocoderTask;->mLatitude:F

    iput v0, p0, Lcom/htc/album/helper/DetailsViewHelper$GeocoderTask;->mLongitude:F

    iput-object v1, p0, Lcom/htc/album/helper/DetailsViewHelper$GeocoderTask;->mViewContainer:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/htc/album/helper/DetailsViewHelper$GeocoderTask;->mContext:Landroid/content/Context;

    iput p3, p0, Lcom/htc/album/helper/DetailsViewHelper$GeocoderTask;->mLatitude:F

    iput p4, p0, Lcom/htc/album/helper/DetailsViewHelper$GeocoderTask;->mLongitude:F

    iput-object p5, p0, Lcom/htc/album/helper/DetailsViewHelper$GeocoderTask;->mViewContainer:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/htc/album/helper/DetailsViewHelper$GeocoderTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 13

    const-string v1, "[DetailsViewHelper]"

    const-string v2, "[GeocoderTask][doInBackground][+]"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/album/helper/DetailsViewHelper$GeocoderTask;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/helper/DetailsViewHelper$GeocoderTask;->mViewContainer:Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "[DetailsViewHelper]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[GeocoderTask][doInBackground] null reference. mContext = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/helper/DetailsViewHelper$GeocoderTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mViewContainer = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/helper/DetailsViewHelper$GeocoderTask;->mViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    :goto_0
    return-object v11

    :cond_1
    new-instance v0, Landroid/location/Geocoder;

    iget-object v1, p0, Lcom/htc/album/helper/DetailsViewHelper$GeocoderTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    const/4 v11, 0x0

    :try_start_0
    iget v1, p0, Lcom/htc/album/helper/DetailsViewHelper$GeocoderTask;->mLatitude:F

    float-to-double v1, v1

    iget v3, p0, Lcom/htc/album/helper/DetailsViewHelper$GeocoderTask;->mLongitude:F

    float-to-double v3, v3

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v7

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/Address;

    invoke-virtual {v6}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v10

    invoke-virtual {v6, v10}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v8

    const/4 v11, 0x0

    const-string v1, "[DetailsViewHelper]"

    const-string v2, "[GeocoderTask][doInBackground]Geocoder exception: "

    invoke-static {v1, v2, v8}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    const-string v1, "[DetailsViewHelper]"

    const-string v2, "[GeocoderTask][doInBackground][-]"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v11

    goto :goto_2

    :catch_1
    move-exception v8

    const/4 v11, 0x0

    const-string v1, "[DetailsViewHelper]"

    const-string v2, "[GeocoderTask][doInBackground]Geocoder exception: "

    invoke-static {v1, v2, v8}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/htc/album/helper/DetailsViewHelper$GeocoderTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 8

    const-string v2, "[DetailsViewHelper]"

    const-string v3, "[GeocoderTask][onPostExecute][+]"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/htc/album/helper/DetailsViewHelper$GeocoderTask;->mViewContainer:Landroid/view/ViewGroup;

    if-nez v2, :cond_2

    :cond_0
    const-string v3, "[DetailsViewHelper]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[GeocoderTask][onPostExecute] result is null "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p1, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", mViewContainer = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/htc/album/helper/DetailsViewHelper$GeocoderTask;->mViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/htc/album/helper/DetailsViewHelper$GeocoderTask;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/htc/album/helper/DetailsViewHelper$GeocoderTask;->this$0:Lcom/htc/album/helper/DetailsViewHelper;

    iget-object v3, p0, Lcom/htc/album/helper/DetailsViewHelper$GeocoderTask;->mViewContainer:Landroid/view/ViewGroup;

    new-instance v4, Lcom/htc/album/helper/DetailsViewHelper$ImageInfo;

    iget-object v5, p0, Lcom/htc/album/helper/DetailsViewHelper$GeocoderTask;->this$0:Lcom/htc/album/helper/DetailsViewHelper;

    iget-object v6, p0, Lcom/htc/album/helper/DetailsViewHelper$GeocoderTask;->mContext:Landroid/content/Context;

    const v7, 0x7f0a009c

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, p1}, Lcom/htc/album/helper/DetailsViewHelper$ImageInfo;-><init>(Lcom/htc/album/helper/DetailsViewHelper;Ljava/lang/String;Ljava/lang/String;)V

    #calls: Lcom/htc/album/helper/DetailsViewHelper;->getTwoLineText_ListItem(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/htc/album/helper/DetailsViewHelper$ImageInfo;)Landroid/widget/LinearLayout;
    invoke-static {v2, v0, v3, v4}, Lcom/htc/album/helper/DetailsViewHelper;->access$000(Lcom/htc/album/helper/DetailsViewHelper;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/htc/album/helper/DetailsViewHelper$ImageInfo;)Landroid/widget/LinearLayout;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/htc/album/helper/DetailsViewHelper$GeocoderTask;->mViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_2
    const-string v2, "[DetailsViewHelper]"

    const-string v3, "[GeocoderTask][onPostExecute][-]"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v2, "[DetailsViewHelper]"

    const-string v3, "[GeocoderTask][onPostExecute] listItem is null"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected onPreExecute()V
    .locals 0

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
