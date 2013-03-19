.class public Lcom/htc/album/Animation/FadeInAndCollapsedAnimation;
.super Lcom/htc/sunnyCore/widget/gridview/animation/MultiViewAnimationSet;
.source "FadeInAndCollapsedAnimation.java"


# instance fields
.field private mTargetChildIdx:I

.field private mView:Lcom/htc/sunnyCore/widget/gridview/GridView;


# direct methods
.method public constructor <init>(Lcom/htc/sunnyCore/widget/gridview/GridView;I)V
    .locals 6

    invoke-direct {p0}, Lcom/htc/sunnyCore/widget/gridview/animation/MultiViewAnimationSet;-><init>()V

    iput-object p1, p0, Lcom/htc/album/Animation/FadeInAndCollapsedAnimation;->mView:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iput p2, p0, Lcom/htc/album/Animation/FadeInAndCollapsedAnimation;->mTargetChildIdx:I

    const/4 v2, 0x0

    const/16 v3, 0xff

    invoke-virtual {p0, v2, v3}, Lcom/htc/album/Animation/FadeInAndCollapsedAnimation;->setAlphaAnimation(II)V

    iget-object v2, p0, Lcom/htc/album/Animation/FadeInAndCollapsedAnimation;->mView:Lcom/htc/sunnyCore/widget/gridview/GridView;

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

    invoke-virtual {p0, v0, v1}, Lcom/htc/album/Animation/FadeInAndCollapsedAnimation;->setPositionAnimation(Lcom/htc/sunnyCore/view/Vector3F;Lcom/htc/sunnyCore/view/Vector3F;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/htc/album/Animation/FadeInAndCollapsedAnimation;->setFillAfter(Z)V

    const-wide/16 v2, 0x258

    invoke-virtual {p0, v2, v3}, Lcom/htc/album/Animation/FadeInAndCollapsedAnimation;->setDuration(J)V

    sget-object v2, Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;->DECELERATE:Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;

    invoke-virtual {p0, v2}, Lcom/htc/album/Animation/FadeInAndCollapsedAnimation;->setInterpolator(Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;)V

    return-void
.end method

.method private onPlayFolderCollapse()V
    .locals 24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/FadeInAndCollapsedAnimation;->mView:Lcom/htc/sunnyCore/widget/gridview/GridView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/Animation/FadeInAndCollapsedAnimation;->mTargetChildIdx:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/Animation/FadeInAndCollapsedAnimation;->mView:Lcom/htc/sunnyCore/widget/gridview/GridView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getFirstVisiblePosition()I

    move-result v22

    sub-int v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getChild(I)Lcom/htc/sunnyCore/view/SView;

    move-result-object v12

    instance-of v0, v12, Lcom/htc/sunny2/widget/gridview/GridItemFolder;

    move/from16 v20, v0

    if-eqz v20, :cond_0

    move-object v11, v12

    check-cast v11, Lcom/htc/sunny2/widget/gridview/GridItemFolder;

    invoke-virtual {v11}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->getFolderItemCount()I

    move-result v13

    invoke-virtual {v11}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->getOriginalPosition()[Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v16

    invoke-virtual {v11}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->getOriginalRotation()[Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v17

    if-eqz v16, :cond_0

    if-eqz v17, :cond_0

    const/16 v20, 0x3

    move/from16 v0, v20

    if-eq v13, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v20, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v21, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(II)I

    move-result v14

    const/16 v20, 0x3

    move/from16 v0, v20

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v14

    const/16 v6, 0x12c

    sget-object v10, Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;->LINEAR:Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;

    const/16 v5, 0x190

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v14, :cond_2

    new-instance v4, Lcom/htc/sunnyCore/view/animation/SAnimationController;

    invoke-direct {v4}, Lcom/htc/sunnyCore/view/animation/SAnimationController;-><init>()V

    int-to-long v0, v6

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v4, v0, v1}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setDuration(J)V

    int-to-long v0, v5

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v4, v0, v1}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setStartOffset(J)V

    invoke-virtual {v4, v10}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setInterpolator(Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;)V

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setFillAfter(Z)V

    aget-object v7, v16, v9

    sget-object v20, Lcom/htc/album/helper/AnimationHelper$FolderView$FolderViewItem;->EXPAND_POSTION_OFFSET:[Lcom/htc/sunnyCore/view/Vector3F;

    aget-object v15, v20, v9

    new-instance v18, Lcom/htc/sunnyCore/view/Vector3F;

    iget v0, v7, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    move/from16 v20, v0

    iget v0, v15, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    move/from16 v21, v0

    add-float v20, v20, v21

    iget v0, v7, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    move/from16 v21, v0

    iget v0, v15, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    move/from16 v22, v0

    add-float v21, v21, v22

    iget v0, v7, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    move/from16 v22, v0

    iget v0, v15, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    move/from16 v23, v0

    add-float v22, v22, v23

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/sunnyCore/view/Vector3F;-><init>(FFF)V

    move-object/from16 v0, v18

    invoke-virtual {v4, v0, v7}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setPositionAnimation(Lcom/htc/sunnyCore/view/Vector3F;Lcom/htc/sunnyCore/view/Vector3F;)V

    aget-object v8, v17, v9

    sget-object v20, Lcom/htc/album/helper/AnimationHelper$FolderView$FolderViewItem;->EXPAND_ROTATION_OFFSET:[Lcom/htc/sunnyCore/view/Vector3F;

    aget-object v15, v20, v9

    new-instance v19, Lcom/htc/sunnyCore/view/Vector3F;

    iget v0, v8, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    move/from16 v20, v0

    iget v0, v15, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    move/from16 v21, v0

    add-float v20, v20, v21

    iget v0, v8, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    move/from16 v21, v0

    iget v0, v15, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    move/from16 v22, v0

    add-float v21, v21, v22

    iget v0, v8, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    move/from16 v22, v0

    iget v0, v15, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    move/from16 v23, v0

    add-float v22, v22, v23

    invoke-direct/range {v19 .. v22}, Lcom/htc/sunnyCore/view/Vector3F;-><init>(FFF)V

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v8}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setRotationAnimation(Lcom/htc/sunnyCore/view/Vector3F;Lcom/htc/sunnyCore/view/Vector3F;)V

    const/16 v20, 0x0

    const/16 v21, 0xff

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setAlphaAnimation(II)V

    invoke-virtual {v11, v9, v4}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->setupSpriteAnimation(ILcom/htc/sunnyCore/view/animation/SAnimationController;)V

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    :cond_2
    invoke-virtual {v11}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->startAnimation()V

    goto/16 :goto_0
.end method


# virtual methods
.method public animate()V
    .locals 4

    invoke-super {p0}, Lcom/htc/sunnyCore/widget/gridview/animation/MultiViewAnimationSet;->animate()V

    iget-wide v1, p0, Lcom/htc/album/Animation/FadeInAndCollapsedAnimation;->mOffset:J

    long-to-float v1, v1

    iget-wide v2, p0, Lcom/htc/album/Animation/FadeInAndCollapsedAnimation;->mTotalTime:J

    long-to-float v2, v2

    div-float v0, v1, v2

    const/high16 v1, 0x3e80

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/Animation/FadeInAndCollapsedAnimation;->mCurrentLayout:Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;

    const/high16 v2, 0x4080

    mul-float/2addr v2, v0

    const/4 v3, 0x0

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Lcom/htc/sunnyCore/view/animation/SAnimationController$Layout;->mAlpha:I

    :cond_0
    return-void
.end method

.method protected isValidAnimation()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onStart()V
    .locals 2

    iget-object v0, p0, Lcom/htc/album/Animation/FadeInAndCollapsedAnimation;->mView:Lcom/htc/sunnyCore/widget/gridview/GridView;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t prepare the FadeInAndCollapsedAnimation for null GridView"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0}, Lcom/htc/sunnyCore/widget/gridview/animation/MultiViewAnimationSet;->onStart()V

    return-void
.end method
