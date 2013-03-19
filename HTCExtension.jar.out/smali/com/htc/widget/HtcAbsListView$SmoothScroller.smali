.class Lcom/htc/widget/HtcAbsListView$SmoothScroller;
.super Ljava/lang/Object;
.source "HtcAbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SmoothScroller"
.end annotation


# static fields
.field static final BUFFER_COUNT:I = 0x3


# instance fields
.field mDeltaBuffer:[I

.field mMovementCount:I

.field final synthetic this$0:Lcom/htc/widget/HtcAbsListView;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcAbsListView;)V
    .locals 1
    .parameter

    .prologue
    .line 3187
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView$SmoothScroller;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3189
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView$SmoothScroller;->mDeltaBuffer:[I

    .line 3190
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcAbsListView$SmoothScroller;->mMovementCount:I

    return-void
.end method


# virtual methods
.method addMovement(I)V
    .locals 6
    .parameter "delta"

    .prologue
    .line 3200
    div-int/lit8 v1, p1, 0x3

    .line 3201
    .local v1, realDelta:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    .line 3202
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView$SmoothScroller;->mDeltaBuffer:[I

    aget v3, v2, v0

    add-int/2addr v3, v1

    aput v3, v2, v0

    .line 3201
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3204
    :cond_0
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView$SmoothScroller;->mDeltaBuffer:[I

    iget v3, p0, Lcom/htc/widget/HtcAbsListView$SmoothScroller;->mMovementCount:I

    add-int/lit8 v3, v3, 0x2

    rem-int/lit8 v3, v3, 0x3

    aget v4, v2, v3

    rem-int/lit8 v5, p1, 0x3

    add-int/2addr v4, v5

    aput v4, v2, v3

    .line 3205
    iget v2, p0, Lcom/htc/widget/HtcAbsListView$SmoothScroller;->mMovementCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/widget/HtcAbsListView$SmoothScroller;->mMovementCount:I

    .line 3206
    return-void
.end method

.method clearBuffer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3193
    iput v2, p0, Lcom/htc/widget/HtcAbsListView$SmoothScroller;->mMovementCount:I

    .line 3194
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 3195
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView$SmoothScroller;->mDeltaBuffer:[I

    aput v2, v1, v0

    .line 3194
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3197
    :cond_0
    return-void
.end method

.method getCurrentDelta()I
    .locals 4

    .prologue
    .line 3209
    iget v2, p0, Lcom/htc/widget/HtcAbsListView$SmoothScroller;->mMovementCount:I

    add-int/lit8 v2, v2, -0x1

    rem-int/lit8 v0, v2, 0x3

    .line 3210
    .local v0, bufferIndex:I
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView$SmoothScroller;->mDeltaBuffer:[I

    aget v1, v2, v0

    .line 3211
    .local v1, moveDelta:I
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView$SmoothScroller;->mDeltaBuffer:[I

    const/4 v3, 0x0

    aput v3, v2, v0

    .line 3212
    return v1
.end method
