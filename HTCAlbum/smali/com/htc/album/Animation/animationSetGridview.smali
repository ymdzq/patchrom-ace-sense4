.class public Lcom/htc/album/Animation/animationSetGridview;
.super Lcom/htc/sunny2/frameworks/animation/animationSetBase;
.source "animationSetGridview.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/sunny2/frameworks/animation/animationSetBase",
        "<",
        "Lcom/htc/sunnyCore/widget/gridview/GridView;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "animationSetGridview"


# instance fields
.field private mFocusIndex:I

.field private mFocusItem:Lcom/htc/sunnyCore/view/Vector3F;


# direct methods
.method public constructor <init>(Lcom/htc/sunnyCore/widget/gridview/GridView;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/htc/sunny2/frameworks/animation/animationSetBase;-><init>(Lcom/htc/sunnyCore/view/SView;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/Animation/animationSetGridview;->mFocusIndex:I

    new-instance v0, Lcom/htc/sunnyCore/view/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunnyCore/view/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/album/Animation/animationSetGridview;->mFocusItem:Lcom/htc/sunnyCore/view/Vector3F;

    return-void
.end method

.method private createAlphaAnimation(ILcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)Lcom/htc/sunnyCore/view/animation/SAnimationController;
    .locals 6

    const-wide/16 v4, 0x12c

    const/16 v3, 0xff

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget v1, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mAnimationState:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/htc/sunnyCore/view/animation/SAnimationController;

    invoke-direct {v0}, Lcom/htc/sunnyCore/view/animation/SAnimationController;-><init>()V

    invoke-virtual {v0, v4, v5}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setDuration(J)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setAlphaAnimation(II)V

    invoke-virtual {v0, p2}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setAnimationListener(Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)V

    sget-object v1, Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;->LINEAR:Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setInterpolator(Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/htc/sunnyCore/view/animation/SAnimationController;

    invoke-direct {v0}, Lcom/htc/sunnyCore/view/animation/SAnimationController;-><init>()V

    invoke-virtual {v0, v4, v5}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setDuration(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setFillAfter(Z)V

    invoke-virtual {v0, v3, v2}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setAlphaAnimation(II)V

    invoke-virtual {v0, p2}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setAnimationListener(Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)V

    sget-object v1, Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;->LINEAR:Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setInterpolator(Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getAnimationDuration()I
    .locals 1

    const/16 v0, 0x258

    return v0
.end method

.method public onAnimationEnd(I)V
    .locals 0

    return-void
.end method

.method public onCreateAnimation(I)Landroid/os/Bundle;
    .locals 5

    iput p1, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mAnimationState:I

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mBundle:Landroid/os/Bundle;

    if-nez v2, :cond_0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mBundle:Landroid/os/Bundle;

    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->clear()V

    iget v2, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mAnimationState:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mBundle:Landroid/os/Bundle;

    return-object v2

    :pswitch_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mBundle:Landroid/os/Bundle;

    const-string v3, "thumb_animation_click_index"

    iget v4, p0, Lcom/htc/album/Animation/animationSetGridview;->mFocusIndex:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mBundle:Landroid/os/Bundle;

    const-string v3, "thumb_animation_click_index"

    iget v4, p0, Lcom/htc/album/Animation/animationSetGridview;->mFocusIndex:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mBundle:Landroid/os/Bundle;

    const-string v3, "thumb_animation_click_index"

    iget v4, p0, Lcom/htc/album/Animation/animationSetGridview;->mFocusIndex:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mBundle:Landroid/os/Bundle;

    const-string v3, "thumb_animation_click_pos"

    iget-object v4, p0, Lcom/htc/album/Animation/animationSetGridview;->mFocusItem:Lcom/htc/sunnyCore/view/Vector3F;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mBundle:Landroid/os/Bundle;

    const-string v3, "thumb_animation_click_index"

    iget v4, p0, Lcom/htc/album/Animation/animationSetGridview;->mFocusIndex:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mBundle:Landroid/os/Bundle;

    const-string v3, "thumb_animation_click_pos"

    iget-object v4, p0, Lcom/htc/album/Animation/animationSetGridview;->mFocusItem:Lcom/htc/sunnyCore/view/Vector3F;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget v3, p0, Lcom/htc/album/Animation/animationSetGridview;->mFocusIndex:I

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v2, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v1, v3, v2

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mBundle:Landroid/os/Bundle;

    const-string v3, "GRID_VIEW_ITEM_INDEX"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v2, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getOnFullScreenTransitionEndListener()Lcom/htc/sunnyCore/widget/gridview/interfaces/ISceneAnimationEndIRTListener;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mBundle:Landroid/os/Bundle;

    const-string v3, "SCENE_ANIMATION_END_IRT_LISTENER"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPlayAnimation(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)V
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x1

    iget v2, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mAnimationState:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    if-nez p2, :cond_1

    :goto_1
    check-cast v1, Lcom/htc/sunnyCore/view/Vector3F;

    if-eqz p2, :cond_0

    if-nez v1, :cond_2

    :cond_0
    const-string v2, "animationSetGridview"

    const-string v3, "[HTCAlbum][animationSetGridview][onPlayAnimation]: createAlphaAnimation "

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v4, p3}, Lcom/htc/album/Animation/animationSetGridview;->createAlphaAnimation(ILcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)Lcom/htc/sunnyCore/view/animation/SAnimationController;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v2, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v2, v0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->startAnimation(Lcom/htc/sunnyCore/view/animation/SAnimationController;)V

    goto :goto_0

    :cond_1
    const-string v2, "folder_animation_click_pos"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v2, "animationSetGridview"

    const-string v3, "[HTCAlbum][animationSetGridview][onPlayAnimation]: MulltiViewExpandOutAnimation "

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/htc/album/Animation/MulltiViewExpandOutAnimation;

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v2, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-direct {v0, v2, v1}, Lcom/htc/album/Animation/MulltiViewExpandOutAnimation;-><init>(Lcom/htc/sunnyCore/widget/gridview/GridView;Lcom/htc/sunnyCore/view/Vector3F;)V

    invoke-virtual {v0, p3}, Lcom/htc/album/Animation/MulltiViewExpandOutAnimation;->setAnimationListener(Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)V

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v2, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v2, v0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->startAnimation(Lcom/htc/sunnyCore/view/animation/SAnimationController;)V

    goto :goto_0

    :pswitch_1
    if-nez p1, :cond_4

    :goto_2
    check-cast v1, Lcom/htc/sunnyCore/view/Vector3F;

    if-eqz p1, :cond_3

    if-nez v1, :cond_5

    :cond_3
    invoke-direct {p0, v4, p3}, Lcom/htc/album/Animation/animationSetGridview;->createAlphaAnimation(ILcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)Lcom/htc/sunnyCore/view/animation/SAnimationController;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v2, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v2, v0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->startAnimation(Lcom/htc/sunnyCore/view/animation/SAnimationController;)V

    goto :goto_0

    :cond_4
    const-string v2, "folder_animation_click_pos"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    goto :goto_2

    :cond_5
    new-instance v0, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v2, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-direct {v0, v2, v1}, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;-><init>(Lcom/htc/sunnyCore/widget/gridview/GridView;Lcom/htc/sunnyCore/view/Vector3F;)V

    invoke-virtual {v0, p3}, Lcom/htc/album/Animation/MultiViewCollapsedAnimation;->setAnimationListener(Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)V

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v2, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v2, v0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->startAnimation(Lcom/htc/sunnyCore/view/animation/SAnimationController;)V

    goto :goto_0

    :pswitch_2
    const/4 v2, 0x3

    invoke-direct {p0, v2, p3}, Lcom/htc/album/Animation/animationSetGridview;->createAlphaAnimation(ILcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)Lcom/htc/sunnyCore/view/animation/SAnimationController;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v2, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v2, v0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->startAnimation(Lcom/htc/sunnyCore/view/animation/SAnimationController;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, v4, p3}, Lcom/htc/album/Animation/animationSetGridview;->createAlphaAnimation(ILcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)Lcom/htc/sunnyCore/view/animation/SAnimationController;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v2, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v2, v0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->startAnimation(Lcom/htc/sunnyCore/view/animation/SAnimationController;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPrepareAnimation(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setFocused(ILcom/htc/sunnyCore/view/Vector3F;)V
    .locals 0

    iput p1, p0, Lcom/htc/album/Animation/animationSetGridview;->mFocusIndex:I

    iput-object p2, p0, Lcom/htc/album/Animation/animationSetGridview;->mFocusItem:Lcom/htc/sunnyCore/view/Vector3F;

    return-void
.end method
