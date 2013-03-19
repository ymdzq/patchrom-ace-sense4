.class public Lcom/htc/sunny2/slideshow/FaceDetectionThread;
.super Lcom/htc/sunnyCore/IterationThread;
.source "FaceDetectionThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/slideshow/FaceDetectionThread$taskFace;,
        Lcom/htc/sunny2/slideshow/FaceDetectionThread$EventListener;
    }
.end annotation


# static fields
.field public static FACEDETECT_BITMAP_MAX_HEIGHT:I = 0x0

.field public static FACEDETECT_BITMAP_MAX_WIDTH:I = 0x0

.field private static final KABA:Ljava/lang/String; = "KA>>> "

.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final NUM_FACES:I = 0x20


# instance fields
.field private eventListener:Lcom/htc/sunny2/slideshow/FaceDetectionThread$EventListener;

.field private mBitmapReUse:Landroid/graphics/Bitmap;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mFaceDetector:Landroid/media/FaceDetector;

.field private mQueue:Lcom/htc/sunnyCore/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/sunnyCore/Queue",
            "<",
            "Lcom/htc/sunny2/slideshow/FaceDetectionThread$taskFace;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x400

    const-class v0, Lcom/htc/sunny2/slideshow/FaceDetectionThread;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/slideshow/FaceDetectionThread;->LOG_TAG:Ljava/lang/String;

    sput v1, Lcom/htc/sunny2/slideshow/FaceDetectionThread;->FACEDETECT_BITMAP_MAX_WIDTH:I

    sput v1, Lcom/htc/sunny2/slideshow/FaceDetectionThread;->FACEDETECT_BITMAP_MAX_HEIGHT:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/htc/sunny2/slideshow/FaceDetectionThread$EventListener;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/htc/sunnyCore/IterationThread;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/htc/sunnyCore/Queue;

    const-string v1, "FaceDetectionQueue"

    invoke-direct {v0, v1}, Lcom/htc/sunnyCore/Queue;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/sunny2/slideshow/FaceDetectionThread;->mQueue:Lcom/htc/sunnyCore/Queue;

    iput-object v2, p0, Lcom/htc/sunny2/slideshow/FaceDetectionThread;->mBitmapReUse:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/htc/sunny2/slideshow/FaceDetectionThread;->mCanvas:Landroid/graphics/Canvas;

    iput-object v2, p0, Lcom/htc/sunny2/slideshow/FaceDetectionThread;->mFaceDetector:Landroid/media/FaceDetector;

    iput-object v2, p0, Lcom/htc/sunny2/slideshow/FaceDetectionThread;->eventListener:Lcom/htc/sunny2/slideshow/FaceDetectionThread$EventListener;

    iput-object p2, p0, Lcom/htc/sunny2/slideshow/FaceDetectionThread;->eventListener:Lcom/htc/sunny2/slideshow/FaceDetectionThread$EventListener;

    return-void
.end method


# virtual methods
.method public addTask(ILandroid/graphics/Bitmap;)Z
    .locals 4

    if-nez p2, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    new-instance v0, Lcom/htc/sunny2/slideshow/FaceDetectionThread$taskFace;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/sunny2/slideshow/FaceDetectionThread$taskFace;-><init>(Lcom/htc/sunny2/slideshow/FaceDetectionThread;ILandroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/htc/sunny2/slideshow/FaceDetectionThread;->mQueue:Lcom/htc/sunnyCore/Queue;

    invoke-virtual {v1, v0}, Lcom/htc/sunnyCore/Queue;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/FaceDetectionThread;->resumeThread()V

    sget-object v1, Lcom/htc/sunny2/slideshow/FaceDetectionThread;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KA>>> [HTCAlbum][FaceDetectionThread][addTask]: Index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Photo W: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " x "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public findFace(Landroid/graphics/Bitmap;[Landroid/media/FaceDetector$Face;)I
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sget v2, Lcom/htc/sunny2/slideshow/FaceDetectionThread;->FACEDETECT_BITMAP_MAX_WIDTH:I

    if-gt v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget v2, Lcom/htc/sunny2/slideshow/FaceDetectionThread;->FACEDETECT_BITMAP_MAX_HEIGHT:I

    if-le v1, v2, :cond_2

    :cond_1
    sget-object v1, Lcom/htc/sunny2/slideshow/FaceDetectionThread;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][FaceDetectionThread][findFace]: source bitmap size over than re use bitmap !"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/htc/sunny2/slideshow/FaceDetectionThread;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/sunny2/slideshow/FaceDetectionThread;->mBitmapReUse:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/sunny2/slideshow/FaceDetectionThread;->mFaceDetector:Landroid/media/FaceDetector;

    if-nez v1, :cond_4

    :cond_3
    sget-object v1, Lcom/htc/sunny2/slideshow/FaceDetectionThread;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][FaceDetectionThread][findFace]: init NG !!"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/htc/sunny2/slideshow/FaceDetectionThread;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][FaceDetectionThread][findFace]: Begin"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/sunny2/slideshow/FaceDetectionThread;->mCanvas:Landroid/graphics/Canvas;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v1, p0, Lcom/htc/sunny2/slideshow/FaceDetectionThread;->mCanvas:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/sunny2/slideshow/FaceDetectionThread;->mFaceDetector:Landroid/media/FaceDetector;

    iget-object v2, p0, Lcom/htc/sunny2/slideshow/FaceDetectionThread;->mBitmapReUse:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, p2}, Landroid/media/FaceDetector;->findFaces(Landroid/graphics/Bitmap;[Landroid/media/FaceDetector$Face;)I

    move-result v0

    sget-object v1, Lcom/htc/sunny2/slideshow/FaceDetectionThread;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KA>>> [HTCAlbum][FaceDetectionThread][findFace]: Found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", from Photo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " x "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/htc/sunny2/slideshow/FaceDetectionThread;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][FaceDetectionThread][findFace]: End"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public iterate()Z
    .locals 6

    iget-object v3, p0, Lcom/htc/sunny2/slideshow/FaceDetectionThread;->mQueue:Lcom/htc/sunnyCore/Queue;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny2/slideshow/FaceDetectionThread$taskFace;

    if-eqz v2, :cond_0

    const/16 v3, 0x20

    new-array v0, v3, [Landroid/media/FaceDetector$Face;

    #getter for: Lcom/htc/sunny2/slideshow/FaceDetectionThread$taskFace;->bmpPhoto:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/htc/sunny2/slideshow/FaceDetectionThread$taskFace;->access$000(Lcom/htc/sunny2/slideshow/FaceDetectionThread$taskFace;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Lcom/htc/sunny2/slideshow/FaceDetectionThread;->findFace(Landroid/graphics/Bitmap;[Landroid/media/FaceDetector$Face;)I

    move-result v1

    if-ltz v1, :cond_0

    sget-object v3, Lcom/htc/sunny2/slideshow/FaceDetectionThread;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KA>>> [HTCAlbum][FaceDetectionThread][iterate]: F.Detect Success ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    #getter for: Lcom/htc/sunny2/slideshow/FaceDetectionThread$taskFace;->nIndex:I
    invoke-static {v2}, Lcom/htc/sunny2/slideshow/FaceDetectionThread$taskFace;->access$100(Lcom/htc/sunny2/slideshow/FaceDetectionThread$taskFace;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") call onFaceDetected()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/htc/sunny2/slideshow/FaceDetectionThread;->eventListener:Lcom/htc/sunny2/slideshow/FaceDetectionThread$EventListener;

    #getter for: Lcom/htc/sunny2/slideshow/FaceDetectionThread$taskFace;->nIndex:I
    invoke-static {v2}, Lcom/htc/sunny2/slideshow/FaceDetectionThread$taskFace;->access$100(Lcom/htc/sunny2/slideshow/FaceDetectionThread$taskFace;)I

    move-result v4

    #getter for: Lcom/htc/sunny2/slideshow/FaceDetectionThread$taskFace;->bmpPhoto:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/htc/sunny2/slideshow/FaceDetectionThread$taskFace;->access$000(Lcom/htc/sunny2/slideshow/FaceDetectionThread$taskFace;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-interface {v3, v4, v5, v1, v0}, Lcom/htc/sunny2/slideshow/FaceDetectionThread$EventListener;->onFaceDetected(ILandroid/graphics/Bitmap;I[Landroid/media/FaceDetector$Face;)V

    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/slideshow/FaceDetectionThread;->mQueue:Lcom/htc/sunnyCore/Queue;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/Queue;->peek()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onThreadBegin()Z
    .locals 4

    sget-object v0, Lcom/htc/sunny2/slideshow/FaceDetectionThread;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][FaceDetectionThread][onThreadBegin]: Begin"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/FaceDetectionThread;->mBitmapReUse:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    sget v0, Lcom/htc/sunny2/slideshow/FaceDetectionThread;->FACEDETECT_BITMAP_MAX_WIDTH:I

    sget v1, Lcom/htc/sunny2/slideshow/FaceDetectionThread;->FACEDETECT_BITMAP_MAX_HEIGHT:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/slideshow/FaceDetectionThread;->mBitmapReUse:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/FaceDetectionThread;->mCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/htc/sunny2/slideshow/FaceDetectionThread;->mBitmapReUse:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/htc/sunny2/slideshow/FaceDetectionThread;->mCanvas:Landroid/graphics/Canvas;

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/FaceDetectionThread;->mFaceDetector:Landroid/media/FaceDetector;

    if-nez v0, :cond_2

    new-instance v0, Landroid/media/FaceDetector;

    sget v1, Lcom/htc/sunny2/slideshow/FaceDetectionThread;->FACEDETECT_BITMAP_MAX_WIDTH:I

    sget v2, Lcom/htc/sunny2/slideshow/FaceDetectionThread;->FACEDETECT_BITMAP_MAX_HEIGHT:I

    const/16 v3, 0x20

    invoke-direct {v0, v1, v2, v3}, Landroid/media/FaceDetector;-><init>(III)V

    iput-object v0, p0, Lcom/htc/sunny2/slideshow/FaceDetectionThread;->mFaceDetector:Landroid/media/FaceDetector;

    :cond_2
    sget-object v0, Lcom/htc/sunny2/slideshow/FaceDetectionThread;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][FaceDetectionThread][onThreadBegin]: end"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onThreadEnd()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/htc/sunny2/slideshow/FaceDetectionThread;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][FaceDetectionThread][onThreadEnd]: Begin"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/FaceDetectionThread;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    iput-object v2, p0, Lcom/htc/sunny2/slideshow/FaceDetectionThread;->mCanvas:Landroid/graphics/Canvas;

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/FaceDetectionThread;->mBitmapReUse:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/FaceDetectionThread;->mBitmapReUse:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/htc/sunny2/slideshow/FaceDetectionThread;->mBitmapReUse:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/FaceDetectionThread;->mFaceDetector:Landroid/media/FaceDetector;

    if-eqz v0, :cond_2

    iput-object v2, p0, Lcom/htc/sunny2/slideshow/FaceDetectionThread;->mFaceDetector:Landroid/media/FaceDetector;

    :cond_2
    sget-object v0, Lcom/htc/sunny2/slideshow/FaceDetectionThread;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][FaceDetectionThread][onThreadEnd]: End"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
