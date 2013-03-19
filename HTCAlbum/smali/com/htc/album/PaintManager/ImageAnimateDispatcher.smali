.class public Lcom/htc/album/PaintManager/ImageAnimateDispatcher;
.super Ljava/lang/Object;
.source "ImageAnimateDispatcher.java"


# static fields
.field private static final DEBUG:Z

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mAnimate:I

.field private mIndex:I

.field private mIsAnimating:Z

.field private mIsIndexChange:Z

.field private mIsSRotateBegin:Z

.field private mIsSRotateEnd:Z

.field private mIsSRotating:Z

.field private mListener:Lcom/htc/album/PaintManager/Interface/IImageAnimateListener;

.field private mScrollState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIndex:I

    iput v1, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mScrollState:I

    iput-boolean v1, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIsIndexChange:Z

    iput v1, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mAnimate:I

    iput-boolean v1, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIsAnimating:Z

    iput-boolean v1, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIsSRotateBegin:Z

    iput-boolean v1, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIsSRotateEnd:Z

    iput-boolean v1, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIsSRotating:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mListener:Lcom/htc/album/PaintManager/Interface/IImageAnimateListener;

    return-void
.end method


# virtual methods
.method public doDispatch()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mListener:Lcom/htc/album/PaintManager/Interface/IImageAnimateListener;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIsSRotateBegin:Z

    if-ne v1, v0, :cond_2

    iput-boolean v2, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIsSRotateBegin:Z

    iput-boolean v1, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIsSRotating:Z

    iget-object v0, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mListener:Lcom/htc/album/PaintManager/Interface/IImageAnimateListener;

    invoke-interface {v0}, Lcom/htc/album/PaintManager/Interface/IImageAnimateListener;->onAnimateBegin()V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIsSRotating:Z

    if-ne v1, v0, :cond_3

    iget-boolean v0, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIsSRotateEnd:Z

    if-ne v1, v0, :cond_3

    iput-boolean v2, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIsSRotating:Z

    iput-boolean v2, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIsSRotateEnd:Z

    iget-object v0, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mListener:Lcom/htc/album/PaintManager/Interface/IImageAnimateListener;

    invoke-interface {v0}, Lcom/htc/album/PaintManager/Interface/IImageAnimateListener;->onAnimateEnd()V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mAnimate:I

    if-lez v0, :cond_4

    iget-boolean v0, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIsAnimating:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mListener:Lcom/htc/album/PaintManager/Interface/IImageAnimateListener;

    invoke-interface {v0}, Lcom/htc/album/PaintManager/Interface/IImageAnimateListener;->onAnimateBegin()V

    iput-boolean v1, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIsAnimating:Z

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIsAnimating:Z

    if-ne v1, v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIsIndexChange:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mListener:Lcom/htc/album/PaintManager/Interface/IImageAnimateListener;

    invoke-interface {v0}, Lcom/htc/album/PaintManager/Interface/IImageAnimateListener;->onAnimateEnd()V

    :goto_1
    iput-boolean v2, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIsAnimating:Z

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mListener:Lcom/htc/album/PaintManager/Interface/IImageAnimateListener;

    invoke-interface {v0}, Lcom/htc/album/PaintManager/Interface/IImageAnimateListener;->onAnimateEndSwitched()V

    iput-boolean v2, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIsIndexChange:Z

    goto :goto_1
.end method

.method public isRotating()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIsSRotating:Z

    return v0
.end method

.method public setAnimateBegin()V
    .locals 1

    iget v0, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mAnimate:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mAnimate:I

    return-void
.end method

.method public setAnimateEnd()V
    .locals 1

    iget v0, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mAnimate:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mAnimate:I

    iget v0, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mAnimate:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mAnimate:I

    :cond_0
    return-void
.end method

.method public setIndex(I)V
    .locals 0

    iput p1, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIndex:I

    return-void
.end method

.method public setListener(Lcom/htc/album/PaintManager/Interface/IImageAnimateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mListener:Lcom/htc/album/PaintManager/Interface/IImageAnimateListener;

    return-void
.end method

.method public setScreenRotateBegin()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIsSRotateBegin:Z

    return-void
.end method

.method public setScreenRotateEnd()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIsSRotateEnd:Z

    return-void
.end method

.method public setScrollState(II)Z
    .locals 4

    const/4 v0, 0x0

    iget v2, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mScrollState:I

    if-ne v2, p2, :cond_0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    iput p2, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mScrollState:I

    iget v2, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIndex:I

    if-eq v2, p1, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIsIndexChange:Z

    :cond_1
    iput p1, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIndex:I

    const/4 v2, 0x2

    iget v3, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mScrollState:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mAnimate:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mAnimate:I

    :cond_2
    :goto_1
    const/4 v0, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mScrollState:I

    if-nez v2, :cond_2

    iget v2, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mAnimate:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mAnimate:I

    iget v2, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mAnimate:I

    if-gez v2, :cond_2

    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mAnimate:I

    goto :goto_1
.end method
