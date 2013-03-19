.class public Lcom/htc/album/Animation/FadeOutAndExpandOutAnimation;
.super Lcom/htc/sunnyCore/widget/gridview/animation/MultiViewAnimationSet;
.source "FadeOutAndExpandOutAnimation.java"


# instance fields
.field private mTargetChildIdx:I

.field private mView:Lcom/htc/sunnyCore/widget/gridview/GridView;


# direct methods
.method public constructor <init>(Lcom/htc/sunnyCore/widget/gridview/GridView;I)V
    .locals 6

    invoke-direct {p0}, Lcom/htc/sunnyCore/widget/gridview/animation/MultiViewAnimationSet;-><init>()V

    iput-object p1, p0, Lcom/htc/album/Animation/FadeOutAndExpandOutAnimation;->mView:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iput p2, p0, Lcom/htc/album/Animation/FadeOutAndExpandOutAnimation;->mTargetChildIdx:I

    const/16 v2, 0xff

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/htc/album/Animation/FadeOutAndExpandOutAnimation;->setAlphaAnimation(II)V

    iget-object v2, p0, Lcom/htc/album/Animation/FadeOutAndExpandOutAnimation;->mView:Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getPosition()Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v1

    new-instance v0, Lcom/htc/sunnyCore/view/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunnyCore/view/Vector3F;-><init>()V

    iget v2, v1, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    iget v3, v1, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    iget v4, v1, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    const/high16 v5, -0x3c6a

    add-float/2addr v4, v5

    invoke-virtual {v0, v2, v3, v4}, Lcom/htc/sunnyCore/view/Vector3F;->setVector3F(FFF)V

    invoke-virtual {p0, v1, v0}, Lcom/htc/album/Animation/FadeOutAndExpandOutAnimation;->setPositionAnimation(Lcom/htc/sunnyCore/view/Vector3F;Lcom/htc/sunnyCore/view/Vector3F;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/htc/album/Animation/FadeOutAndExpandOutAnimation;->setFillAfter(Z)V

    const-wide/16 v2, 0x258

    invoke-virtual {p0, v2, v3}, Lcom/htc/album/Animation/FadeOutAndExpandOutAnimation;->setDuration(J)V

    sget-object v2, Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;->DECELERATE:Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;

    invoke-virtual {p0, v2}, Lcom/htc/album/Animation/FadeOutAndExpandOutAnimation;->setInterpolator(Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;)V

    return-void
.end method

.method private onPlayFolderExpand()V
    .locals 22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/FadeOutAndExpandOutAnimation;->mView:Lcom/htc/sunnyCore/widget/gridview/GridView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/Animation/FadeOutAndExpandOutAnimation;->mTargetChildIdx:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/FadeOutAndExpandOutAnimation;->mView:Lcom/htc/sunnyCore/widget/gridview/GridView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getFirstVisiblePosition()I

    move-result v20

    sub-int v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getChild(I)Lcom/htc/sunnyCore/view/SView;

    move-result-object v7

    instance-of v0, v7, Lcom/htc/sunny2/widget/gridview/GridItemFolder;

    move/from16 v18, v0

    if-eqz v18, :cond_0

    move-object v10, v7

    check-cast v10, Lcom/htc/sunny2/widget/gridview/GridItemFolder;

    invoke-virtual {v10}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->getFolderItemCount()I

    move-result v11

    invoke-virtual {v10}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->getOriginalPosition()[Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v14

    invoke-virtual {v10}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->getOriginalRotation()[Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v15

    if-eqz v14, :cond_0

    if-eqz v15, :cond_0

    const/16 v18, 0x3

    move/from16 v0, v18

    if-eq v11, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    array-length v0, v14

    move/from16 v18, v0

    array-length v0, v15

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v12

    const/16 v18, 0x3

    move/from16 v0, v18

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v12

    const/16 v4, 0x12c

    sget-object v9, Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;->DECELERATE:Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v11, :cond_2

    new-instance v3, Lcom/htc/sunnyCore/view/animation/SAnimationController;

    invoke-direct {v3}, Lcom/htc/sunnyCore/view/animation/SAnimationController;-><init>()V

    int-to-long v0, v4

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setDuration(J)V

    invoke-virtual {v3, v9}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setInterpolator(Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;)V

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setFillAfter(Z)V

    aget-object v16, v14, v8

    sget-object v18, Lcom/htc/album/helper/AnimationHelper$FolderView$FolderViewItem;->EXPAND_POSTION_OFFSET:[Lcom/htc/sunnyCore/view/Vector3F;

    aget-object v13, v18, v8

    new-instance v5, Lcom/htc/sunnyCore/view/Vector3F;

    move-object/from16 v0, v16

    iget v0, v0, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    move/from16 v18, v0

    iget v0, v13, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    move/from16 v19, v0

    add-float v18, v18, v19

    move-object/from16 v0, v16

    iget v0, v0, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    move/from16 v19, v0

    iget v0, v13, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    move/from16 v20, v0

    add-float v19, v19, v20

    move-object/from16 v0, v16

    iget v0, v0, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    move/from16 v20, v0

    iget v0, v13, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    move/from16 v21, v0

    add-float v20, v20, v21

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v5, v0, v1, v2}, Lcom/htc/sunnyCore/view/Vector3F;-><init>(FFF)V

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v5}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setPositionAnimation(Lcom/htc/sunnyCore/view/Vector3F;Lcom/htc/sunnyCore/view/Vector3F;)V

    aget-object v17, v15, v8

    sget-object v18, Lcom/htc/album/helper/AnimationHelper$FolderView$FolderViewItem;->EXPAND_ROTATION_OFFSET:[Lcom/htc/sunnyCore/view/Vector3F;

    aget-object v13, v18, v8

    new-instance v6, Lcom/htc/sunnyCore/view/Vector3F;

    move-object/from16 v0, v17

    iget v0, v0, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    move/from16 v18, v0

    iget v0, v13, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    move/from16 v19, v0

    add-float v18, v18, v19

    move-object/from16 v0, v17

    iget v0, v0, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    move/from16 v19, v0

    iget v0, v13, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    move/from16 v20, v0

    add-float v19, v19, v20

    move-object/from16 v0, v17

    iget v0, v0, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    move/from16 v20, v0

    iget v0, v13, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    move/from16 v21, v0

    add-float v20, v20, v21

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v6, v0, v1, v2}, Lcom/htc/sunnyCore/view/Vector3F;-><init>(FFF)V

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v6}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setRotationAnimation(Lcom/htc/sunnyCore/view/Vector3F;Lcom/htc/sunnyCore/view/Vector3F;)V

    const/16 v18, 0xff

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setAlphaAnimation(II)V

    invoke-virtual {v10, v8, v3}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->setupSpriteAnimation(ILcom/htc/sunnyCore/view/animation/SAnimationController;)V

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    :cond_2
    invoke-virtual {v10}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->startAnimation()V

    goto/16 :goto_0
.end method


# virtual methods
.method protected isValidAnimation()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onStart()V
    .locals 2

    iget-object v0, p0, Lcom/htc/album/Animation/FadeOutAndExpandOutAnimation;->mView:Lcom/htc/sunnyCore/widget/gridview/GridView;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t prepare the FadeOutAndExpandOutAnimation for null GridView"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0}, Lcom/htc/sunnyCore/widget/gridview/animation/MultiViewAnimationSet;->onStart()V

    return-void
.end method
