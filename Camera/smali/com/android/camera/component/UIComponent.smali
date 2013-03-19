.class public abstract Lcom/android/camera/component/UIComponent;
.super Lcom/android/camera/component/CameraCompoment;
.source "UIComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/UIComponent$AlphaRotateAnimationCallback;
    }
.end annotation


# static fields
.field public static final UI_FADE_IN_DURATION:I = 0x190

.field public static final UI_FADE_OUT_DURATION:I = 0x190

.field public static final UI_FAKE_ROTATION_TIMEOUT:I = 0x3e8

.field public static final UI_ROTATE_DURATION:I = 0x190


# instance fields
.field private m_BaseLayout:Landroid/view/View;

.field private m_BaseLayoutID:I

.field private m_ContentLayout:Landroid/view/View;

.field private m_ContentLayoutID:I

.field private m_InflateViewAutomatically:Z

.field private m_IsContentLayoutPrepared:Z

.field private m_ProcessingDialogContainer:Lcom/android/camera/rotate/RotateRelativeLayout;


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;II)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;II)V
    .locals 1

    invoke-virtual {p3}, Lcom/android/camera/HTCCamera;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/camera/component/CameraCompoment;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Lcom/android/camera/CameraThread;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/component/UIComponent;->m_InflateViewAutomatically:Z

    iput p4, p0, Lcom/android/camera/component/UIComponent;->m_BaseLayoutID:I

    iput p5, p0, Lcom/android/camera/component/UIComponent;->m_ContentLayoutID:I

    return-void
.end method


# virtual methods
.method protected final autoInflateView(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/component/UIComponent;->m_InflateViewAutomatically:Z

    return-void
.end method

.method protected final collapseContentLayout()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/UIComponent;->m_ContentLayout:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/UIComponent;->m_BaseLayout:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/UIComponent;->m_BaseLayout:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/camera/component/UIComponent;->m_ContentLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/component/UIComponent;->m_IsContentLayoutPrepared:Z

    goto :goto_0
.end method

.method protected final getBaseLayout()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/UIComponent;->m_BaseLayout:Landroid/view/View;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/component/UIComponent;->m_BaseLayoutID:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/component/UIComponent;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/component/UIComponent;->m_BaseLayoutID:I

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/UIComponent;->m_BaseLayout:Landroid/view/View;

    iget-object v0, p0, Lcom/android/camera/component/UIComponent;->m_BaseLayout:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/UIComponent;->m_BaseLayout:Landroid/view/View;

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/UIComponent;->m_BaseLayout:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/UIComponent;->m_BaseLayout:Landroid/view/View;

    return-object v0
.end method

.method protected final getCameraMode()Lcom/android/camera/CameraMode;
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/component/UIComponent;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraMode;

    return-object v0
.end method

.method protected final getCameraType()Lcom/android/camera/CameraType;
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/component/UIComponent;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraType;

    return-object v0
.end method

.method protected final getColor(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/component/UIComponent;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method protected getContentLayoutID()I
    .locals 1

    iget v0, p0, Lcom/android/camera/component/UIComponent;->m_ContentLayoutID:I

    return v0
.end method

.method protected final getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/component/UIComponent;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected final getRotation()Lcom/android/camera/rotate/UIRotation;
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/component/UIComponent;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->rotation:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/rotate/UIRotation;

    return-object v0
.end method

.method protected final getSkinnedColor(Ljava/lang/String;I)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/component/UIComponent;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/camera/Skin;->getColor(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected final getSkinnedDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/component/UIComponent;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/camera/Skin;->getDrawable(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected initializeOverride()V
    .locals 1

    invoke-super {p0}, Lcom/android/camera/component/CameraCompoment;->initializeOverride()V

    iget-boolean v0, p0, Lcom/android/camera/component/UIComponent;->m_InflateViewAutomatically:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/component/UIComponent;->getBaseLayout()Landroid/view/View;

    :cond_0
    return-void
.end method

.method protected final isCaptureUIBlocked()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/component/UIComponent;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->isCaptureUIBlocked:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected final prepareContentLayout()Landroid/view/View;
    .locals 6

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/android/camera/component/UIComponent;->m_IsContentLayoutPrepared:Z

    if-eqz v4, :cond_1

    iget-object v3, p0, Lcom/android/camera/component/UIComponent;->m_ContentLayout:Landroid/view/View;

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/UIComponent;->getContentLayoutID()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/component/UIComponent;->getBaseLayout()Landroid/view/View;

    iget-object v4, p0, Lcom/android/camera/component/UIComponent;->m_BaseLayout:Landroid/view/View;

    instance-of v4, v4, Landroid/view/ViewGroup;

    if-nez v4, :cond_2

    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "Base layout must be a ViewGroup"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    :cond_2
    iget-object v4, p0, Lcom/android/camera/component/UIComponent;->m_ContentLayout:Landroid/view/View;

    if-nez v4, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/component/UIComponent;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/HTCCamera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/component/UIComponent;->m_ContentLayout:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/component/UIComponent;->m_BaseLayout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/android/camera/component/UIComponent;->m_ContentLayout:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-object v3, p0, Lcom/android/camera/component/UIComponent;->m_BaseLayout:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/camera/component/UIComponent;->m_ContentLayout:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/camera/component/UIComponent;->m_IsContentLayoutPrepared:Z

    iget-object v3, p0, Lcom/android/camera/component/UIComponent;->m_ContentLayout:Landroid/view/View;

    goto :goto_0
.end method

.method protected final setTouchDelegate(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    new-instance v1, Landroid/view/TouchDelegate;

    invoke-direct {v1, v0, p2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    goto :goto_0
.end method

.method protected showAlphaRotateAnimation(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/component/UIComponent$AlphaRotateAnimationCallback;)V
    .locals 3

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    new-instance v1, Lcom/android/camera/component/UIComponent$1;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/android/camera/component/UIComponent$1;-><init>(Lcom/android/camera/component/UIComponent;Lcom/android/camera/component/UIComponent$AlphaRotateAnimationCallback;Landroid/view/View;Lcom/android/camera/rotate/UIRotation;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method protected showAlphaRotateAnimation(Lcom/android/camera/rotate/RotateRelativeLayout;Lcom/android/camera/rotate/UIRotation;)V
    .locals 1

    new-instance v0, Lcom/android/camera/component/UIComponent$2;

    invoke-direct {v0, p0}, Lcom/android/camera/component/UIComponent$2;-><init>(Lcom/android/camera/component/UIComponent;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/camera/component/UIComponent;->showAlphaRotateAnimation(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/component/UIComponent$AlphaRotateAnimationCallback;)V

    return-void
.end method

.method protected final showProcessingDialog(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const v0, 0x7f0a004d

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/component/UIComponent;->showProcessingDialog(ZI)V

    :goto_0
    return-void

    :cond_0
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/component/UIComponent;->showProcessingDialog(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method protected final showProcessingDialog(ZI)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/component/UIComponent;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/camera/HTCCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/component/UIComponent;->showProcessingDialog(ZLjava/lang/String;)V

    return-void
.end method

.method protected final showProcessingDialog(ZLjava/lang/String;)V
    .locals 9

    const v4, 0x7f0800cf

    const/16 v8, 0x12c

    const/high16 v7, 0x3f80

    const/4 v6, 0x0

    const/4 v5, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/component/UIComponent;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->isIdleOrPaused()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/camera/component/UIComponent;->m_ProcessingDialogContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/component/UIComponent;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    const v3, 0x7f080056

    invoke-virtual {v2, v3}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v2, p0, Lcom/android/camera/component/UIComponent;->m_ProcessingDialogContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    iget-object v2, p0, Lcom/android/camera/component/UIComponent;->m_ProcessingDialogContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v3, 0x7f080057

    invoke-virtual {v2, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Landroid/view/ViewStub;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    const-string v2, "com.htc.R.drawable.popup_full_bright"

    invoke-static {v2}, Lcom/android/camera/ViewUtil;->getHtcInternalResourceId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_2
    iget-object v2, p0, Lcom/android/camera/component/UIComponent;->m_ProcessingDialogContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v2, v4}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/camera/component/UIComponent;->m_ProcessingDialogContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v2, v4}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/camera/component/UIComponent;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    const-string v4, "com.htc.R.style.list_primary_s"

    invoke-static {v4}, Lcom/android/camera/ViewUtil;->getHtcInternalResourceId(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v2, p0, Lcom/android/camera/component/UIComponent;->m_ProcessingDialogContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {p0}, Lcom/android/camera/component/UIComponent;->getRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    iget-object v2, p0, Lcom/android/camera/component/UIComponent;->m_ProcessingDialogContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v2, v5}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/camera/component/UIComponent;->m_ProcessingDialogContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v2}, Lcom/android/camera/rotate/RotateRelativeLayout;->bringToFront()V

    iget-object v2, p0, Lcom/android/camera/component/UIComponent;->m_ProcessingDialogContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-static {v2, v6, v7, v5, v8}, Lcom/android/camera/AnimationManager;->showAlphaAnimation(Landroid/view/View;FFII)Landroid/view/animation/AlphaAnimation;

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/camera/component/UIComponent;->m_ProcessingDialogContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/component/UIComponent;->m_ProcessingDialogContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v2}, Lcom/android/camera/rotate/RotateRelativeLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/component/UIComponent;->m_ProcessingDialogContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/camera/component/UIComponent;->m_ProcessingDialogContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-static {v2, v7, v6, v5, v8}, Lcom/android/camera/AnimationManager;->showAlphaAnimation(Landroid/view/View;FFII)Landroid/view/animation/AlphaAnimation;

    goto :goto_0
.end method

.method protected final showRotateAnimation(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V
    .locals 1

    const/16 v0, 0x190

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/camera/component/UIComponent;->showRotateAnimation(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;I)V

    return-void
.end method

.method protected final showRotateAnimation(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;I)V
    .locals 6

    const/high16 v4, 0x43b4

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p3}, Lcom/android/camera/rotate/UIRotation;->getSurfaceDegrees()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p2}, Lcom/android/camera/rotate/UIRotation;->getSurfaceDegrees()I

    move-result v0

    int-to-float v1, v0

    sub-float v0, v2, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v3, 0x4334

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    cmpl-float v0, v2, v1

    if-lez v0, :cond_2

    sub-float/2addr v2, v4

    :cond_1
    :goto_1
    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->showRotateAnimation(Landroid/view/View;FFIIZ)Landroid/view/animation/RotateAnimation;

    goto :goto_0

    :cond_2
    sub-float/2addr v1, v4

    goto :goto_1
.end method

.method protected showUI(Landroid/view/View;ZI)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/camera/component/UIComponent;->showUI(Landroid/view/View;ZILjava/lang/Runnable;)V

    return-void
.end method

.method protected showUI(Landroid/view/View;ZILjava/lang/Runnable;)V
    .locals 5

    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/camera/component/UIComponent;->threadAccessCheck()V

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    if-lez p3, :cond_2

    invoke-static {p1, v3, v4, v2, p3}, Lcom/android/camera/AnimationManager;->showAlphaAnimation(Landroid/view/View;FFII)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    if-eqz p4, :cond_0

    new-instance v1, Lcom/android/camera/component/UIComponent$3;

    invoke-direct {v1, p0, p4}, Lcom/android/camera/component/UIComponent$3;-><init>(Lcom/android/camera/component/UIComponent;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    if-lez p3, :cond_4

    invoke-static {p1, v4, v3, v2, p3}, Lcom/android/camera/AnimationManager;->showAlphaAnimation(Landroid/view/View;FFII)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    if-eqz p4, :cond_0

    new-instance v1, Lcom/android/camera/component/UIComponent$4;

    invoke-direct {v1, p0, p4}, Lcom/android/camera/component/UIComponent$4;-><init>(Lcom/android/camera/component/UIComponent;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method protected showUI(Landroid/view/View;ZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/camera/component/UIComponent;->showUI(Landroid/view/View;ZZLjava/lang/Runnable;)V

    return-void
.end method

.method protected showUI(Landroid/view/View;ZZLjava/lang/Runnable;)V
    .locals 1

    const/16 v0, 0x190

    if-eqz p3, :cond_1

    if-eqz p2, :cond_0

    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/android/camera/component/UIComponent;->showUI(Landroid/view/View;ZILjava/lang/Runnable;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
