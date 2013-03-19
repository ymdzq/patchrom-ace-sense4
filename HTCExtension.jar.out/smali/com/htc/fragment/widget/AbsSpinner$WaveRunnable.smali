.class Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;
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
    name = "WaveRunnable"
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

.field final synthetic this$0:Lcom/htc/fragment/widget/AbsSpinner;


# direct methods
.method private constructor <init>(Lcom/htc/fragment/widget/AbsSpinner;)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1113
    iput-object p1, p0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1116
    iput v0, p0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->mMode:I

    .line 1119
    iput v0, p0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->mDistance:I

    .line 1120
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->mStartTime:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/fragment/widget/AbsSpinner;Lcom/htc/fragment/widget/AbsSpinner$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1113
    invoke-direct {p0, p1}, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;-><init>(Lcom/htc/fragment/widget/AbsSpinner;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1113
    invoke-direct {p0}, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->end()V

    return-void
.end method

.method private changeWidthHeight(I)V
    .locals 2
    .parameter "step"

    .prologue
    .line 1221
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    iget-boolean v0, v0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v0, :cond_0

    .line 1222
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    iget-object v1, p0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    #getter for: Lcom/htc/fragment/widget/AbsSpinner;->mExpandedWidth:I
    invoke-static {v1}, Lcom/htc/fragment/widget/AbsSpinner;->access$800(Lcom/htc/fragment/widget/AbsSpinner;)I

    move-result v1

    add-int/2addr v1, p1

    #setter for: Lcom/htc/fragment/widget/AbsSpinner;->mExpandedWidth:I
    invoke-static {v0, v1}, Lcom/htc/fragment/widget/AbsSpinner;->access$802(Lcom/htc/fragment/widget/AbsSpinner;I)I

    .line 1223
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    iget-object v1, p0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    #getter for: Lcom/htc/fragment/widget/AbsSpinner;->mReducedWidth:I
    invoke-static {v1}, Lcom/htc/fragment/widget/AbsSpinner;->access$700(Lcom/htc/fragment/widget/AbsSpinner;)I

    move-result v1

    sub-int/2addr v1, p1

    #setter for: Lcom/htc/fragment/widget/AbsSpinner;->mReducedWidth:I
    invoke-static {v0, v1}, Lcom/htc/fragment/widget/AbsSpinner;->access$702(Lcom/htc/fragment/widget/AbsSpinner;I)I

    .line 1228
    :goto_0
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/AbsSpinner;->requestLayout()V

    .line 1229
    return-void

    .line 1225
    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    iget-object v1, p0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    #getter for: Lcom/htc/fragment/widget/AbsSpinner;->mExpandedHeight:I
    invoke-static {v1}, Lcom/htc/fragment/widget/AbsSpinner;->access$1000(Lcom/htc/fragment/widget/AbsSpinner;)I

    move-result v1

    add-int/2addr v1, p1

    #setter for: Lcom/htc/fragment/widget/AbsSpinner;->mExpandedHeight:I
    invoke-static {v0, v1}, Lcom/htc/fragment/widget/AbsSpinner;->access$1002(Lcom/htc/fragment/widget/AbsSpinner;I)I

    .line 1226
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    iget-object v1, p0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    #getter for: Lcom/htc/fragment/widget/AbsSpinner;->mReducedHeight:I
    invoke-static {v1}, Lcom/htc/fragment/widget/AbsSpinner;->access$900(Lcom/htc/fragment/widget/AbsSpinner;)I

    move-result v1

    sub-int/2addr v1, p1

    #setter for: Lcom/htc/fragment/widget/AbsSpinner;->mReducedHeight:I
    invoke-static {v0, v1}, Lcom/htc/fragment/widget/AbsSpinner;->access$902(Lcom/htc/fragment/widget/AbsSpinner;I)I

    goto :goto_0
.end method

.method private end()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1232
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    invoke-virtual {v0, p0}, Lcom/htc/fragment/widget/AbsSpinner;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1234
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    iget-boolean v0, v0, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v0, :cond_0

    .line 1235
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    iget-object v1, p0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/AbsSpinner;->getLayoutParamsWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x1

    #setter for: Lcom/htc/fragment/widget/AbsSpinner;->mExpandedWidth:I
    invoke-static {v0, v1}, Lcom/htc/fragment/widget/AbsSpinner;->access$802(Lcom/htc/fragment/widget/AbsSpinner;I)I

    .line 1236
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    iget-object v1, p0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/AbsSpinner;->getLayoutParamsWidth()I

    move-result v1

    #setter for: Lcom/htc/fragment/widget/AbsSpinner;->mReducedWidth:I
    invoke-static {v0, v1}, Lcom/htc/fragment/widget/AbsSpinner;->access$702(Lcom/htc/fragment/widget/AbsSpinner;I)I

    .line 1242
    :goto_0
    iput v2, p0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->mMode:I

    .line 1243
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    #setter for: Lcom/htc/fragment/widget/AbsSpinner;->mWaveRunnableRunning:Z
    invoke-static {v0, v2}, Lcom/htc/fragment/widget/AbsSpinner;->access$1102(Lcom/htc/fragment/widget/AbsSpinner;Z)Z

    .line 1244
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    #getter for: Lcom/htc/fragment/widget/AbsSpinner;->mLateShrinkedFlag:Z
    invoke-static {v0}, Lcom/htc/fragment/widget/AbsSpinner;->access$1200(Lcom/htc/fragment/widget/AbsSpinner;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1245
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    #setter for: Lcom/htc/fragment/widget/AbsSpinner;->mLateShrinkedFlag:Z
    invoke-static {v0, v2}, Lcom/htc/fragment/widget/AbsSpinner;->access$1202(Lcom/htc/fragment/widget/AbsSpinner;Z)Z

    .line 1246
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/AbsSpinner;->setShrinkedPosition(I)V

    .line 1247
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    #calls: Lcom/htc/fragment/widget/AbsSpinner;->onAnimationEnd()V
    invoke-static {v0}, Lcom/htc/fragment/widget/AbsSpinner;->access$1300(Lcom/htc/fragment/widget/AbsSpinner;)V

    .line 1250
    :goto_1
    return-void

    .line 1238
    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    iget-object v1, p0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/AbsSpinner;->getLayoutParamsHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x1

    #setter for: Lcom/htc/fragment/widget/AbsSpinner;->mExpandedHeight:I
    invoke-static {v0, v1}, Lcom/htc/fragment/widget/AbsSpinner;->access$1002(Lcom/htc/fragment/widget/AbsSpinner;I)I

    .line 1239
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    iget-object v1, p0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/AbsSpinner;->getLayoutParamsHeight()I

    move-result v1

    #setter for: Lcom/htc/fragment/widget/AbsSpinner;->mReducedHeight:I
    invoke-static {v0, v1}, Lcom/htc/fragment/widget/AbsSpinner;->access$902(Lcom/htc/fragment/widget/AbsSpinner;I)I

    goto :goto_0

    .line 1249
    :cond_1
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/AbsSpinner;->requestLayout()V

    goto :goto_1
.end method

.method private getTargetDistance()I
    .locals 9

    .prologue
    const-wide/16 v7, 0xc8

    .line 1208
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1209
    .local v0, now:J
    const/4 v2, 0x0

    .line 1211
    .local v2, targetDistance:I
    iget-wide v3, p0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->mStartTime:J

    sub-long v3, v0, v3

    cmp-long v3, v3, v7

    if-ltz v3, :cond_0

    .line 1212
    iget v2, p0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->mDistance:I

    .line 1216
    :goto_0
    return v2

    .line 1214
    :cond_0
    iget-wide v3, p0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->mStartTime:J

    sub-long v3, v0, v3

    iget v5, p0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->mDistance:I

    int-to-long v5, v5

    mul-long/2addr v3, v5

    div-long/2addr v3, v7

    long-to-int v2, v3

    goto :goto_0
.end method

.method private startCommon()V
    .locals 2

    .prologue
    .line 1178
    iget v0, p0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1179
    invoke-direct {p0}, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->end()V

    .line 1180
    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    invoke-virtual {v0, p0}, Lcom/htc/fragment/widget/AbsSpinner;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1181
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1189
    iget v2, p0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->mMode:I

    if-nez v2, :cond_0

    .line 1190
    invoke-direct {p0}, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->end()V

    .line 1205
    :goto_0
    return-void

    .line 1194
    :cond_0
    invoke-direct {p0}, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->getTargetDistance()I

    move-result v1

    .line 1195
    .local v1, targetDistance:I
    iget v2, p0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->mDistance:I

    if-ne v1, v2, :cond_1

    .line 1196
    invoke-direct {p0}, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->end()V

    goto :goto_0

    .line 1200
    :cond_1
    iget v2, p0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->mMovedDistance:I

    sub-int v0, v1, v2

    .line 1201
    .local v0, step:I
    invoke-direct {p0, v0}, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->changeWidthHeight(I)V

    .line 1202
    iput v1, p0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->mMovedDistance:I

    .line 1203
    iget-object v2, p0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    invoke-virtual {v2, p0}, Lcom/htc/fragment/widget/AbsSpinner;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public start()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const-wide/high16 v8, 0x3ff8

    .line 1129
    iget-object v4, p0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    const/4 v5, -0x1

    iput v5, v4, Lcom/htc/fragment/widget/AbsSpinner;->mReducedPos:I

    .line 1131
    iget-object v4, p0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    iget-boolean v4, v4, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v4, :cond_2

    .line 1132
    iget-object v4, p0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    iget-object v5, p0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    invoke-virtual {v5}, Lcom/htc/fragment/widget/AbsSpinner;->getLayoutParamsWidth()I

    move-result v5

    #setter for: Lcom/htc/fragment/widget/AbsSpinner;->mReducedWidth:I
    invoke-static {v4, v5}, Lcom/htc/fragment/widget/AbsSpinner;->access$702(Lcom/htc/fragment/widget/AbsSpinner;I)I

    .line 1133
    iget-object v4, p0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    iget-object v5, p0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    invoke-virtual {v5}, Lcom/htc/fragment/widget/AbsSpinner;->getLayoutParamsWidth()I

    move-result v5

    #setter for: Lcom/htc/fragment/widget/AbsSpinner;->mExpandedWidth:I
    invoke-static {v4, v5}, Lcom/htc/fragment/widget/AbsSpinner;->access$802(Lcom/htc/fragment/widget/AbsSpinner;I)I

    .line 1139
    :goto_0
    iget-object v4, p0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    invoke-virtual {v4}, Lcom/htc/fragment/widget/AbsSpinner;->getFirstVisiblePosition()I

    move-result v1

    .line 1140
    .local v1, firstVisPos:I
    iget-object v4, p0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    invoke-virtual {v4}, Lcom/htc/fragment/widget/AbsSpinner;->getChildCount()I

    move-result v0

    .line 1142
    .local v0, count:I
    iget-object v4, p0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    invoke-virtual {v4}, Lcom/htc/fragment/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1143
    iget-object v4, p0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    invoke-virtual {v4}, Lcom/htc/fragment/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v4

    invoke-interface {v4}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    .line 1145
    :cond_0
    iget-object v4, p0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    iget-boolean v4, v4, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v4, :cond_4

    .line 1146
    move v2, v1

    .local v2, i:I
    :goto_1
    if-gt v2, v0, :cond_1

    .line 1147
    iget-object v4, p0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    sub-int v5, v2, v1

    invoke-virtual {v4, v5}, Lcom/htc/fragment/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1148
    .local v3, view:Landroid/view/View;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-double v4, v4

    iget-object v6, p0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    invoke-virtual {v6}, Lcom/htc/fragment/widget/AbsSpinner;->getLayoutParamsWidth()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v6, v8

    cmpl-double v4, v4, v6

    if-lez v4, :cond_3

    .line 1149
    iget-object v4, p0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    iput v2, v4, Lcom/htc/fragment/widget/AbsSpinner;->mReducedPos:I

    .line 1150
    iget-object v4, p0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    iget-object v5, p0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    invoke-virtual {v5}, Lcom/htc/fragment/widget/AbsSpinner;->getLayoutParamsWidth()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, -0x1

    #setter for: Lcom/htc/fragment/widget/AbsSpinner;->mReducedWidth:I
    invoke-static {v4, v5}, Lcom/htc/fragment/widget/AbsSpinner;->access$702(Lcom/htc/fragment/widget/AbsSpinner;I)I

    .line 1165
    .end local v3           #view:Landroid/view/View;
    :cond_1
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->mStartTime:J

    .line 1166
    invoke-direct {p0}, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->startCommon()V

    .line 1168
    iget-object v4, p0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    iget-boolean v4, v4, Lcom/htc/fragment/widget/AbsSpinner;->isPortrait:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    invoke-virtual {v4}, Lcom/htc/fragment/widget/AbsSpinner;->getLayoutParamsWidth()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_3
    iput v4, p0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->mDistance:I

    .line 1170
    iput v10, p0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->mMode:I

    .line 1171
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->mMovedDistance:I

    .line 1172
    iget-object v4, p0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    #setter for: Lcom/htc/fragment/widget/AbsSpinner;->mWaveRunnableRunning:Z
    invoke-static {v4, v10}, Lcom/htc/fragment/widget/AbsSpinner;->access$1102(Lcom/htc/fragment/widget/AbsSpinner;Z)Z

    .line 1173
    iget-object v4, p0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    invoke-virtual {v4, p0}, Lcom/htc/fragment/widget/AbsSpinner;->post(Ljava/lang/Runnable;)Z

    .line 1174
    return-void

    .line 1135
    .end local v0           #count:I
    .end local v1           #firstVisPos:I
    .end local v2           #i:I
    :cond_2
    iget-object v4, p0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    iget-object v5, p0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    invoke-virtual {v5}, Lcom/htc/fragment/widget/AbsSpinner;->getLayoutParamsHeight()I

    move-result v5

    #setter for: Lcom/htc/fragment/widget/AbsSpinner;->mReducedHeight:I
    invoke-static {v4, v5}, Lcom/htc/fragment/widget/AbsSpinner;->access$902(Lcom/htc/fragment/widget/AbsSpinner;I)I

    .line 1136
    iget-object v4, p0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    iget-object v5, p0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    invoke-virtual {v5}, Lcom/htc/fragment/widget/AbsSpinner;->getLayoutParamsHeight()I

    move-result v5

    #setter for: Lcom/htc/fragment/widget/AbsSpinner;->mExpandedHeight:I
    invoke-static {v4, v5}, Lcom/htc/fragment/widget/AbsSpinner;->access$1002(Lcom/htc/fragment/widget/AbsSpinner;I)I

    goto/16 :goto_0

    .line 1146
    .restart local v0       #count:I
    .restart local v1       #firstVisPos:I
    .restart local v2       #i:I
    .restart local v3       #view:Landroid/view/View;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1155
    .end local v2           #i:I
    .end local v3           #view:Landroid/view/View;
    :cond_4
    move v2, v1

    .restart local v2       #i:I
    :goto_4
    if-gt v2, v0, :cond_1

    .line 1156
    iget-object v4, p0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    sub-int v5, v2, v1

    invoke-virtual {v4, v5}, Lcom/htc/fragment/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1157
    .restart local v3       #view:Landroid/view/View;
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-double v4, v4

    iget-object v6, p0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    invoke-virtual {v6}, Lcom/htc/fragment/widget/AbsSpinner;->getLayoutParamsHeight()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v6, v8

    cmpl-double v4, v4, v6

    if-lez v4, :cond_5

    .line 1158
    iget-object v4, p0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    iput v2, v4, Lcom/htc/fragment/widget/AbsSpinner;->mReducedPos:I

    .line 1159
    iget-object v4, p0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    iget-object v5, p0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    invoke-virtual {v5}, Lcom/htc/fragment/widget/AbsSpinner;->getLayoutParamsHeight()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, -0x1

    #setter for: Lcom/htc/fragment/widget/AbsSpinner;->mReducedHeight:I
    invoke-static {v4, v5}, Lcom/htc/fragment/widget/AbsSpinner;->access$902(Lcom/htc/fragment/widget/AbsSpinner;I)I

    goto :goto_2

    .line 1155
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1168
    .end local v3           #view:Landroid/view/View;
    :cond_6
    iget-object v4, p0, Lcom/htc/fragment/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    invoke-virtual {v4}, Lcom/htc/fragment/widget/AbsSpinner;->getLayoutParamsHeight()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    goto :goto_3
.end method
