.class Lcom/htc/sunny2/slideshow/FaceDetectionThread$taskFace;
.super Ljava/lang/Object;
.source "FaceDetectionThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/slideshow/FaceDetectionThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "taskFace"
.end annotation


# instance fields
.field private bmpPhoto:Landroid/graphics/Bitmap;

.field private nIndex:I

.field final synthetic this$0:Lcom/htc/sunny2/slideshow/FaceDetectionThread;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/slideshow/FaceDetectionThread;ILandroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/slideshow/FaceDetectionThread$taskFace;->this$0:Lcom/htc/sunny2/slideshow/FaceDetectionThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/htc/sunny2/slideshow/FaceDetectionThread$taskFace;->nIndex:I

    iput-object p3, p0, Lcom/htc/sunny2/slideshow/FaceDetectionThread$taskFace;->bmpPhoto:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/sunny2/slideshow/FaceDetectionThread$taskFace;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/FaceDetectionThread$taskFace;->bmpPhoto:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/sunny2/slideshow/FaceDetectionThread$taskFace;)I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/slideshow/FaceDetectionThread$taskFace;->nIndex:I

    return v0
.end method
