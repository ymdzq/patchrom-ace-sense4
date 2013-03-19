.class public Lcom/htc/sunny2/slideshow/SlideshowScene;
.super Ljava/lang/Object;
.source "SlideshowScene.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/slideshow/SlideshowScene$SlidesListener;
    }
.end annotation


# instance fields
.field private final LTAG:Ljava/lang/String;

.field private final SPRITES_COUNT:I

.field private renderThread:Lcom/htc/sunnyCore/RenderThread;

.field private spriteIndexToUse:I

.field private spriteRenderOrder:I

.field private sunnyEnv:I

.field private sunnySprites:[I

.field private viewRootNode:I


# direct methods
.method public constructor <init>()V
    .locals 4

    const/16 v3, 0x9

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "SlideshowScene"

    iput-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->LTAG:Ljava/lang/String;

    iput v3, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->SPRITES_COUNT:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    iput v2, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->sunnyEnv:I

    iput v2, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->viewRootNode:I

    new-array v1, v3, [I

    iput-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->sunnySprites:[I

    iput v2, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->spriteIndexToUse:I

    iput v2, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->spriteRenderOrder:I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->sunnySprites:[I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private obtainASunnySprite()I
    .locals 3

    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->sunnySprites:[I

    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->spriteIndexToUse:I

    aget v0, v1, v2

    iget v1, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->spriteIndexToUse:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->spriteIndexToUse:I

    iget v1, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->spriteIndexToUse:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->spriteIndexToUse:I

    :cond_0
    invoke-static {v0}, Lcom/htc/sunnyCore/SunnyCore;->SceneNode_GetVisible(I)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v1, "SlideshowScene"

    const-string v2, "obtainASunnySprite() Error - sprite is still in use !"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget v1, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->spriteRenderOrder:I

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/SunnyCore;->SceneNode_SetRenderOrder(II)V

    iget v1, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->spriteRenderOrder:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->spriteRenderOrder:I

    return v0
.end method


# virtual methods
.method public animateSlide(Lcom/htc/sunny2/slideshow/SlideAnimator;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v3, "SlideshowScene"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "animateSlide "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    if-nez v3, :cond_0

    const-string v2, "SlideshowScene"

    const-string v3, "animateSlide() NG - null render thread"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    if-nez p1, :cond_1

    const-string v2, "SlideshowScene"

    const-string v3, "animateSlide() NG - null animator"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/htc/sunny2/slideshow/SlideshowScene;->obtainASunnySprite()I

    move-result v0

    invoke-virtual {p1, p0, v0}, Lcom/htc/sunny2/slideshow/SlideAnimator;->onAddedToScene(Lcom/htc/sunny2/slideshow/SlideshowScene;I)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v2, "SlideshowScene"

    const-string v3, "animateSlide() NG - onAddedToScene"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {v0, v2}, Lcom/htc/sunnyCore/SunnyCore;->SceneNode_SetVisible(IZ)V

    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-virtual {v1, p1}, Lcom/htc/sunnyCore/RenderThread;->pushActionIRT(Lcom/htc/sunnyCore/RenderThreadAction;)Z

    move v1, v2

    goto :goto_0
.end method

.method public deinit()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->sunnySprites:[I

    aget v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->sunnySprites:[I

    aget v1, v1, v0

    invoke-static {v1}, Lcom/htc/sunnyCore/SunnyCore;->DestroySprite(I)V

    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->sunnySprites:[I

    aput v2, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->viewRootNode:I

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->viewRootNode:I

    invoke-static {v1}, Lcom/htc/sunnyCore/SunnyCore;->DestroySceneNode(I)V

    iput v2, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->viewRootNode:I

    :cond_2
    iput v2, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->spriteIndexToUse:I

    iput v2, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->spriteRenderOrder:I

    iput v2, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->sunnyEnv:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    return-void
.end method

.method public init(Lcom/htc/sunnyCore/RenderThread;II)Z
    .locals 9

    const/high16 v2, 0x3f80

    const/4 v8, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const-string v0, "SlideshowScene"

    const-string v2, "init() NG - zero parameter"

    invoke-static {v0, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideshowScene;->deinit()V

    iput-object p1, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    iput p2, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->sunnyEnv:I

    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->sunnyEnv:I

    invoke-static {v0}, Lcom/htc/sunnyCore/SunnyCore;->CreateSceneNode(I)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->viewRootNode:I

    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->viewRootNode:I

    if-nez v0, :cond_2

    const-string v0, "SlideshowScene"

    const-string v2, "init() NG - create view root node"

    invoke-static {v0, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideshowScene;->deinit()V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->viewRootNode:I

    invoke-static {p3, v0}, Lcom/htc/sunnyCore/SunnyCore;->SceneNode_AddChild(II)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "SlideshowScene"

    const-string v2, "init() NG - add view root node"

    invoke-static {v0, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideshowScene;->deinit()V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->viewRootNode:I

    invoke-static {v0, v8}, Lcom/htc/sunnyCore/SunnyCore;->SceneNode_SetChildrenRenderOrderMode(II)V

    const/4 v7, 0x0

    :goto_1
    const/16 v0, 0x9

    if-ge v7, v0, :cond_6

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->sunnySprites:[I

    iget v3, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->sunnyEnv:I

    invoke-static {v3, v8}, Lcom/htc/sunnyCore/SunnyCore;->CreateSprite(II)I

    move-result v3

    aput v3, v0, v7

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->sunnySprites:[I

    aget v0, v0, v7

    if-nez v0, :cond_4

    const-string v0, "SlideshowScene"

    const-string v2, "init() NG - create sprite"

    invoke-static {v0, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideshowScene;->deinit()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->sunnySprites:[I

    aget v0, v0, v7

    move v3, v2

    move v5, v4

    move v6, v4

    invoke-static/range {v0 .. v6}, Lcom/htc/sunnyCore/SunnyCore;->Sprite_SetupGeometry(IIFFFFF)V

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->sunnySprites:[I

    aget v0, v0, v7

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/SunnyCore;->SceneNode_SetVisible(IZ)V

    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->viewRootNode:I

    iget-object v3, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->sunnySprites:[I

    aget v3, v3, v7

    invoke-static {v0, v3}, Lcom/htc/sunnyCore/SunnyCore;->SceneNode_AddChild(II)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "SlideshowScene"

    const-string v2, "init() NG - add scene node to parent"

    invoke-static {v0, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideshowScene;->deinit()V

    goto :goto_0

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_6
    iput v1, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->spriteIndexToUse:I

    move v1, v8

    goto/16 :goto_0
.end method

.method onSlideFinish(Lcom/htc/sunny2/slideshow/SlideAnimator;Z)V
    .locals 4

    const-string v1, "SlideshowScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSlideFinish "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/htc/sunny2/slideshow/SlideAnimator;->getSprite()I

    move-result v0

    if-nez v0, :cond_0

    const-string v1, "SlideshowScene"

    const-string v2, "onSlideFinish NG - null sprite"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-nez p2, :cond_1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/SunnyCore;->SceneNode_SetVisible(IZ)V

    :cond_1
    if-nez p2, :cond_2

    invoke-virtual {p1}, Lcom/htc/sunny2/slideshow/SlideAnimator;->onRemovedFromScene()V

    :cond_2
    invoke-virtual {p1}, Lcom/htc/sunny2/slideshow/SlideAnimator;->deinit()V

    invoke-virtual {p1}, Lcom/htc/sunny2/slideshow/SlideAnimator;->recycle()V

    return-void
.end method
