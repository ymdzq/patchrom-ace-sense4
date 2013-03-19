.class Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;
.super Ljava/lang/Object;
.source "AbsSpinner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fragment/widget/AbsSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeWidthHeightRunnable"
.end annotation


# static fields
.field private static final DURATION:I = 0xc8

.field private static final MOVE_MODE:I = 0x1

.field private static final STOP_MODE:I


# instance fields
.field private mDistance:I

.field private mMode:I

.field private mMovedDistance:I

.field private mStartTime:J

.field private mTargetWidthHeight:I

.field final synthetic this$0:Lcom/htc/fragment/widget/AbsSpinner;


# direct methods
.method private constructor <init>(Lcom/htc/fragment/widget/AbsSpinner;)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1001
    iput-object p1, p0, Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1004
    iput v0, p0, Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;->mMode:I

    .line 1007
    iput v0, p0, Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;->mDistance:I

    .line 1008
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;->mStartTime:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/fragment/widget/AbsSpinner;Lcom/htc/fragment/widget/AbsSpinner$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1001
    invoke-direct {p0, p1}, Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;-><init>(Lcom/htc/fragment/widget/AbsSpinner;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1001
    invoke-direct {p0}, Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;->end()V

    return-void
.end method

.method private changeWidthHeight(I)V
    .locals 2
    .parameter "step"

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    iget-object v1, p0, Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    #getter for: Lcom/htc/fragment/widget/AbsSpinner;->mAnimationWidthHeight:I
    invoke-static {v1}, Lcom/htc/fragment/widget/AbsSpinner;->access$400(Lcom/htc/fragment/widget/AbsSpinner;)I

    move-result v1

    add-int/2addr v1, p1

    #setter for: Lcom/htc/fragment/widget/AbsSpinner;->mAnimationWidthHeight:I
    invoke-static {v0, v1}, Lcom/htc/fragment/widget/AbsSpinner;->access$402(Lcom/htc/fragment/widget/AbsSpinner;I)I

    .line 1082
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/AbsSpinner;->requestLayout()V

    .line 1083
    return-void
.end method

.method private end()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 1086
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    invoke-virtual {v0, p0}, Lcom/htc/fragment/widget/AbsSpinner;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1087
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    #setter for: Lcom/htc/fragment/widget/AbsSpinner;->mChangeWidthHeightAnimation:Z
    invoke-static {v0, v2}, Lcom/htc/fragment/widget/AbsSpinner;->access$302(Lcom/htc/fragment/widget/AbsSpinner;Z)Z

    .line 1088
    iput v2, p0, Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;->mMode:I

    .line 1089
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    #getter for: Lcom/htc/fragment/widget/AbsSpinner;->mIsDragBinGridView:Z
    invoke-static {v0}, Lcom/htc/fragment/widget/AbsSpinner;->access$500(Lcom/htc/fragment/widget/AbsSpinner;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1090
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    iget-object v1, p0, Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/AbsSpinner;->setShrinkedPosition(I)V

    .line 1091
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    iget-object v1, p0, Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/AbsSpinner;->setExpandedPosition(I)V

    .line 1096
    :goto_0
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    iget v1, p0, Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;->mTargetWidthHeight:I

    #setter for: Lcom/htc/fragment/widget/AbsSpinner;->mAnimationWidthHeight:I
    invoke-static {v0, v1}, Lcom/htc/fragment/widget/AbsSpinner;->access$402(Lcom/htc/fragment/widget/AbsSpinner;I)I

    .line 1097
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/AbsSpinner;->requestLayout()V

    .line 1098
    return-void

    .line 1093
    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/AbsSpinner;->setShrinkedPosition(I)V

    .line 1094
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/AbsSpinner;->setExpandedPosition(I)V

    goto :goto_0
.end method

.method private getTargetDistance()I
    .locals 9

    .prologue
    const-wide/16 v7, 0xc8

    .line 1068
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1069
    .local v0, now:J
    const/4 v2, 0x0

    .line 1071
    .local v2, targetDistance:I
    iget-wide v3, p0, Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;->mStartTime:J

    sub-long v3, v0, v3

    cmp-long v3, v3, v7

    if-ltz v3, :cond_0

    .line 1072
    iget v2, p0, Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;->mDistance:I

    .line 1076
    :goto_0
    return v2

    .line 1074
    :cond_0
    iget-wide v3, p0, Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;->mStartTime:J

    sub-long v3, v0, v3

    iget v5, p0, Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;->mDistance:I

    int-to-long v5, v5

    mul-long/2addr v3, v5

    div-long/2addr v3, v7

    long-to-int v2, v3

    goto :goto_0
.end method

.method private startCommon()V
    .locals 2

    .prologue
    .line 1038
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1039
    invoke-direct {p0}, Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;->end()V

    .line 1040
    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    invoke-virtual {v0, p0}, Lcom/htc/fragment/widget/AbsSpinner;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1041
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1049
    iget v2, p0, Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;->mMode:I

    if-nez v2, :cond_0

    .line 1050
    invoke-direct {p0}, Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;->end()V

    .line 1065
    :goto_0
    return-void

    .line 1054
    :cond_0
    invoke-direct {p0}, Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;->getTargetDistance()I

    move-result v1

    .line 1055
    .local v1, targetDistance:I
    iget v2, p0, Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;->mDistance:I

    if-ne v1, v2, :cond_1

    .line 1056
    invoke-direct {p0}, Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;->end()V

    goto :goto_0

    .line 1060
    :cond_1
    iget v2, p0, Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;->mMovedDistance:I

    sub-int v0, v1, v2

    .line 1061
    .local v0, step:I
    invoke-direct {p0, v0}, Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;->changeWidthHeight(I)V

    .line 1062
    iput v1, p0, Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;->mMovedDistance:I

    .line 1063
    iget-object v2, p0, Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    invoke-virtual {v2, p0}, Lcom/htc/fragment/widget/AbsSpinner;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public start(II)V
    .locals 3
    .parameter "orgWidthHeight"
    .parameter "targetWidthHeight"

    .prologue
    const/4 v2, 0x1

    .line 1018
    iput p2, p0, Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;->mTargetWidthHeight:I

    .line 1019
    if-ne p1, p2, :cond_0

    .line 1020
    invoke-direct {p0}, Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;->end()V

    .line 1034
    :goto_0
    return-void

    .line 1023
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;->mStartTime:J

    .line 1025
    invoke-direct {p0}, Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;->startCommon()V

    .line 1027
    iput v2, p0, Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;->mMode:I

    .line 1028
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;->mMovedDistance:I

    .line 1029
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    #setter for: Lcom/htc/fragment/widget/AbsSpinner;->mChangeWidthHeightAnimation:Z
    invoke-static {v0, v2}, Lcom/htc/fragment/widget/AbsSpinner;->access$302(Lcom/htc/fragment/widget/AbsSpinner;Z)Z

    .line 1030
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    #setter for: Lcom/htc/fragment/widget/AbsSpinner;->mAnimationWidthHeight:I
    invoke-static {v0, p1}, Lcom/htc/fragment/widget/AbsSpinner;->access$402(Lcom/htc/fragment/widget/AbsSpinner;I)I

    .line 1031
    sub-int v0, p2, p1

    iput v0, p0, Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;->mDistance:I

    .line 1033
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner$ChangeWidthHeightRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    invoke-virtual {v0, p0}, Lcom/htc/fragment/widget/AbsSpinner;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
