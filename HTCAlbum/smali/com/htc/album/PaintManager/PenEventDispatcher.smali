.class public Lcom/htc/album/PaintManager/PenEventDispatcher;
.super Ljava/lang/Object;
.source "PenEventDispatcher.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final PEN_META_ERASER:I = 0x0

.field private static final PEN_META_UNKNOWN:I = -0x1


# instance fields
.field private mIsPenDown:Z

.field private mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

.field private mPenMetaState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/album/PaintManager/PenEventDispatcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/PaintManager/PenEventDispatcher;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/PaintManager/PenEventDispatcher;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/PaintManager/PenEventDispatcher;->mPenMetaState:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/PaintManager/PenEventDispatcher;->mIsPenDown:Z

    return-void
.end method

.method private dispatchPenEventByMeta(ILandroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/htc/album/PaintManager/PenEventDispatcher;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/htc/album/PaintManager/PenEventDispatcher;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    invoke-virtual {v2, v3}, Lcom/htc/painting/engine/HtcPaintingView;->enableEraseMode(Z)V

    goto :goto_0

    :cond_2
    if-ne v3, v1, :cond_0

    iget-object v2, p0, Lcom/htc/album/PaintManager/PenEventDispatcher;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/painting/engine/HtcPaintingView;->enableEraseMode(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public dispatchPenEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, -0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v3

    if-ne v5, v3, :cond_1

    const/4 v2, 0x0

    :goto_0
    if-nez v1, :cond_2

    iget-boolean v3, p0, Lcom/htc/album/PaintManager/PenEventDispatcher;->mIsPenDown:Z

    if-nez v3, :cond_2

    iput-boolean v4, p0, Lcom/htc/album/PaintManager/PenEventDispatcher;->mIsPenDown:Z

    iput v2, p0, Lcom/htc/album/PaintManager/PenEventDispatcher;->mPenMetaState:I

    iget v3, p0, Lcom/htc/album/PaintManager/PenEventDispatcher;->mPenMetaState:I

    invoke-direct {p0, v3, p1}, Lcom/htc/album/PaintManager/PenEventDispatcher;->dispatchPenEventByMeta(ILandroid/view/MotionEvent;)Z

    move-result v0

    :cond_0
    :goto_1
    return v0

    :cond_1
    const/4 v2, -0x1

    goto :goto_0

    :cond_2
    if-ne v5, v1, :cond_3

    iget-boolean v3, p0, Lcom/htc/album/PaintManager/PenEventDispatcher;->mIsPenDown:Z

    if-ne v4, v3, :cond_3

    iget v3, p0, Lcom/htc/album/PaintManager/PenEventDispatcher;->mPenMetaState:I

    if-ne v2, v3, :cond_3

    iget v3, p0, Lcom/htc/album/PaintManager/PenEventDispatcher;->mPenMetaState:I

    invoke-direct {p0, v3, p1}, Lcom/htc/album/PaintManager/PenEventDispatcher;->dispatchPenEventByMeta(ILandroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1

    :cond_3
    if-eq v4, v1, :cond_4

    iget v3, p0, Lcom/htc/album/PaintManager/PenEventDispatcher;->mPenMetaState:I

    if-eq v2, v3, :cond_0

    :cond_4
    iget-boolean v3, p0, Lcom/htc/album/PaintManager/PenEventDispatcher;->mIsPenDown:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/htc/album/PaintManager/PenEventDispatcher;->mPenMetaState:I

    if-eq v2, v3, :cond_5

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_5
    iget v3, p0, Lcom/htc/album/PaintManager/PenEventDispatcher;->mPenMetaState:I

    invoke-direct {p0, v3, p1}, Lcom/htc/album/PaintManager/PenEventDispatcher;->dispatchPenEventByMeta(ILandroid/view/MotionEvent;)Z

    move-result v0

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/album/PaintManager/PenEventDispatcher;->mIsPenDown:Z

    const/4 v3, -0x1

    iput v3, p0, Lcom/htc/album/PaintManager/PenEventDispatcher;->mPenMetaState:I

    goto :goto_1
.end method

.method public onCreate(Lcom/htc/painting/engine/HtcPaintingView;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/PaintManager/PenEventDispatcher;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/PaintManager/PenEventDispatcher;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;

    return-void
.end method
