.class Lcom/htc/album/TabPluginDevice/CropImage$2$1;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/TabPluginDevice/CropImage$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/TabPluginDevice/CropImage$2;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/CropImage$2;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/CropImage$2$1;->this$1:Lcom/htc/album/TabPluginDevice/CropImage$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage$2$1;->this$1:Lcom/htc/album/TabPluginDevice/CropImage$2;

    iget-object v5, v2, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage$2$1;->this$1:Lcom/htc/album/TabPluginDevice/CropImage$2;

    iget v2, v2, Lcom/htc/album/TabPluginDevice/CropImage$2;->mNumFaces:I

    if-le v2, v3, :cond_0

    move v2, v3

    :goto_0
    #setter for: Lcom/htc/album/TabPluginDevice/CropImage;->mWaitingToPick:Z
    invoke-static {v5, v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$102(Lcom/htc/album/TabPluginDevice/CropImage;Z)Z

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage$2$1;->this$1:Lcom/htc/album/TabPluginDevice/CropImage$2;

    iget v2, v2, Lcom/htc/album/TabPluginDevice/CropImage$2;->mNumFaces:I

    if-lez v2, :cond_1

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage$2$1;->this$1:Lcom/htc/album/TabPluginDevice/CropImage$2;

    iget v2, v2, Lcom/htc/album/TabPluginDevice/CropImage$2;->mNumFaces:I

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage$2$1;->this$1:Lcom/htc/album/TabPluginDevice/CropImage$2;

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/CropImage$2$1;->this$1:Lcom/htc/album/TabPluginDevice/CropImage$2;

    iget-object v5, v5, Lcom/htc/album/TabPluginDevice/CropImage$2;->mFaces:[Landroid/media/FaceDetector$Face;

    aget-object v5, v5, v0

    #calls: Lcom/htc/album/TabPluginDevice/CropImage$2;->handleFace(Landroid/media/FaceDetector$Face;)V
    invoke-static {v2, v5}, Lcom/htc/album/TabPluginDevice/CropImage$2;->access$2800(Lcom/htc/album/TabPluginDevice/CropImage$2;Landroid/media/FaceDetector$Face;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage$2$1;->this$1:Lcom/htc/album/TabPluginDevice/CropImage$2;

    #calls: Lcom/htc/album/TabPluginDevice/CropImage$2;->makeDefault()V
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage$2;->access$2900(Lcom/htc/album/TabPluginDevice/CropImage$2;)V

    :cond_2
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage$2$1;->this$1:Lcom/htc/album/TabPluginDevice/CropImage$2;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/CropImage;->mImageView:Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->invalidate()V

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage$2$1;->this$1:Lcom/htc/album/TabPluginDevice/CropImage$2;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/CropImage;->mImageView:Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage$2$1;->this$1:Lcom/htc/album/TabPluginDevice/CropImage$2;

    iget-object v5, v2, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage$2$1;->this$1:Lcom/htc/album/TabPluginDevice/CropImage$2;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/CropImage;->mImageView:Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/album/TabPluginDevice/HighlightView;

    iput-object v2, v5, Lcom/htc/album/TabPluginDevice/CropImage;->mCrop:Lcom/htc/album/TabPluginDevice/HighlightView;

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage$2$1;->this$1:Lcom/htc/album/TabPluginDevice/CropImage$2;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/CropImage;->mCrop:Lcom/htc/album/TabPluginDevice/HighlightView;

    invoke-virtual {v2, v3}, Lcom/htc/album/TabPluginDevice/HighlightView;->setFocus(Z)V

    :cond_3
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage$2$1;->this$1:Lcom/htc/album/TabPluginDevice/CropImage$2;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #calls: Lcom/htc/album/TabPluginDevice/CropImage;->closeProgressDialog()V
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$3000(Lcom/htc/album/TabPluginDevice/CropImage;)V

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage$2$1;->this$1:Lcom/htc/album/TabPluginDevice/CropImage$2;

    iget v2, v2, Lcom/htc/album/TabPluginDevice/CropImage$2;->mNumFaces:I

    if-le v2, v3, :cond_4

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage$2$1;->this$1:Lcom/htc/album/TabPluginDevice/CropImage$2;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    const v3, 0x7f0a000b

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_4
    return-void
.end method
