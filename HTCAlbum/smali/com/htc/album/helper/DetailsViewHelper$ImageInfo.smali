.class Lcom/htc/album/helper/DetailsViewHelper$ImageInfo;
.super Ljava/lang/Object;
.source "DetailsViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/DetailsViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageInfo"
.end annotation


# instance fields
.field public mContent:Ljava/lang/String;

.field public mTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/album/helper/DetailsViewHelper;


# direct methods
.method public constructor <init>(Lcom/htc/album/helper/DetailsViewHelper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/helper/DetailsViewHelper$ImageInfo;->this$0:Lcom/htc/album/helper/DetailsViewHelper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/htc/album/helper/DetailsViewHelper$ImageInfo;->mTitle:Ljava/lang/String;

    iput-object p3, p0, Lcom/htc/album/helper/DetailsViewHelper$ImageInfo;->mContent:Ljava/lang/String;

    return-void
.end method