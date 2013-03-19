.class public Lcom/htc/album/Animation/ExpandingAnimation;
.super Ljava/lang/Object;
.source "ExpandingAnimation.java"

# interfaces
.implements Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ExpandingAnimation"


# instance fields
.field private mAllGridSViewArray:[[Lcom/htc/sunnyCore/view/SView;

.field private mAllGridSViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/sunnyCore/view/SView;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimationEndCount:I

.field private mAnimationListener:Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;

.field private mCenterPosition:Lcom/htc/sunnyCore/view/Vector3F;

.field private mGridItemsDistanceMap:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/htc/sunnyCore/view/SView;",
            ">;"
        }
    .end annotation
.end field

.field private mNearFirst:Z

.field private mStartPosition:Lcom/htc/sunnyCore/view/Vector3F;

.field private mXPosSet:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mYPosSet:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mAllGridSViewList:Ljava/util/List;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mGridItemsDistanceMap:Ljava/util/TreeMap;

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mXPosSet:Ljava/util/TreeSet;

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mYPosSet:Ljava/util/TreeSet;

    const/4 v0, 0x0

    check-cast v0, [[Lcom/htc/sunnyCore/view/SView;

    iput-object v0, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mAllGridSViewArray:[[Lcom/htc/sunnyCore/view/SView;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mNearFirst:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mAnimationEndCount:I

    new-instance v0, Lcom/htc/sunnyCore/view/Vector3F;

    const/high16 v1, 0x4387

    const/high16 v2, -0x3c10

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/sunnyCore/view/Vector3F;-><init>(FFF)V

    iput-object v0, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mCenterPosition:Lcom/htc/sunnyCore/view/Vector3F;

    return-void
.end method

.method private calMidpointPosition(Lcom/htc/sunnyCore/view/Vector3F;Lcom/htc/sunnyCore/view/Vector3F;I)Lcom/htc/sunnyCore/view/Vector3F;
    .locals 8

    iget v6, p2, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    iget v7, p1, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    int-to-float v7, p3

    div-float v3, v6, v7

    iget v6, p2, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    iget v7, p1, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    int-to-float v7, p3

    div-float v4, v6, v7

    iget v6, p2, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    iget v7, p1, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    int-to-float v7, p3

    div-float v5, v6, v7

    iget v6, p2, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    iget v7, p1, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    iget v6, p1, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    add-float v0, v6, v3

    :goto_0
    iget v6, p2, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    iget v7, p1, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    iget v6, p1, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    add-float v1, v6, v4

    :goto_1
    iget v6, p2, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    iget v7, p1, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    iget v6, p1, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    add-float v2, v6, v5

    :goto_2
    new-instance v6, Lcom/htc/sunnyCore/view/Vector3F;

    invoke-direct {v6, v0, v1, v2}, Lcom/htc/sunnyCore/view/Vector3F;-><init>(FFF)V

    return-object v6

    :cond_0
    iget v6, p1, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    sub-float v0, v6, v3

    goto :goto_0

    :cond_1
    iget v6, p1, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    sub-float v1, v6, v4

    goto :goto_1

    :cond_2
    iget v6, p1, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    sub-float v2, v6, v5

    goto :goto_2
.end method

.method private closeGridView(Lcom/htc/sunnyCore/view/Vector3F;)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/album/Animation/ExpandingAnimation;->mGridItemsDistanceMap:Ljava/util/TreeMap;

    invoke-virtual {v15}, Ljava/util/TreeMap;->clear()V

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/album/Animation/ExpandingAnimation;->mAnimationEndCount:I

    const/4 v9, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/album/Animation/ExpandingAnimation;->mAllGridSViewList:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-ge v9, v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/album/Animation/ExpandingAnimation;->mAllGridSViewList:Ljava/util/List;

    invoke-interface {v15, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/sunnyCore/view/SView;

    if-eqz v14, :cond_1

    invoke-virtual {v14}, Lcom/htc/sunnyCore/view/SView;->getPosition()Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v13

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v13, v1}, Lcom/htc/album/Animation/ExpandingAnimation;->viewDisplacement(Lcom/htc/sunnyCore/view/Vector3F;Lcom/htc/sunnyCore/view/Vector3F;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/album/Animation/ExpandingAnimation;->mGridItemsDistanceMap:Ljava/util/TreeMap;

    invoke-virtual {v15, v6}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/album/Animation/ExpandingAnimation;->mGridItemsDistanceMap:Ljava/util/TreeMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v14}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    const-string v15, "ExpandingAnimation"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "closeGridView, i = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", tempSView is null."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    const/4 v8, 0x3

    const/4 v12, 0x0

    const-wide/16 v3, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/album/Animation/ExpandingAnimation;->mGridItemsDistanceMap:Ljava/util/TreeMap;

    invoke-virtual {v15}, Ljava/util/TreeMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/NavigableMap;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/album/Animation/ExpandingAnimation;->mGridItemsDistanceMap:Ljava/util/TreeMap;

    invoke-virtual {v15, v11}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/sunnyCore/view/SView;

    if-eqz v14, :cond_3

    invoke-virtual {v14}, Lcom/htc/sunnyCore/view/SView;->getPosition()Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v13

    move-object/from16 v7, p1

    div-int v2, v12, v8

    mul-int/lit8 v15, v2, 0x64

    int-to-long v3, v15

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v7, v3, v4}, Lcom/htc/album/Animation/ExpandingAnimation;->exitGridViewAnimationController(Lcom/htc/sunnyCore/view/Vector3F;Lcom/htc/sunnyCore/view/Vector3F;J)Lcom/htc/sunnyCore/view/animation/SAnimationController;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/htc/sunnyCore/view/SView;->startAnimation(Lcom/htc/sunnyCore/view/animation/SAnimationController;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_3
    const-string v15, "ExpandingAnimation"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "closeGridView, key = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", tempSView is null."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    return-void
.end method

.method private closeGridView2(Lcom/htc/sunnyCore/view/Vector3F;)V
    .locals 13

    iget-object v10, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mXPosSet:Ljava/util/TreeSet;

    invoke-virtual {v10}, Ljava/util/TreeSet;->size()I

    move-result v10

    if-gtz v10, :cond_0

    iget-object v10, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mYPosSet:Ljava/util/TreeSet;

    invoke-virtual {v10}, Ljava/util/TreeSet;->size()I

    move-result v10

    if-lez v10, :cond_2

    :cond_0
    const-string v10, "ExpandingAnimation"

    const-string v11, "closeGridView2, mXPosSet.size()>0 || mYPosSet.size()>0, don\'t need to prepare Animation again."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v10, 0x0

    iput v10, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mAnimationEndCount:I

    iget-object v10, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mXPosSet:Ljava/util/TreeSet;

    invoke-virtual {v10}, Ljava/util/TreeSet;->size()I

    move-result v8

    iget-object v10, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mYPosSet:Ljava/util/TreeSet;

    invoke-virtual {v10}, Ljava/util/TreeSet;->size()I

    move-result v9

    const-wide/16 v1, 0x0

    add-int v10, v8, v9

    add-int/lit8 v0, v10, -0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_6

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v0, :cond_5

    sub-int v10, v4, v7

    if-ltz v10, :cond_5

    if-ge v7, v8, :cond_1

    sub-int v10, v4, v7

    if-lt v10, v9, :cond_3

    :cond_1
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    invoke-direct {p0, p1}, Lcom/htc/album/Animation/ExpandingAnimation;->prepareAnimation(Lcom/htc/sunnyCore/view/Vector3F;)V

    goto :goto_0

    :cond_3
    iget-boolean v10, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mNearFirst:Z

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mAllGridSViewArray:[[Lcom/htc/sunnyCore/view/SView;

    add-int/lit8 v11, v9, -0x1

    sub-int v12, v4, v7

    sub-int/2addr v11, v12

    aget-object v10, v10, v11

    add-int/lit8 v11, v8, -0x1

    sub-int/2addr v11, v7

    aget-object v6, v10, v11

    :goto_4
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/htc/sunnyCore/view/SView;->getPosition()Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v5

    move-object v3, p1

    mul-int/lit8 v10, v4, 0x64

    int-to-long v1, v10

    invoke-direct {p0, v5, v3, v1, v2}, Lcom/htc/album/Animation/ExpandingAnimation;->exitGridViewAnimationController(Lcom/htc/sunnyCore/view/Vector3F;Lcom/htc/sunnyCore/view/Vector3F;J)Lcom/htc/sunnyCore/view/animation/SAnimationController;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/htc/sunnyCore/view/SView;->startAnimation(Lcom/htc/sunnyCore/view/animation/SAnimationController;)V

    goto :goto_3

    :cond_4
    iget-object v10, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mAllGridSViewArray:[[Lcom/htc/sunnyCore/view/SView;

    sub-int v11, v4, v7

    aget-object v10, v10, v11

    aget-object v6, v10, v7

    goto :goto_4

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method

.method private enterGridViewAnimationController(Lcom/htc/sunnyCore/view/Vector3F;Lcom/htc/sunnyCore/view/Vector3F;FIJ)Lcom/htc/sunnyCore/view/animation/SAnimationController;
    .locals 4

    const/high16 v3, 0x3f80

    new-instance v0, Lcom/htc/sunnyCore/view/animation/SAnimationController;

    invoke-direct {v0}, Lcom/htc/sunnyCore/view/animation/SAnimationController;-><init>()V

    new-instance v1, Lcom/htc/sunnyCore/view/Vector3F;

    invoke-direct {v1, p3, p3, p3}, Lcom/htc/sunnyCore/view/Vector3F;-><init>(FFF)V

    new-instance v2, Lcom/htc/sunnyCore/view/Vector3F;

    invoke-direct {v2, v3, v3, v3}, Lcom/htc/sunnyCore/view/Vector3F;-><init>(FFF)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setScaleAnimation(Lcom/htc/sunnyCore/view/Vector3F;Lcom/htc/sunnyCore/view/Vector3F;)V

    invoke-virtual {v0, p1, p2}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setPositionAnimation(Lcom/htc/sunnyCore/view/Vector3F;Lcom/htc/sunnyCore/view/Vector3F;)V

    const/16 v1, 0xff

    invoke-virtual {v0, p4, v1}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setAlphaAnimation(II)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setFillAfter(Z)V

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setDuration(J)V

    invoke-virtual {v0, p5, p6}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setStartOffset(J)V

    sget-object v1, Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;->EASEINOUT_CUBIC:Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setInterpolator(Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;)V

    invoke-virtual {v0, p0}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setAnimationListener(Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)V

    return-object v0
.end method

.method private exitGridViewAnimationController(Lcom/htc/sunnyCore/view/Vector3F;Lcom/htc/sunnyCore/view/Vector3F;J)Lcom/htc/sunnyCore/view/animation/SAnimationController;
    .locals 4

    const/high16 v2, 0x3f80

    const v3, 0x3e99999a

    new-instance v0, Lcom/htc/sunnyCore/view/animation/SAnimationController;

    invoke-direct {v0}, Lcom/htc/sunnyCore/view/animation/SAnimationController;-><init>()V

    new-instance v1, Lcom/htc/sunnyCore/view/Vector3F;

    invoke-direct {v1, v2, v2, v2}, Lcom/htc/sunnyCore/view/Vector3F;-><init>(FFF)V

    new-instance v2, Lcom/htc/sunnyCore/view/Vector3F;

    invoke-direct {v2, v3, v3, v3}, Lcom/htc/sunnyCore/view/Vector3F;-><init>(FFF)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setScaleAnimation(Lcom/htc/sunnyCore/view/Vector3F;Lcom/htc/sunnyCore/view/Vector3F;)V

    invoke-virtual {v0, p1, p2}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setPositionAnimation(Lcom/htc/sunnyCore/view/Vector3F;Lcom/htc/sunnyCore/view/Vector3F;)V

    const/16 v1, 0xff

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setAlphaAnimation(II)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setFillAfter(Z)V

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setDuration(J)V

    invoke-virtual {v0, p3, p4}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setStartOffset(J)V

    sget-object v1, Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;->EASEINOUT_CUBIC:Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setInterpolator(Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;)V

    invoke-virtual {v0, p0}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setAnimationListener(Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)V

    return-object v0
.end method

.method private expandGridView(Lcom/htc/sunnyCore/view/Vector3F;)V
    .locals 20

    if-nez p1, :cond_1

    const-string v2, "ExpandingAnimation"

    const-string v18, "expandGridView, OriginalStartPos is null"

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/Animation/ExpandingAnimation;->mGridItemsDistanceMap:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->clear()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/album/Animation/ExpandingAnimation;->mAnimationEndCount:I

    const/4 v13, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/Animation/ExpandingAnimation;->mAllGridSViewList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v13, v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/Animation/ExpandingAnimation;->mAllGridSViewList:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/htc/sunnyCore/view/SView;

    if-eqz v17, :cond_3

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunnyCore/view/SView;->getPosition()Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/htc/album/Animation/ExpandingAnimation;->viewDisplacement(Lcom/htc/sunnyCore/view/Vector3F;Lcom/htc/sunnyCore/view/Vector3F;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/Animation/ExpandingAnimation;->mGridItemsDistanceMap:Ljava/util/TreeMap;

    invoke-virtual {v2, v11}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v10, v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/Animation/ExpandingAnimation;->mGridItemsDistanceMap:Ljava/util/TreeMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_3
    const-string v2, "ExpandingAnimation"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "expandGridView, i = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", tempSView is null."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    const/4 v12, 0x3

    const/16 v16, 0x0

    const-wide/16 v7, 0x0

    const v5, 0x3dcccccd

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/Animation/ExpandingAnimation;->mGridItemsDistanceMap:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/NavigableMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/Animation/ExpandingAnimation;->mGridItemsDistanceMap:Ljava/util/TreeMap;

    invoke-virtual {v2, v15}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/htc/sunnyCore/view/SView;

    if-eqz v17, :cond_9

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunnyCore/view/SView;->getPosition()Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v4

    add-int/lit8 v16, v16, 0x1

    const-wide/16 v7, 0xc8

    const/4 v2, 0x1

    move/from16 v0, v16

    if-gt v0, v2, :cond_5

    const/4 v2, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v2}, Lcom/htc/album/Animation/ExpandingAnimation;->calMidpointPosition(Lcom/htc/sunnyCore/view/Vector3F;Lcom/htc/sunnyCore/view/Vector3F;I)Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v3

    const/high16 v5, 0x3f00

    const/16 v6, 0x28

    :goto_4
    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/view/SView;->setVisibility(Z)V

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/htc/album/Animation/ExpandingAnimation;->enterGridViewAnimationController(Lcom/htc/sunnyCore/view/Vector3F;Lcom/htc/sunnyCore/view/Vector3F;FIJ)Lcom/htc/sunnyCore/view/animation/SAnimationController;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/view/SView;->startAnimation(Lcom/htc/sunnyCore/view/animation/SAnimationController;)V

    goto :goto_3

    :cond_5
    const/4 v2, 0x3

    move/from16 v0, v16

    if-gt v0, v2, :cond_6

    const/4 v2, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v2}, Lcom/htc/album/Animation/ExpandingAnimation;->calMidpointPosition(Lcom/htc/sunnyCore/view/Vector3F;Lcom/htc/sunnyCore/view/Vector3F;I)Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v3

    const v5, 0x3ecccccd

    const/16 v6, 0x14

    const-wide/16 v18, 0x32

    add-long v7, v7, v18

    goto :goto_4

    :cond_6
    move-object/from16 v3, p1

    const v5, 0x3e99999a

    const/4 v6, 0x0

    div-int v18, v16, v12

    rem-int/lit8 v2, v16, 0x3

    if-lez v2, :cond_8

    const/4 v2, 0x1

    :goto_5
    add-int v2, v2, v18

    add-int/lit8 v9, v2, -0x2

    if-gez v9, :cond_7

    const/4 v9, 0x0

    :cond_7
    mul-int/lit8 v2, v9, 0x64

    int-to-long v0, v2

    move-wide/from16 v18, v0

    add-long v7, v7, v18

    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    goto :goto_5

    :cond_9
    const-string v2, "ExpandingAnimation"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "expandGridView, key = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", tempSView is null."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private expandGridView2(Lcom/htc/sunnyCore/view/Vector3F;)V
    .locals 18

    if-nez p1, :cond_1

    const-string v2, "ExpandingAnimation"

    const-string v16, "expandGridView2, OriginalStartPos is null"

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/htc/album/Animation/ExpandingAnimation;->prepareAnimation(Lcom/htc/sunnyCore/view/Vector3F;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/album/Animation/ExpandingAnimation;->mAnimationEndCount:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/Animation/ExpandingAnimation;->mXPosSet:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->size()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/Animation/ExpandingAnimation;->mYPosSet:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->size()I

    move-result v15

    const-wide/16 v7, 0x0

    const v5, 0x3dcccccd

    const/4 v6, 0x0

    add-int v2, v14, v15

    add-int/lit8 v9, v2, -0x1

    const/4 v12, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v9, :cond_0

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v9, :cond_7

    sub-int v2, v11, v13

    if-ltz v2, :cond_7

    if-ge v13, v14, :cond_2

    sub-int v2, v11, v13

    if-lt v2, v15, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/Animation/ExpandingAnimation;->mAllGridSViewArray:[[Lcom/htc/sunnyCore/view/SView;

    sub-int v16, v11, v13

    aget-object v2, v2, v16

    aget-object v12, v2, v13

    if-eqz v12, :cond_2

    invoke-virtual {v12}, Lcom/htc/sunnyCore/view/SView;->getPosition()Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v4

    const-wide/16 v7, 0xc8

    if-nez v11, :cond_4

    const/4 v2, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v2}, Lcom/htc/album/Animation/ExpandingAnimation;->calMidpointPosition(Lcom/htc/sunnyCore/view/Vector3F;Lcom/htc/sunnyCore/view/Vector3F;I)Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v3

    const/high16 v5, 0x3f00

    const/16 v6, 0x28

    :goto_3
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Lcom/htc/sunnyCore/view/SView;->setVisibility(Z)V

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/htc/album/Animation/ExpandingAnimation;->enterGridViewAnimationController(Lcom/htc/sunnyCore/view/Vector3F;Lcom/htc/sunnyCore/view/Vector3F;FIJ)Lcom/htc/sunnyCore/view/animation/SAnimationController;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/htc/sunnyCore/view/SView;->startAnimation(Lcom/htc/sunnyCore/view/animation/SAnimationController;)V

    goto :goto_2

    :cond_4
    const/4 v2, 0x1

    if-ne v11, v2, :cond_5

    const/4 v2, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v2}, Lcom/htc/album/Animation/ExpandingAnimation;->calMidpointPosition(Lcom/htc/sunnyCore/view/Vector3F;Lcom/htc/sunnyCore/view/Vector3F;I)Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v3

    const v5, 0x3ecccccd

    const/16 v6, 0x14

    const-wide/16 v16, 0x32

    add-long v7, v7, v16

    goto :goto_3

    :cond_5
    move-object/from16 v3, p1

    const v5, 0x3e99999a

    const/4 v6, 0x0

    add-int/lit8 v10, v11, -0x1

    if-gez v10, :cond_6

    const/4 v10, 0x0

    :cond_6
    mul-int/lit8 v2, v10, 0x64

    int-to-long v0, v2

    move-wide/from16 v16, v0

    add-long v7, v7, v16

    goto :goto_3

    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_0
.end method

.method private prepareAnimation(Lcom/htc/sunnyCore/view/Vector3F;)V
    .locals 14

    const/4 v13, 0x0

    iget-object v10, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mXPosSet:Ljava/util/TreeSet;

    invoke-virtual {v10}, Ljava/util/TreeSet;->clear()V

    iget-object v10, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mYPosSet:Ljava/util/TreeSet;

    invoke-virtual {v10}, Ljava/util/TreeSet;->clear()V

    const/4 v0, 0x0

    :goto_0
    iget-object v10, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mAllGridSViewList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v0, v10, :cond_0

    iget-object v10, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mAllGridSViewList:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunnyCore/view/SView;

    iget-object v10, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mXPosSet:Ljava/util/TreeSet;

    new-instance v11, Ljava/lang/Float;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/view/SView;->getPosition()Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v12

    iget v12, v12, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    invoke-direct {v11, v12}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v10, v11}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    iget-object v10, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mYPosSet:Ljava/util/TreeSet;

    new-instance v11, Ljava/lang/Float;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/view/SView;->getPosition()Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v12

    iget v12, v12, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    invoke-direct {v11, v12}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v10, v11}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v10, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mYPosSet:Ljava/util/TreeSet;

    invoke-virtual {v10}, Ljava/util/TreeSet;->size()I

    move-result v10

    iget-object v11, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mXPosSet:Ljava/util/TreeSet;

    invoke-virtual {v11}, Ljava/util/TreeSet;->size()I

    move-result v11

    filled-new-array {v10, v11}, [I

    move-result-object v10

    const-class v11, Lcom/htc/sunnyCore/view/SView;

    invoke-static {v11, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[Lcom/htc/sunnyCore/view/SView;

    iput-object v10, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mAllGridSViewArray:[[Lcom/htc/sunnyCore/view/SView;

    const/4 v5, 0x0

    const/4 v8, 0x0

    iget v10, p1, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    iget-object v11, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mCenterPosition:Lcom/htc/sunnyCore/view/Vector3F;

    iget v11, v11, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_4

    iget v10, p1, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    iget-object v11, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mCenterPosition:Lcom/htc/sunnyCore/view/Vector3F;

    iget v11, v11, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_4

    iget-object v10, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mXPosSet:Ljava/util/TreeSet;

    invoke-virtual {v10}, Ljava/util/TreeSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v10

    new-array v11, v13, [Ljava/lang/Float;

    invoke-interface {v10, v11}, Ljava/util/NavigableSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/Float;

    move-object v5, v10

    check-cast v5, [Ljava/lang/Float;

    iget-object v10, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mYPosSet:Ljava/util/TreeSet;

    invoke-virtual {v10}, Ljava/util/TreeSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v10

    new-array v11, v13, [Ljava/lang/Float;

    invoke-interface {v10, v11}, Ljava/util/NavigableSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/Float;

    move-object v8, v10

    check-cast v8, [Ljava/lang/Float;

    :cond_1
    :goto_1
    array-length v6, v5

    array-length v9, v8

    const/4 v0, 0x0

    :goto_2
    iget-object v10, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mAllGridSViewList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v0, v10, :cond_9

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v10, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mAllGridSViewList:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunnyCore/view/SView;

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v6, :cond_2

    aget-object v10, v5, v4

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-virtual {v1}, Lcom/htc/sunnyCore/view/SView;->getPosition()Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v11

    iget v11, v11, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    cmpl-float v10, v10, v11

    if-nez v10, :cond_7

    move v2, v4

    :cond_2
    const/4 v7, 0x0

    :goto_4
    if-ge v7, v9, :cond_3

    aget-object v10, v8, v7

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-virtual {v1}, Lcom/htc/sunnyCore/view/SView;->getPosition()Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v11

    iget v11, v11, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    cmpl-float v10, v10, v11

    if-nez v10, :cond_8

    move v3, v7

    :cond_3
    iget-object v10, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mAllGridSViewArray:[[Lcom/htc/sunnyCore/view/SView;

    aget-object v10, v10, v3

    aput-object v1, v10, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    iget v10, p1, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    iget-object v11, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mCenterPosition:Lcom/htc/sunnyCore/view/Vector3F;

    iget v11, v11, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_5

    iget v10, p1, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    iget-object v11, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mCenterPosition:Lcom/htc/sunnyCore/view/Vector3F;

    iget v11, v11, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    cmpl-float v10, v10, v11

    if-lez v10, :cond_5

    iget-object v10, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mXPosSet:Ljava/util/TreeSet;

    invoke-virtual {v10}, Ljava/util/TreeSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v10

    new-array v11, v13, [Ljava/lang/Float;

    invoke-interface {v10, v11}, Ljava/util/NavigableSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/Float;

    move-object v5, v10

    check-cast v5, [Ljava/lang/Float;

    iget-object v10, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mYPosSet:Ljava/util/TreeSet;

    new-array v11, v13, [Ljava/lang/Float;

    invoke-virtual {v10, v11}, Ljava/util/TreeSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/Float;

    move-object v8, v10

    check-cast v8, [Ljava/lang/Float;

    goto :goto_1

    :cond_5
    iget v10, p1, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    iget-object v11, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mCenterPosition:Lcom/htc/sunnyCore/view/Vector3F;

    iget v11, v11, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    cmpl-float v10, v10, v11

    if-lez v10, :cond_6

    iget v10, p1, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    iget-object v11, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mCenterPosition:Lcom/htc/sunnyCore/view/Vector3F;

    iget v11, v11, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_6

    iget-object v10, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mXPosSet:Ljava/util/TreeSet;

    new-array v11, v13, [Ljava/lang/Float;

    invoke-virtual {v10, v11}, Ljava/util/TreeSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/Float;

    move-object v5, v10

    check-cast v5, [Ljava/lang/Float;

    iget-object v10, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mYPosSet:Ljava/util/TreeSet;

    invoke-virtual {v10}, Ljava/util/TreeSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v10

    new-array v11, v13, [Ljava/lang/Float;

    invoke-interface {v10, v11}, Ljava/util/NavigableSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/Float;

    move-object v8, v10

    check-cast v8, [Ljava/lang/Float;

    goto/16 :goto_1

    :cond_6
    iget v10, p1, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    iget-object v11, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mCenterPosition:Lcom/htc/sunnyCore/view/Vector3F;

    iget v11, v11, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    cmpl-float v10, v10, v11

    if-lez v10, :cond_1

    iget v10, p1, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    iget-object v11, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mCenterPosition:Lcom/htc/sunnyCore/view/Vector3F;

    iget v11, v11, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    cmpl-float v10, v10, v11

    if-lez v10, :cond_1

    iget-object v10, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mXPosSet:Ljava/util/TreeSet;

    new-array v11, v13, [Ljava/lang/Float;

    invoke-virtual {v10, v11}, Ljava/util/TreeSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/Float;

    move-object v5, v10

    check-cast v5, [Ljava/lang/Float;

    iget-object v10, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mYPosSet:Ljava/util/TreeSet;

    new-array v11, v13, [Ljava/lang/Float;

    invoke-virtual {v10, v11}, Ljava/util/TreeSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/Float;

    move-object v8, v10

    check-cast v8, [Ljava/lang/Float;

    goto/16 :goto_1

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_4

    :cond_9
    return-void
.end method

.method private viewDisplacement(Lcom/htc/sunnyCore/view/Vector3F;Lcom/htc/sunnyCore/view/Vector3F;)I
    .locals 7

    const/4 v0, 0x0

    iget v5, p1, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    iget v6, p2, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v1, v5

    iget v5, p1, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    iget v6, p2, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    double-to-int v0, v5

    return v0
.end method


# virtual methods
.method public addSView(Lcom/htc/sunnyCore/view/SView;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mAllGridSViewList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addSView(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/htc/sunnyCore/view/SView;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mAllGridSViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mAllGridSViewList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public cancel()V
    .locals 3

    iget-object v2, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mAllGridSViewList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunnyCore/view/SView;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/view/SView;->cancelAnimation()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/Animation/ExpandingAnimation;->clear()V

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mGridItemsDistanceMap:Ljava/util/TreeMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mGridItemsDistanceMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mAllGridSViewList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mAllGridSViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    iget-object v0, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mXPosSet:Ljava/util/TreeSet;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mXPosSet:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    :cond_2
    iget-object v0, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mYPosSet:Ljava/util/TreeSet;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mYPosSet:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    :cond_3
    return-void
.end method

.method public fadeIn()V
    .locals 2

    iget-object v0, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mStartPosition:Lcom/htc/sunnyCore/view/Vector3F;

    if-nez v0, :cond_0

    const-string v0, "ExpandingAnimation"

    const-string v1, "fadeIn, mStartPosition is null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mStartPosition:Lcom/htc/sunnyCore/view/Vector3F;

    invoke-direct {p0, v0}, Lcom/htc/album/Animation/ExpandingAnimation;->expandGridView2(Lcom/htc/sunnyCore/view/Vector3F;)V

    goto :goto_0
.end method

.method public fadeOut()V
    .locals 2

    iget-object v0, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mStartPosition:Lcom/htc/sunnyCore/view/Vector3F;

    if-nez v0, :cond_0

    const-string v0, "ExpandingAnimation"

    const-string v1, "fadeOut, mStartPosition is null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mStartPosition:Lcom/htc/sunnyCore/view/Vector3F;

    invoke-direct {p0, v0}, Lcom/htc/album/Animation/ExpandingAnimation;->closeGridView2(Lcom/htc/sunnyCore/view/Vector3F;)V

    goto :goto_0
.end method

.method public getStartPosition()Lcom/htc/sunnyCore/view/Vector3F;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mStartPosition:Lcom/htc/sunnyCore/view/Vector3F;

    return-object v0
.end method

.method public onAnimationEnd()V
    .locals 2

    iget v0, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mAnimationEndCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mAnimationEndCount:I

    iget v0, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mAnimationEndCount:I

    iget-object v1, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mAllGridSViewList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mAnimationListener:Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mAnimationListener:Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;

    invoke-interface {v0}, Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;->onAnimationEnd()V

    :cond_0
    return-void
.end method

.method public onAnimationStart()V
    .locals 1

    iget v0, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mAnimationEndCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mAnimationListener:Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mAnimationListener:Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;

    invoke-interface {v0}, Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;->onAnimationStart()V

    :cond_0
    return-void
.end method

.method public setAnimationListener(Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mAnimationListener:Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;

    return-void
.end method

.method public setCenterPosition(Lcom/htc/sunnyCore/view/Vector3F;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mCenterPosition:Lcom/htc/sunnyCore/view/Vector3F;

    return-void
.end method

.method public setStartPosition(Lcom/htc/sunnyCore/view/Vector3F;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/Animation/ExpandingAnimation;->mStartPosition:Lcom/htc/sunnyCore/view/Vector3F;

    return-void
.end method
