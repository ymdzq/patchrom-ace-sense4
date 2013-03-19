.class public Lcom/htc/album/addons/slideshow/AnimationManager;
.super Ljava/lang/Object;
.source "AnimationManager.java"


# static fields
.field public static ANIMATION_TRANSITION_DEFAULT:I

.field public static ANIMATION_TRANSITION_RANDOMIZED:I

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mAnimIn:[I

.field private mAnimOut:[I

.field private mAnimSets:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimSize:I

.field private mAnimTransition:I

.field private mAnimTransitionCurrent:I

.field private mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/album/addons/slideshow/AnimationManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/addons/slideshow/AnimationManager;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/htc/album/addons/slideshow/AnimationManager;->ANIMATION_TRANSITION_DEFAULT:I

    const/4 v0, -0x1

    sput v0, Lcom/htc/album/addons/slideshow/AnimationManager;->ANIMATION_TRANSITION_RANDOMIZED:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/htc/album/addons/slideshow/AnimationManager;->ANIMATION_TRANSITION_DEFAULT:I

    iput v0, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mAnimTransition:I

    sget v0, Lcom/htc/album/addons/slideshow/AnimationManager;->ANIMATION_TRANSITION_DEFAULT:I

    iput v0, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mAnimTransitionCurrent:I

    invoke-static {}, Lcom/htc/album/Customizable/CustAnimationSet;->getAnimationIn()[I

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mAnimIn:[I

    invoke-static {}, Lcom/htc/album/Customizable/CustAnimationSet;->getAnimationOut()[I

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mAnimOut:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mAnimSize:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mAnimSets:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    return-void
.end method

.method private getAnimationTransition()I
    .locals 4

    sget v1, Lcom/htc/album/addons/slideshow/AnimationManager;->ANIMATION_TRANSITION_RANDOMIZED:I

    iget v2, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mAnimTransition:I

    if-ne v1, v2, :cond_1

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iget v1, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mAnimSize:I

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iput v1, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mAnimTransitionCurrent:I

    :goto_0
    iget v1, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mAnimTransitionCurrent:I

    const/4 v2, 0x7

    if-lt v1, v2, :cond_0

    sget v1, Lcom/htc/album/addons/slideshow/AnimationManager;->ANIMATION_TRANSITION_DEFAULT:I

    iput v1, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mAnimTransitionCurrent:I

    const-string v1, "HTCAlbum"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][AnimationManager][getAnimationTransition]: CurTransistion("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mAnimTransitionCurrent:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") sholdn\'t in 2D Slideshow."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget v1, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mAnimTransitionCurrent:I

    return v1

    :cond_1
    iget v1, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mAnimTransition:I

    iput v1, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mAnimTransitionCurrent:I

    goto :goto_0
.end method


# virtual methods
.method public getAnimationIn()Landroid/view/animation/Animation;
    .locals 3

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mAnimSets:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mAnimIn:[I

    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/AnimationManager;->getAnimationTransition()I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    return-object v0
.end method

.method public getAnimationInReversed()Landroid/view/animation/Animation;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mAnimIn:[I

    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/AnimationManager;->getAnimationTransition()I

    move-result v2

    aget v1, v1, v2

    sparse-switch v1, :sswitch_data_0

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/AnimationManager;->getAnimationIn()Landroid/view/animation/Animation;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mAnimSets:Landroid/util/SparseArray;

    const v2, 0x7f040012

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mAnimSets:Landroid/util/SparseArray;

    const v2, 0x7f04000e

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f04000f -> :sswitch_1
        0x7f040013 -> :sswitch_0
    .end sparse-switch
.end method

.method public getAnimationIndex()I
    .locals 1

    iget v0, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mAnimTransition:I

    return v0
.end method

.method public getAnimationOut()Landroid/view/animation/Animation;
    .locals 3

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mAnimSets:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mAnimOut:[I

    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/AnimationManager;->getAnimationTransition()I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    return-object v0
.end method

.method public getAnimationOutReversed()Landroid/view/animation/Animation;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mAnimIn:[I

    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/AnimationManager;->getAnimationTransition()I

    move-result v2

    aget v1, v1, v2

    sparse-switch v1, :sswitch_data_0

    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/AnimationManager;->getAnimationOut()Landroid/view/animation/Animation;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mAnimSets:Landroid/util/SparseArray;

    const v2, 0x7f040016

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mAnimSets:Landroid/util/SparseArray;

    const v2, 0x7f040010

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f04000f -> :sswitch_1
        0x7f040013 -> :sswitch_0
    .end sparse-switch
.end method

.method public initAnimations(Landroid/content/Context;Lcom/htc/album/addons/slideshow/SlideshowSetingManager;)V
    .locals 4

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/htc/album/addons/slideshow/AnimationManager;->syncPreferenceAnimSettings(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mAnimSets:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mAnimIn:[I

    array-length v1, v1

    iput v1, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mAnimSize:I

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mAnimSize:I

    if-le v1, v0, :cond_1

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mAnimSets:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mAnimIn:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mAnimIn:[I

    aget v3, v3, v0

    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mAnimSets:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mAnimOut:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mAnimOut:[I

    aget v3, v3, v0

    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    const-string v1, "HTCAlbum"

    const-string v2, "[HTCAlbum][AnimationManager][initAnimations]: mSettingMgr shouldn\'t null !!!"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public isRandomized()Z
    .locals 2

    sget v0, Lcom/htc/album/addons/slideshow/AnimationManager;->ANIMATION_TRANSITION_RANDOMIZED:I

    iget v1, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mAnimTransition:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public syncPreferenceAnimSettings(Landroid/content/Context;)V
    .locals 4

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v2, "slide_show_transition_setting"

    sget v3, Lcom/htc/album/addons/slideshow/AnimationManager;->ANIMATION_TRANSITION_DEFAULT:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mAnimTransition:I

    return-void
.end method
