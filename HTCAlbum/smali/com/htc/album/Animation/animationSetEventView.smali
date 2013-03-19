.class public Lcom/htc/album/Animation/animationSetEventView;
.super Lcom/htc/album/Animation/animationSetFolderGridview;
.source "animationSetEventView.java"


# instance fields
.field private mFocusIndex:I

.field private mFocusItem:Lcom/htc/sunnyCore/view/Vector3F;


# direct methods
.method public constructor <init>(Lcom/htc/sunnyCore/widget/gridview/GridView;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/htc/album/Animation/animationSetFolderGridview;-><init>(Lcom/htc/sunnyCore/widget/gridview/GridView;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/Animation/animationSetEventView;->mFocusIndex:I

    new-instance v0, Lcom/htc/sunnyCore/view/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunnyCore/view/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/album/Animation/animationSetEventView;->mFocusItem:Lcom/htc/sunnyCore/view/Vector3F;

    return-void
.end method


# virtual methods
.method protected onPlayAnimPopOut(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)V
    .locals 3

    new-instance v0, Lcom/htc/album/Animation/FadeOutAndExpandOutAnimation;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v2, p0, Lcom/htc/album/Animation/animationSetEventView;->mFocusIndex:I

    invoke-direct {v0, v1, v2}, Lcom/htc/album/Animation/FadeOutAndExpandOutAnimation;-><init>(Lcom/htc/sunnyCore/widget/gridview/GridView;I)V

    invoke-virtual {v0, p3}, Lcom/htc/album/Animation/FadeOutAndExpandOutAnimation;->setAnimationListener(Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)V

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v1, v0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->startAnimation(Lcom/htc/sunnyCore/view/animation/SAnimationController;)V

    return-void
.end method

.method protected onPlayAnimPushIn(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)V
    .locals 3

    new-instance v0, Lcom/htc/album/Animation/FadeInAndCollapsedAnimation;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v2, p0, Lcom/htc/album/Animation/animationSetEventView;->mFocusIndex:I

    invoke-direct {v0, v1, v2}, Lcom/htc/album/Animation/FadeInAndCollapsedAnimation;-><init>(Lcom/htc/sunnyCore/widget/gridview/GridView;I)V

    invoke-virtual {v0, p3}, Lcom/htc/album/Animation/FadeInAndCollapsedAnimation;->setAnimationListener(Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)V

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v1, v0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->startAnimation(Lcom/htc/sunnyCore/view/animation/SAnimationController;)V

    return-void
.end method

.method public onPrepareAnimation(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
