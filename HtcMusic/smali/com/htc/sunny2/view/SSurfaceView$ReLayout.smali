.class Lcom/htc/sunny2/view/SSurfaceView$ReLayout;
.super Lcom/htc/sunny2/RenderThreadAction;
.source "SSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/view/SSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReLayout"
.end annotation


# static fields
.field static final ACTION_NAME:Ljava/lang/String; = "ReLayout"


# instance fields
.field private isLayoutRequest:Z

.field final synthetic this$0:Lcom/htc/sunny2/view/SSurfaceView;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/view/SSurfaceView;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1036
    iput-object p1, p0, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    .line 1037
    const-string v0, "ReLayout"

    invoke-direct {p0, p1, v0}, Lcom/htc/sunny2/RenderThreadAction;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1038
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;->setAlwaysNeedRenderAfterProcess(Z)V

    .line 1039
    iput-boolean v1, p0, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;->isLayoutRequest:Z

    .line 1040
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;->setAlwaysRequestRenderThreadRunningAfterProcess(Z)V

    .line 1041
    return-void
.end method

.method private processLayoutRequest()V
    .locals 19

    .prologue
    .line 1057
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;->isLayoutRequest:Z

    if-nez v2, :cond_0

    .line 1058
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;->setAlwaysRequestRenderThreadRunningAfterProcess(Z)V

    .line 1107
    :goto_0
    return-void

    .line 1062
    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;->isLayoutRequest:Z

    .line 1063
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v2, v2, Lcom/htc/sunny2/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    invoke-virtual {v2}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->getChildrenCount()I

    move-result v9

    .line 1064
    .local v9, count:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v2}, Lcom/htc/sunny2/view/SSurfaceView;->getWidth()I

    move-result v18

    .line 1065
    .local v18, width:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v2}, Lcom/htc/sunny2/view/SSurfaceView;->getHeight()I

    move-result v10

    .line 1066
    .local v10, height:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v2, v2, Lcom/htc/sunny2/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    const/4 v3, 0x0

    move/from16 v0, v18

    invoke-virtual {v2, v0, v10, v3}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->invalidateGlobalBackground(IIZ)V

    .line 1067
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v2, v2, Lcom/htc/sunny2/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    move/from16 v0, v18

    invoke-virtual {v2, v0, v10}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->invalidateOverlapRoundCorner(II)V

    .line 1068
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    if-ge v11, v9, :cond_4

    .line 1069
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v2, v2, Lcom/htc/sunny2/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    invoke-virtual {v2, v11}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->getChild(I)Lcom/htc/sunny2/SceneNode;

    move-result-object v16

    .line 1070
    .local v16, node:Lcom/htc/sunny2/SceneNode;
    move-object/from16 v0, v16

    instance-of v2, v0, Lcom/htc/sunny2/view/SView;

    if-eqz v2, :cond_2

    move-object/from16 v1, v16

    .line 1071
    check-cast v1, Lcom/htc/sunny2/view/SView;

    .line 1073
    .local v1, childView:Lcom/htc/sunny2/view/SView;
    const/high16 v2, -0x8000

    move/from16 v0, v18

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 1074
    .local v14, measureParentW:I
    const/high16 v2, -0x8000

    invoke-static {v10, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 1076
    .local v13, measureParentH:I
    invoke-virtual {v1}, Lcom/htc/sunny2/view/SView;->getLayoutParams()Lcom/htc/sunny2/view/SViewGroup$LayoutParams;

    move-result-object v12

    .line 1077
    .local v12, lp:Lcom/htc/sunny2/view/SViewGroup$LayoutParams;
    if-nez v12, :cond_1

    .line 1078
    new-instance v12, Lcom/htc/sunny2/view/SViewGroup$LayoutParams;

    .end local v12           #lp:Lcom/htc/sunny2/view/SViewGroup$LayoutParams;
    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v12, v2, v3}, Lcom/htc/sunny2/view/SViewGroup$LayoutParams;-><init>(II)V

    .line 1080
    .restart local v12       #lp:Lcom/htc/sunny2/view/SViewGroup$LayoutParams;
    :cond_1
    instance-of v2, v12, Lcom/htc/sunny2/view/SViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_3

    move-object v15, v12

    .line 1081
    check-cast v15, Lcom/htc/sunny2/view/SViewGroup$MarginLayoutParams;

    .line 1083
    .local v15, mlp:Lcom/htc/sunny2/view/SViewGroup$MarginLayoutParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v2}, Lcom/htc/sunny2/view/SSurfaceView;->getPaddingLeft()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v3}, Lcom/htc/sunny2/view/SSurfaceView;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v15, Lcom/htc/sunny2/view/SViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    iget v3, v15, Lcom/htc/sunny2/view/SViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    iget v3, v12, Lcom/htc/sunny2/view/SViewGroup$LayoutParams;->width:I

    invoke-static {v14, v2, v3}, Lcom/htc/sunny2/view/SViewGroup;->getChildMeasureSpec(III)I

    move-result v8

    .line 1085
    .local v8, childWidthMeasureSpec:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v2}, Lcom/htc/sunny2/view/SSurfaceView;->getPaddingTop()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v3}, Lcom/htc/sunny2/view/SSurfaceView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v15, Lcom/htc/sunny2/view/SViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v15, Lcom/htc/sunny2/view/SViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    iget v3, v12, Lcom/htc/sunny2/view/SViewGroup$LayoutParams;->height:I

    invoke-static {v13, v2, v3}, Lcom/htc/sunny2/view/SViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    .line 1088
    .local v7, childHeightMeasureSpec:I
    invoke-virtual {v1, v8, v7}, Lcom/htc/sunny2/view/SView;->measure(II)V

    .line 1099
    .end local v15           #mlp:Lcom/htc/sunny2/view/SViewGroup$MarginLayoutParams;
    :goto_2
    invoke-virtual {v1}, Lcom/htc/sunny2/view/SView;->getMeasuredWidth()I

    move-result v5

    .line 1100
    .local v5, w:I
    invoke-virtual {v1}, Lcom/htc/sunny2/view/SView;->getMeasuredHeight()I

    move-result v6

    .line 1101
    .local v6, h:I
    invoke-virtual {v1}, Lcom/htc/sunny2/view/SView;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v17

    .line 1103
    .local v17, v:Lcom/htc/sunny2/view/Vector3F;
    move-object/from16 v0, v17

    iget v2, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    move-object/from16 v0, v17

    iget v3, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    move-object/from16 v0, v17

    iget v4, v0, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    invoke-virtual/range {v1 .. v6}, Lcom/htc/sunny2/view/SView;->layout(FFFII)V

    .line 1068
    .end local v1           #childView:Lcom/htc/sunny2/view/SView;
    .end local v5           #w:I
    .end local v6           #h:I
    .end local v7           #childHeightMeasureSpec:I
    .end local v8           #childWidthMeasureSpec:I
    .end local v12           #lp:Lcom/htc/sunny2/view/SViewGroup$LayoutParams;
    .end local v13           #measureParentH:I
    .end local v14           #measureParentW:I
    .end local v17           #v:Lcom/htc/sunny2/view/Vector3F;
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 1091
    .restart local v1       #childView:Lcom/htc/sunny2/view/SView;
    .restart local v12       #lp:Lcom/htc/sunny2/view/SViewGroup$LayoutParams;
    .restart local v13       #measureParentH:I
    .restart local v14       #measureParentW:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v2}, Lcom/htc/sunny2/view/SSurfaceView;->getPaddingLeft()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v3}, Lcom/htc/sunny2/view/SSurfaceView;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v12, Lcom/htc/sunny2/view/SViewGroup$LayoutParams;->width:I

    invoke-static {v14, v2, v3}, Lcom/htc/sunny2/view/SViewGroup;->getChildMeasureSpec(III)I

    move-result v8

    .line 1093
    .restart local v8       #childWidthMeasureSpec:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v2}, Lcom/htc/sunny2/view/SSurfaceView;->getPaddingTop()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v3}, Lcom/htc/sunny2/view/SSurfaceView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v12, Lcom/htc/sunny2/view/SViewGroup$LayoutParams;->height:I

    invoke-static {v13, v2, v3}, Lcom/htc/sunny2/view/SViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    .line 1096
    .restart local v7       #childHeightMeasureSpec:I
    invoke-virtual {v1, v8, v7}, Lcom/htc/sunny2/view/SView;->measure(II)V

    goto :goto_2

    .line 1106
    .end local v1           #childView:Lcom/htc/sunny2/view/SView;
    .end local v7           #childHeightMeasureSpec:I
    .end local v8           #childWidthMeasureSpec:I
    .end local v12           #lp:Lcom/htc/sunny2/view/SViewGroup$LayoutParams;
    .end local v13           #measureParentH:I
    .end local v14           #measureParentW:I
    .end local v16           #node:Lcom/htc/sunny2/SceneNode;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v2, v2, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/htc/sunny2/RenderThread;->forceRenderOnce:Z

    goto/16 :goto_0
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    .locals 0
    .parameter "cancelReason"

    .prologue
    .line 1109
    return-void
.end method

.method public onDoActionIRT(IJ)Z
    .locals 1
    .parameter "frameIndex"
    .parameter "timeMillis"

    .prologue
    .line 1052
    invoke-direct {p0}, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;->processLayoutRequest()V

    .line 1053
    const/4 v0, 0x1

    return v0
.end method

.method requestLayout()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1044
    iput-boolean v0, p0, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;->isLayoutRequest:Z

    .line 1045
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;->setAlwaysRequestRenderThreadRunningAfterProcess(Z)V

    .line 1046
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v1, v1, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eq v0, v1, :cond_0

    .line 1047
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v0, v0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunny2/RenderThread;->resumeThread()V

    .line 1049
    :cond_0
    return-void
.end method
