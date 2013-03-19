.class public Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;
.super Lcom/htc/sunny2/SceneNode;
.source "SSurfaceView.java"

# interfaces
.implements Lcom/htc/sunny2/view/SViewParent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/view/SSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SViewRoot"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;,
        Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeInRunnable;
    }
.end annotation


# static fields
.field private static final COMMON_PRIVATE_CORNER_RES_ID:Ljava/lang/String; = "com.android.internal.R.drawable.zzz_common_panel_container_mask"


# instance fields
.field private mAlphaFadeInRunnable:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeInRunnable;

.field private mAlphaFadeOutRunnable:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;

.field private mBackgroundChanged:Z

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mBackgroundResource:I

.field private mBackgroundSprite:Lcom/htc/sunny2/Sprite;

.field private mBackgroundTexture:Lcom/htc/sunny2/Texture;

.field private mContextMenuForChild:Lcom/htc/sunny2/view/SView;

.field private mHight:I

.field private mOverlapRoundCornerBitmap:Landroid/graphics/Bitmap;

.field private mOverlapRoundCornerChanged:Z

.field private mOverlapRoundCornerRect:Landroid/graphics/Rect;

.field private mOverlapRoundCornerResource:I

.field private mOverlapRoundCornerSprite:Lcom/htc/sunny2/Sprite;

.field private mOverlapRoundCornerTexture:Lcom/htc/sunny2/Texture;

.field private mView:Landroid/view/View;

.field private mWidth:I

.field private final sSpriteDefaultPos:Lcom/htc/sunny2/view/Vector3F;

.field final synthetic this$0:Lcom/htc/sunny2/view/SSurfaceView;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/view/SSurfaceView;I)V
    .locals 4
    .parameter
    .parameter "nodeId"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 497
    iput-object p1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-direct {p0}, Lcom/htc/sunny2/SceneNode;-><init>()V

    .line 465
    new-instance v0, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunny2/view/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->sSpriteDefaultPos:Lcom/htc/sunny2/view/Vector3F;

    .line 468
    new-instance v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$1;

    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v1}, Lcom/htc/sunny2/view/SSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$1;-><init>(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mView:Landroid/view/View;

    .line 494
    new-instance v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;

    invoke-direct {v0, p0, v3}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;-><init>(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;Lcom/htc/sunny2/view/SSurfaceView$1;)V

    iput-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mAlphaFadeOutRunnable:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;

    .line 495
    new-instance v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeInRunnable;

    invoke-direct {v0, p0, v3}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeInRunnable;-><init>(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;Lcom/htc/sunny2/view/SSurfaceView$1;)V

    iput-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mAlphaFadeInRunnable:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeInRunnable;

    .line 498
    iget v0, p0, Lcom/htc/sunny2/SceneNode;->mNodeId:I

    if-eqz v0, :cond_0

    .line 499
    invoke-super {p0}, Lcom/htc/sunny2/SceneNode;->release()V

    .line 502
    :cond_0
    iput p2, p0, Lcom/htc/sunny2/SceneNode;->mNodeId:I

    .line 504
    iput-boolean v2, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundChanged:Z

    .line 505
    iput v2, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundResource:I

    .line 507
    iput-boolean v2, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerChanged:Z

    .line 508
    iput v2, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerResource:I

    .line 509
    iput-object v3, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerBitmap:Landroid/graphics/Bitmap;

    .line 510
    iput-object v3, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerRect:Landroid/graphics/Rect;

    .line 512
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->setRenderOrderMode(I)V

    .line 513
    return-void
.end method

.method static synthetic access$000(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;)Lcom/htc/sunny2/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 462
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mContextMenuForChild:Lcom/htc/sunny2/view/SView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 462
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mView:Landroid/view/View;

    return-object v0
.end method

.method private checkAndRenderOrderChanged()V
    .locals 8

    .prologue
    .line 530
    const/high16 v3, -0x8000

    .line 531
    .local v3, hOrder:I
    const/4 v4, 0x0

    .line 533
    .local v4, hView:Lcom/htc/sunny2/view/SView;
    invoke-virtual {p0}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->getChildrenCount()I

    move-result v2

    .line 534
    .local v2, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v2, :cond_1

    .line 535
    invoke-virtual {p0, v5}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->getChild(I)Lcom/htc/sunny2/SceneNode;

    move-result-object v0

    .line 536
    .local v0, childNode:Lcom/htc/sunny2/SceneNode;
    instance-of v7, v0, Lcom/htc/sunny2/view/SView;

    if-eqz v7, :cond_0

    move-object v1, v0

    .line 537
    check-cast v1, Lcom/htc/sunny2/view/SView;

    .line 538
    .local v1, childView:Lcom/htc/sunny2/view/SView;
    invoke-virtual {v1}, Lcom/htc/sunny2/view/SView;->getRenderOrder()I

    move-result v6

    .line 539
    .local v6, order:I
    if-lt v6, v3, :cond_0

    .line 540
    move-object v4, v1

    .line 541
    move v3, v6

    .line 534
    .end local v1           #childView:Lcom/htc/sunny2/view/SView;
    .end local v6           #order:I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 546
    .end local v0           #childNode:Lcom/htc/sunny2/SceneNode;
    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_4

    .line 547
    invoke-virtual {p0, v5}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->getChild(I)Lcom/htc/sunny2/SceneNode;

    move-result-object v0

    .line 548
    .restart local v0       #childNode:Lcom/htc/sunny2/SceneNode;
    instance-of v7, v0, Lcom/htc/sunny2/view/SView;

    if-eqz v7, :cond_2

    move-object v1, v0

    .line 549
    check-cast v1, Lcom/htc/sunny2/view/SView;

    .line 550
    .restart local v1       #childView:Lcom/htc/sunny2/view/SView;
    if-ne v1, v4, :cond_3

    .line 551
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lcom/htc/sunny2/view/SView;->dispatchRenderOrderChanged(Z)V

    .line 546
    .end local v1           #childView:Lcom/htc/sunny2/view/SView;
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 554
    .restart local v1       #childView:Lcom/htc/sunny2/view/SView;
    :cond_3
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lcom/htc/sunny2/view/SView;->dispatchRenderOrderChanged(Z)V

    goto :goto_2

    .line 558
    .end local v0           #childNode:Lcom/htc/sunny2/SceneNode;
    .end local v1           #childView:Lcom/htc/sunny2/view/SView;
    :cond_4
    return-void
.end method


# virtual methods
.method public addView(Lcom/htc/sunny2/view/SView;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 670
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->addSceneNode(Lcom/htc/sunny2/SceneNode;)V

    .line 671
    iget-object v0, p1, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    if-eq v0, p0, :cond_0

    .line 672
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reparent SView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "to parent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 674
    :cond_0
    invoke-virtual {p1, p0}, Lcom/htc/sunny2/view/SView;->setParent(Lcom/htc/sunny2/view/SViewParent;)V

    .line 676
    invoke-direct {p0}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->checkAndRenderOrderChanged()V

    .line 678
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/htc/sunny2/view/SView;->dispatchResourceCreation(Z)V

    .line 680
    invoke-virtual {p0}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->requestLayout()V

    .line 681
    return-void
.end method

.method public createContextMenu(Landroid/view/ContextMenu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 738
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 650
    iget-object v2, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v2, v2, Lcom/htc/sunny2/view/SSurfaceView;->mSceneDisplayControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v2, :cond_1

    .line 667
    :cond_0
    :goto_0
    return-void

    .line 656
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v2, v2, Lcom/htc/sunny2/view/SSurfaceView;->mSceneDisplayControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v1

    .line 657
    .local v1, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-eqz v1, :cond_0

    .line 659
    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getMainView()Lcom/htc/sunny2/view/SView;

    move-result-object v0

    .line 660
    .local v0, node:Lcom/htc/sunny2/SceneNode;
    if-eqz v0, :cond_0

    .line 662
    instance-of v2, v0, Lcom/htc/sunny2/view/SView;

    if-eqz v2, :cond_0

    .line 664
    check-cast v0, Lcom/htc/sunny2/view/SView;

    .end local v0           #node:Lcom/htc/sunny2/SceneNode;
    invoke-virtual {v0, p1}, Lcom/htc/sunny2/view/SView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 9
    .parameter "event"

    .prologue
    .line 610
    invoke-virtual {p0}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->getChildrenCount()I

    move-result v1

    .line 611
    .local v1, count:I
    const/4 v2, 0x0

    .line 612
    .local v2, hitSprite:I
    if-lez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_0

    .line 613
    iget-object v6, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    #getter for: Lcom/htc/sunny2/view/SSurfaceView;->mSunnyWindow:I
    invoke-static {v6}, Lcom/htc/sunny2/view/SSurfaceView;->access$300(Lcom/htc/sunny2/view/SSurfaceView;)I

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-static {v6, v7, v8}, Lcom/htc/sunny2/Sunny2;->Window_HitTest(III)I

    move-result v2

    .line 616
    :cond_0
    iget-object v6, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v6, v6, Lcom/htc/sunny2/view/SSurfaceView;->mSceneDisplayControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v6, :cond_2

    .line 619
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 620
    invoke-virtual {p0, v3}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->getChild(I)Lcom/htc/sunny2/SceneNode;

    move-result-object v0

    .line 621
    .local v0, childNode:Lcom/htc/sunny2/SceneNode;
    instance-of v6, v0, Lcom/htc/sunny2/view/SView;

    if-eqz v6, :cond_1

    .line 622
    check-cast v0, Lcom/htc/sunny2/view/SView;

    .end local v0           #childNode:Lcom/htc/sunny2/SceneNode;
    invoke-virtual {v0, p1, v2}, Lcom/htc/sunny2/view/SView;->dispatchTouchEvent(Landroid/view/MotionEvent;I)Z

    .line 619
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 628
    .end local v3           #i:I
    :cond_2
    iget-object v6, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v6, v6, Lcom/htc/sunny2/view/SSurfaceView;->mSceneDisplayControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v5

    .line 629
    .local v5, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-nez v5, :cond_4

    .line 643
    .end local v5           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    :cond_3
    :goto_1
    return-void

    .line 631
    .restart local v5       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    :cond_4
    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getMainView()Lcom/htc/sunny2/view/SView;

    move-result-object v4

    .line 632
    .local v4, node:Lcom/htc/sunny2/SceneNode;
    if-eqz v4, :cond_3

    .line 634
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_2
    if-ge v3, v1, :cond_3

    .line 635
    invoke-virtual {p0, v3}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->getChild(I)Lcom/htc/sunny2/SceneNode;

    move-result-object v0

    .line 636
    .restart local v0       #childNode:Lcom/htc/sunny2/SceneNode;
    if-eq v4, v0, :cond_5

    instance-of v6, v4, Lcom/htc/sunny2/view/SView;

    if-eqz v6, :cond_6

    .line 637
    :cond_5
    check-cast v4, Lcom/htc/sunny2/view/SView;

    .end local v4           #node:Lcom/htc/sunny2/SceneNode;
    invoke-virtual {v4, p1, v2}, Lcom/htc/sunny2/view/SView;->dispatchTouchEvent(Landroid/view/MotionEvent;I)Z

    goto :goto_1

    .line 634
    .restart local v4       #node:Lcom/htc/sunny2/SceneNode;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public enableOverlapRoundCorner(ILandroid/graphics/Rect;)V
    .locals 1
    .parameter "resourceId"
    .parameter "cornerRect"

    .prologue
    .line 955
    iget v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerResource:I

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerRect:Landroid/graphics/Rect;

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 965
    :cond_0
    :goto_0
    return-void

    .line 960
    :cond_1
    iput p1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerResource:I

    .line 961
    iput-object p2, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerRect:Landroid/graphics/Rect;

    .line 962
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerChanged:Z

    .line 964
    invoke-virtual {p0}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->requestLayout()V

    goto :goto_0
.end method

.method public getGlobalBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 742
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getRenderThread()Lcom/htc/sunny2/RenderThread;
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v0, v0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    return-object v0
.end method

.method public getSpritePosition(Lcom/htc/sunny2/Sprite;)Lcom/htc/sunny2/view/Vector3F;
    .locals 5
    .parameter "sprite"

    .prologue
    .line 582
    if-nez p1, :cond_1

    .line 583
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->sSpriteDefaultPos:Lcom/htc/sunny2/view/Vector3F;

    .line 593
    :cond_0
    :goto_0
    return-object v0

    .line 586
    :cond_1
    new-instance v0, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunny2/view/Vector3F;-><init>()V

    .line 587
    .local v0, pos:Lcom/htc/sunny2/view/Vector3F;
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    #getter for: Lcom/htc/sunny2/view/SSurfaceView;->mSunnyWindow:I
    invoke-static {v2}, Lcom/htc/sunny2/view/SSurfaceView;->access$300(Lcom/htc/sunny2/view/SSurfaceView;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    #getter for: Lcom/htc/sunny2/view/SSurfaceView;->mViewPort:I
    invoke-static {v3}, Lcom/htc/sunny2/view/SSurfaceView;->access$400(Lcom/htc/sunny2/view/SSurfaceView;)I

    move-result v3

    invoke-virtual {p1}, Lcom/htc/sunny2/Sprite;->getNodeId()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/htc/sunny2/Sunny2;->Window_QuerySceneNodeOriginPositionOnViewport(III)Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 588
    invoke-static {}, Lcom/htc/sunny2/Sunny2;->getOutputVectorX()F

    move-result v1

    iput v1, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    .line 589
    invoke-static {}, Lcom/htc/sunny2/Sunny2;->getOutputVectorY()F

    move-result v1

    iput v1, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    .line 590
    invoke-static {}, Lcom/htc/sunny2/Sunny2;->getOutputVectorZ()F

    move-result v1

    iput v1, v0, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    goto :goto_0
.end method

.method public hasWindowFocus()Z
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/SSurfaceView;->hasWindowFocus()Z

    move-result v0

    return v0
.end method

.method invalidateGlobalBackground(IIZ)V
    .locals 14
    .parameter "width"
    .parameter "height"
    .parameter "focusPresent"

    .prologue
    .line 777
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    iget v9, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mWidth:I

    if-eq p1, v9, :cond_0

    iget v9, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mHight:I

    move/from16 v0, p2

    if-eq v0, v9, :cond_0

    .line 778
    iput p1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mWidth:I

    .line 779
    move/from16 v0, p2

    iput v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mHight:I

    .line 780
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundChanged:Z

    .line 782
    iget-object v9, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    if-eqz v9, :cond_0

    .line 783
    iget-object v9, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    int-to-float v10, p1

    move/from16 v0, p2

    int-to-float v11, v0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/htc/sunny2/Sprite;->setupGeometry(FFFF)V

    .line 787
    :cond_0
    iget-boolean v9, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundChanged:Z

    if-eqz v9, :cond_1

    const/4 v9, 0x1

    if-lt p1, v9, :cond_1

    const/4 v9, 0x1

    move/from16 v0, p2

    if-ge v0, v9, :cond_2

    .line 872
    :cond_1
    :goto_0
    return-void

    .line 791
    :cond_2
    sget-boolean v9, Lcom/htc/sunny2/common/Constants;->DEBUG:Z

    if-eqz v9, :cond_3

    const-string v9, "SSurfaceView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "invalidateGlobalBackground focusPresent="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    :cond_3
    iget-object v9, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v9, :cond_6

    .line 794
    iget-object v9, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    if-eqz v9, :cond_4

    .line 795
    iget-object v9, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mAlphaFadeInRunnable:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeInRunnable;

    invoke-virtual {v9}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeInRunnable;->stop()V

    .line 796
    iget-object v9, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mAlphaFadeOutRunnable:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;

    invoke-virtual {v9}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;->stop()V

    .line 797
    if-nez p3, :cond_5

    .line 798
    iget-object v9, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mAlphaFadeOutRunnable:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-object v12, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v9, v10, v11, v12}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;->start(JLcom/htc/sunny2/Sprite;)V

    .line 871
    :cond_4
    :goto_1
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundChanged:Z

    goto :goto_0

    .line 801
    :cond_5
    iget-object v9, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/sunny2/Sprite;->setVisibility(Z)V

    goto :goto_1

    .line 806
    :cond_6
    iget-object v9, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    if-nez v9, :cond_7

    .line 807
    invoke-static {}, Lcom/htc/sunny2/Sprite;->obtain()Lcom/htc/sunny2/Sprite;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    .line 808
    iget-object v9, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {p0, v9}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->addSprite(Lcom/htc/sunny2/Sprite;)V

    .line 809
    iget-object v9, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    const/16 v10, -0x64

    invoke-virtual {v9, v10}, Lcom/htc/sunny2/Sprite;->setRenderOrder(I)V

    .line 811
    :cond_7
    iget-object v9, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    const/high16 v10, 0x3f80

    const/high16 v11, 0x3f80

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/htc/sunny2/Sprite;->setupGeometry(FFFF)V

    .line 813
    const/4 v8, 0x0

    .line 814
    .local v8, sBmpBkg:Lcom/htc/sunny2/SBitmap;
    iget-object v9, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v9, v9, Lcom/htc/sunny2/view/SSurfaceView$Global3DBitmapDrawable;

    if-eqz v9, :cond_b

    .line 815
    iget-object v9, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v9, Lcom/htc/sunny2/view/SSurfaceView$Global3DBitmapDrawable;

    invoke-virtual {v9}, Lcom/htc/sunny2/view/SSurfaceView$Global3DBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 816
    .local v1, bmp:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/htc/sunny2/SBitmap;->createBitmap(Landroid/graphics/Bitmap;)Lcom/htc/sunny2/SBitmap;

    move-result-object v8

    .line 817
    iget-object v9, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v9, Lcom/htc/sunny2/view/SSurfaceView$Global3DBitmapDrawable;

    iget v9, v9, Lcom/htc/sunny2/view/SSurfaceView$Global3DBitmapDrawable;->mBitmapSrcWidth:I

    int-to-float v3, v9

    .line 818
    .local v3, bmpWidth:F
    iget-object v9, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v9, Lcom/htc/sunny2/view/SSurfaceView$Global3DBitmapDrawable;

    iget v9, v9, Lcom/htc/sunny2/view/SSurfaceView$Global3DBitmapDrawable;->mBitmapSrcHeight:I

    int-to-float v2, v9

    .line 820
    .local v2, bmpHeight:F
    const/4 v5, 0x0

    .line 821
    .local v5, fitScreenW:F
    const/4 v4, 0x0

    .line 823
    .local v4, fitScreenH:F
    int-to-float v9, p1

    cmpl-float v9, v3, v9

    if-gez v9, :cond_8

    move/from16 v0, p2

    int-to-float v9, v0

    cmpl-float v9, v2, v9

    if-ltz v9, :cond_a

    .line 825
    :cond_8
    div-float v7, v2, v3

    .line 826
    .local v7, imageAspect:F
    move/from16 v0, p2

    int-to-float v9, v0

    int-to-float v10, p1

    div-float v6, v9, v10

    .line 828
    .local v6, frameAspect:F
    cmpl-float v9, v7, v6

    if-ltz v9, :cond_9

    .line 830
    move/from16 v0, p2

    int-to-float v4, v0

    .line 831
    move/from16 v0, p2

    int-to-float v9, v0

    div-float v5, v9, v7

    .line 846
    .end local v6           #frameAspect:F
    .end local v7           #imageAspect:F
    :goto_2
    iget-object v9, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    const/high16 v10, 0x3f80

    invoke-virtual {v9, v5, v4, v10}, Lcom/htc/sunny2/Sprite;->setScale(FFF)V

    .line 853
    .end local v1           #bmp:Landroid/graphics/Bitmap;
    .end local v2           #bmpHeight:F
    .end local v3           #bmpWidth:F
    .end local v4           #fitScreenH:F
    .end local v5           #fitScreenW:F
    :goto_3
    iget-object v9, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundTexture:Lcom/htc/sunny2/Texture;

    if-nez v9, :cond_c

    .line 854
    invoke-static {v8}, Lcom/htc/sunny2/Texture;->createTexture(Lcom/htc/sunny2/SBitmap;)Lcom/htc/sunny2/Texture;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundTexture:Lcom/htc/sunny2/Texture;

    .line 855
    iget-object v9, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    iget-object v10, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v9, v10}, Lcom/htc/sunny2/Sprite;->setTexture(Lcom/htc/sunny2/Texture;)V

    .line 861
    :goto_4
    iget-object v9, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mAlphaFadeOutRunnable:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;

    invoke-virtual {v9}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;->stop()V

    .line 862
    iget-object v9, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mAlphaFadeInRunnable:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeInRunnable;

    invoke-virtual {v9}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeInRunnable;->stop()V

    .line 863
    if-nez p3, :cond_d

    .line 864
    iget-object v9, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mAlphaFadeInRunnable:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeInRunnable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-object v12, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v9, v10, v11, v12}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFadeInRunnable;->start(JLcom/htc/sunny2/Sprite;)V

    goto/16 :goto_1

    .line 835
    .restart local v1       #bmp:Landroid/graphics/Bitmap;
    .restart local v2       #bmpHeight:F
    .restart local v3       #bmpWidth:F
    .restart local v4       #fitScreenH:F
    .restart local v5       #fitScreenW:F
    .restart local v6       #frameAspect:F
    .restart local v7       #imageAspect:F
    :cond_9
    int-to-float v5, p1

    .line 836
    int-to-float v9, p1

    mul-float v4, v9, v7

    goto :goto_2

    .line 842
    .end local v6           #frameAspect:F
    .end local v7           #imageAspect:F
    :cond_a
    move v5, v3

    .line 843
    move v4, v2

    goto :goto_2

    .line 849
    .end local v1           #bmp:Landroid/graphics/Bitmap;
    .end local v2           #bmpHeight:F
    .end local v3           #bmpWidth:F
    .end local v4           #fitScreenH:F
    .end local v5           #fitScreenW:F
    :cond_b
    iget-object v9, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    move/from16 v0, p2

    invoke-static {v9, p1, v0}, Lcom/htc/sunny2/SBitmap;->createBitmap(Landroid/graphics/drawable/Drawable;II)Lcom/htc/sunny2/SBitmap;

    move-result-object v8

    .line 850
    iget-object v9, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    int-to-float v10, p1

    move/from16 v0, p2

    int-to-float v11, v0

    const/high16 v12, 0x3f80

    invoke-virtual {v9, v10, v11, v12}, Lcom/htc/sunny2/Sprite;->setScale(FFF)V

    goto :goto_3

    .line 858
    :cond_c
    iget-object v9, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v9, v8}, Lcom/htc/sunny2/Texture;->setSBitmap(Lcom/htc/sunny2/SBitmap;)V

    goto :goto_4

    .line 867
    :cond_d
    iget-object v9, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/htc/sunny2/Sprite;->setVisibility(Z)V

    goto/16 :goto_1
.end method

.method invalidateOverlapRoundCorner(II)V
    .locals 18
    .parameter "width"
    .parameter "height"

    .prologue
    .line 875
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mWidth:I

    move/from16 v0, p1

    if-eq v0, v13, :cond_0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mHight:I

    move/from16 v0, p2

    if-eq v0, v13, :cond_0

    .line 876
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mWidth:I

    .line 877
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mHight:I

    .line 878
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerChanged:Z

    .line 880
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerSprite:Lcom/htc/sunny2/Sprite;

    if-eqz v13, :cond_0

    .line 881
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerSprite:Lcom/htc/sunny2/Sprite;

    move/from16 v0, p1

    int-to-float v14, v0

    move/from16 v0, p2

    int-to-float v15, v0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v17}, Lcom/htc/sunny2/Sprite;->setupGeometry(FFFF)V

    .line 885
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerChanged:Z

    if-eqz v13, :cond_1

    const/4 v13, 0x1

    move/from16 v0, p1

    if-lt v0, v13, :cond_1

    const/4 v13, 0x1

    move/from16 v0, p2

    if-ge v0, v13, :cond_2

    .line 952
    :cond_1
    :goto_0
    return-void

    .line 889
    :cond_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerResource:I

    if-nez v13, :cond_4

    .line 890
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerSprite:Lcom/htc/sunny2/Sprite;

    if-eqz v13, :cond_3

    .line 893
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerSprite:Lcom/htc/sunny2/Sprite;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/htc/sunny2/Sprite;->setVisibility(Z)V

    .line 951
    :cond_3
    :goto_1
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerChanged:Z

    goto :goto_0

    .line 897
    :cond_4
    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 898
    .local v2, bitmap:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 900
    .local v3, canvas:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerRect:Landroid/graphics/Rect;

    .line 901
    .local v5, extraPadding:Landroid/graphics/Rect;
    iget v8, v5, Landroid/graphics/Rect;->left:I

    .line 902
    .local v8, pLeft:I
    iget v9, v5, Landroid/graphics/Rect;->right:I

    .line 903
    .local v9, pRiget:I
    iget v10, v5, Landroid/graphics/Rect;->top:I

    .line 904
    .local v10, pTop:I
    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    .line 906
    .local v7, pBottom:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v13}, Lcom/htc/sunny2/view/SSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 907
    .local v11, res:Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerResource:I

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 908
    .local v4, drawable:Landroid/graphics/drawable/Drawable;
    const/4 v13, 0x0

    sub-int v14, p2, v7

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v4, v13, v14, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 909
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 910
    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v0, p2

    invoke-virtual {v4, v13, v14, v8, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 911
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 912
    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v0, p1

    invoke-virtual {v4, v13, v14, v0, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 913
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 914
    sub-int v13, p1, v9

    const/4 v14, 0x0

    sub-int v15, p2, v7

    move/from16 v0, p1

    invoke-virtual {v4, v13, v14, v0, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 915
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 917
    const-string v13, "com.android.internal.R.drawable.zzz_common_panel_container_mask"

    invoke-static {v13}, Lcom/htc/util/res/HtcResUtil;->getPrivateResID(Ljava/lang/String;)I

    move-result v12

    .line 918
    .local v12, resId:I
    if-nez v12, :cond_6

    .line 919
    const-string v13, "SSurfaceView"

    const-string v14, "[invalidateOverlapRoundCorner] get common resource fail: com.android.internal.R.drawable.zzz_common_panel_container_mask"

    new-instance v15, Ljava/lang/Exception;

    const-string v16, ""

    invoke-direct/range {v15 .. v16}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v13, v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 927
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerTexture:Lcom/htc/sunny2/Texture;

    if-nez v13, :cond_7

    .line 928
    invoke-static {v2}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/graphics/Bitmap;)Lcom/htc/sunny2/Texture;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerTexture:Lcom/htc/sunny2/Texture;

    .line 934
    :goto_3
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 936
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerSprite:Lcom/htc/sunny2/Sprite;

    if-nez v13, :cond_5

    .line 937
    invoke-static {}, Lcom/htc/sunny2/Sprite;->obtain()Lcom/htc/sunny2/Sprite;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerSprite:Lcom/htc/sunny2/Sprite;

    .line 938
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerSprite:Lcom/htc/sunny2/Sprite;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->addSprite(Lcom/htc/sunny2/Sprite;)V

    .line 940
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerSprite:Lcom/htc/sunny2/Sprite;

    move/from16 v0, p1

    int-to-float v14, v0

    move/from16 v0, p2

    int-to-float v15, v0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v17}, Lcom/htc/sunny2/Sprite;->setupGeometry(FFFF)V

    .line 941
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerSprite:Lcom/htc/sunny2/Sprite;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v13, v14}, Lcom/htc/sunny2/Sprite;->setTexture(Lcom/htc/sunny2/Texture;)V

    .line 943
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerSprite:Lcom/htc/sunny2/Sprite;

    const/16 v14, 0x64

    invoke-virtual {v13, v14}, Lcom/htc/sunny2/Sprite;->setRenderOrder(I)V

    .line 948
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerSprite:Lcom/htc/sunny2/Sprite;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/htc/sunny2/Sprite;->setVisibility(Z)V

    goto/16 :goto_1

    .line 922
    :cond_6
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 923
    .local v6, maskDrawable:Landroid/graphics/drawable/Drawable;
    sub-int v13, p1, v9

    sub-int v14, p2, v7

    invoke-virtual {v6, v8, v10, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 924
    invoke-virtual {v6, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 931
    .end local v6           #maskDrawable:Landroid/graphics/drawable/Drawable;
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v13, v2}, Lcom/htc/sunny2/Texture;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_3
.end method

.method public isBindedSurface()Z
    .locals 1

    .prologue
    .line 605
    const/4 v0, 0x1

    return v0
.end method

.method public performHapticFeedback(I)Z
    .locals 2
    .parameter "feedbackConstant"

    .prologue
    .line 704
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/SSurfaceView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$3;

    invoke-direct {v1, p0, p1}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$3;-><init>(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 709
    const/4 v0, 0x1

    return v0
.end method

.method public performHapticFeedback(II)Z
    .locals 2
    .parameter "feedbackConstant"
    .parameter "flags"

    .prologue
    .line 713
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/SSurfaceView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$4;-><init>(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 719
    const/4 v0, 0x1

    return v0
.end method

.method public playSoundEffect(I)V
    .locals 2
    .parameter "soundConstant"

    .prologue
    .line 696
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/SSurfaceView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$2;

    invoke-direct {v1, p0, p1}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$2;-><init>(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 701
    return-void
.end method

.method public refreshRenderOrder(Ljava/lang/Object;)V
    .locals 4
    .parameter "object"

    .prologue
    .line 562
    iget-object v3, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v3, v3, Lcom/htc/sunny2/view/SSurfaceView;->mSceneDisplayControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v3, :cond_1

    .line 564
    const/4 v1, 0x0

    .local v1, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;,"Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene<*>;"
    move-object v2, p1

    .line 565
    check-cast v2, Ljava/lang/String;

    .line 566
    .local v2, szIdentity:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 567
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v3, v3, Lcom/htc/sunny2/view/SSurfaceView;->mSceneDisplayControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v1

    .line 571
    :goto_0
    if-eqz v1, :cond_1

    .line 573
    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getMainView()Lcom/htc/sunny2/view/SView;

    move-result-object v0

    .line 574
    .local v0, node:Lcom/htc/sunny2/SceneNode;
    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getEnvironmentRenderOrder()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/view/SView;->setRenderOrder(I)V

    .line 578
    .end local v0           #node:Lcom/htc/sunny2/SceneNode;
    .end local v1           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;,"Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene<*>;"
    .end local v2           #szIdentity:Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->checkAndRenderOrderChanged()V

    .line 579
    return-void

    .line 569
    .restart local v1       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;,"Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene<*>;"
    .restart local v2       #szIdentity:Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v3, v3, Lcom/htc/sunny2/view/SSurfaceView;->mSceneDisplayControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->getScene(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v1

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 516
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/SceneNode;->mNodeId:I

    .line 518
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundTexture:Lcom/htc/sunny2/Texture;

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->release()V

    .line 520
    iput-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundTexture:Lcom/htc/sunny2/Texture;

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    if-eqz v0, :cond_1

    .line 524
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0}, Lcom/htc/sunny2/Sprite;->release()V

    .line 525
    iput-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    .line 527
    :cond_1
    return-void
.end method

.method public removeView(Lcom/htc/sunny2/view/SView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 684
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/htc/sunny2/view/SView;->setParent(Lcom/htc/sunny2/view/SViewParent;)V

    .line 685
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->removeSceneNode(Lcom/htc/sunny2/SceneNode;)V

    .line 686
    invoke-direct {p0}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->checkAndRenderOrderChanged()V

    .line 688
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/htc/sunny2/view/SView;->dispatchResourceCreation(Z)V

    .line 689
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    #getter for: Lcom/htc/sunny2/view/SSurfaceView;->mReLayout:Lcom/htc/sunny2/view/SSurfaceView$ReLayout;
    invoke-static {v0}, Lcom/htc/sunny2/view/SSurfaceView;->access$500(Lcom/htc/sunny2/view/SSurfaceView;)Lcom/htc/sunny2/view/SSurfaceView$ReLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;->requestLayout()V

    .line 598
    return-void
.end method

.method public setGlobalBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "drawable"

    .prologue
    .line 762
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v0, p1, :cond_0

    .line 774
    :goto_0
    return-void

    .line 766
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundResource:I

    .line 768
    iput-object p1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 769
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundChanged:Z

    .line 771
    sget-boolean v0, Lcom/htc/sunny2/common/Constants;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "SSurfaceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setGlobalBackgroundDrawable drawable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->requestLayout()V

    goto :goto_0
.end method

.method public setGlobalBackgroundResource(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 747
    if-eqz p1, :cond_0

    iget v1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundResource:I

    if-ne p1, v1, :cond_0

    .line 758
    :goto_0
    return-void

    .line 751
    :cond_0
    const/4 v0, 0x0

    .line 752
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_1

    .line 753
    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v1}, Lcom/htc/sunny2/view/SSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 755
    :cond_1
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->setGlobalBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 757
    iput p1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundResource:I

    goto :goto_0
.end method

.method public showContextMenuForChild(Lcom/htc/sunny2/view/SView;)Z
    .locals 2
    .parameter "originalView"

    .prologue
    .line 723
    iput-object p1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mContextMenuForChild:Lcom/htc/sunny2/view/SView;

    .line 726
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/SSurfaceView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$5;

    invoke-direct {v1, p0}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$5;-><init>(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 734
    const/4 v0, 0x1

    return v0
.end method
