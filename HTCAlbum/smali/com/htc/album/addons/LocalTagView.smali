.class public Lcom/htc/album/addons/LocalTagView;
.super Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;
.source "LocalTagView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/addons/LocalTagView$TagViewOnLongClickListener;,
        Lcom/htc/album/addons/LocalTagView$TagViewOnTouchListener;,
        Lcom/htc/album/addons/LocalTagView$TagPhotoOnTouchListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView",
        "<",
        "Landroid/widget/ImageView;",
        "Landroid/widget/RelativeLayout;",
        ">;"
    }
.end annotation


# static fields
.field public static final DIRECTION_FORWARD:I = 0x2

.field public static final DIRECTION_NEUTRAL:I = 0x1

.field public static final DIRECTION_START:I = 0x0

.field private static final FOOT_BAR_TAGVIEW:I = 0x1bc

.field private static final HEADER_BAR_TAGVIEW:I = 0x14d

.field private static final LOG_TAG:Ljava/lang/String; = "LocalTagView"


# instance fields
.field protected mLayoutTop:Landroid/widget/RelativeLayout;

.field protected mListenerPhotoTouch:Lcom/htc/album/addons/LocalTagView$TagPhotoOnTouchListener;

.field protected mServiceName:Ljava/lang/String;

.field protected mTagInfoSelected:Lcom/htc/album/TagUtils/TagInfo;

.field protected mTagNext:I

.field protected mTagViewHandler:Lcom/htc/album/TagUtils/HandlerTagView;

.field protected mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

.field protected mTagViewSelected:Landroid/view/View;

.field protected mbClearTop5:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/widget/BaseAdapter;Landroid/os/Handler;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;-><init>(Landroid/app/Activity;Landroid/widget/BaseAdapter;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    iput-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewHandler:Lcom/htc/album/TagUtils/HandlerTagView;

    iput-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mServiceName:Ljava/lang/String;

    iput v1, p0, Lcom/htc/album/addons/LocalTagView;->mTagNext:I

    iput-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewSelected:Landroid/view/View;

    iput-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mTagInfoSelected:Lcom/htc/album/TagUtils/TagInfo;

    iput-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mLayoutTop:Landroid/widget/RelativeLayout;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mbClearTop5:Ljava/lang/Boolean;

    new-instance v0, Lcom/htc/album/addons/LocalTagView$TagPhotoOnTouchListener;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/LocalTagView$TagPhotoOnTouchListener;-><init>(Lcom/htc/album/addons/LocalTagView;)V

    iput-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mListenerPhotoTouch:Lcom/htc/album/addons/LocalTagView$TagPhotoOnTouchListener;

    return-void
.end method

.method public constructor <init>(Lcom/htc/app/mf/MfFragment;Landroid/widget/BaseAdapter;Landroid/os/Handler;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;-><init>(Lcom/htc/app/mf/MfFragment;Landroid/widget/BaseAdapter;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    iput-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewHandler:Lcom/htc/album/TagUtils/HandlerTagView;

    iput-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mServiceName:Ljava/lang/String;

    iput v1, p0, Lcom/htc/album/addons/LocalTagView;->mTagNext:I

    iput-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewSelected:Landroid/view/View;

    iput-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mTagInfoSelected:Lcom/htc/album/TagUtils/TagInfo;

    iput-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mLayoutTop:Landroid/widget/RelativeLayout;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mbClearTop5:Ljava/lang/Boolean;

    new-instance v0, Lcom/htc/album/addons/LocalTagView$TagPhotoOnTouchListener;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/LocalTagView$TagPhotoOnTouchListener;-><init>(Lcom/htc/album/addons/LocalTagView;)V

    iput-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mListenerPhotoTouch:Lcom/htc/album/addons/LocalTagView$TagPhotoOnTouchListener;

    return-void
.end method


# virtual methods
.method public bindAdapter()V
    .locals 5

    const v4, 0x7f09005c

    const-string v2, "LocalTagView"

    const-string v3, "[HTCAlbum][LocalTagView][bindAdapter]: Begin"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->isMfFragment:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMfFragment:Lcom/htc/app/mf/MfFragment;

    invoke-virtual {v2}, Lcom/htc/app/mf/MfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "service"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/addons/LocalTagView;->mServiceName:Ljava/lang/String;

    const-string v2, "clear_top5_frined_list"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/addons/LocalTagView;->mbClearTop5:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v2, Lcom/htc/album/addons/AdapterTagPhotos;

    invoke-virtual {v2}, Lcom/htc/album/addons/AdapterTagPhotos;->bindAdapter()V

    iget-boolean v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->isMfFragment:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMfFragment:Lcom/htc/app/mf/MfFragment;

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMfFragment:Lcom/htc/app/mf/MfFragment;

    invoke-virtual {v3}, Lcom/htc/app/mf/MfFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lcom/htc/app/mf/MfFragment;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/htc/album/addons/LocalTagView;->mLayoutTop:Landroid/widget/RelativeLayout;

    :goto_1
    const-string v2, "LocalTagView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][LocalTagView][onEnter]: Top: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/addons/LocalTagView;->mLayoutTop:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/htc/album/TagUtils/TagInfo;

    invoke-direct {v2}, Lcom/htc/album/TagUtils/TagInfo;-><init>()V

    iput-object v2, p0, Lcom/htc/album/addons/LocalTagView;->mTagInfoSelected:Lcom/htc/album/TagUtils/TagInfo;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/album/addons/LocalTagView;->setupTaggableView(I)Z

    invoke-virtual {p0}, Lcom/htc/album/addons/LocalTagView;->setupTagManager()V

    invoke-virtual {p0}, Lcom/htc/album/addons/LocalTagView;->verifyUIChange()V

    iget-object v2, p0, Lcom/htc/album/addons/LocalTagView;->mLayoutTop:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->bringChildToFront(Landroid/view/View;)V

    iget-object v2, p0, Lcom/htc/album/addons/LocalTagView;->mLayoutTop:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->bringChildToFront(Landroid/view/View;)V

    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v2}, Lcom/htc/album/modules/ui/ControlBarManager;->getFooterBar()Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/album/addons/LocalTagView;->mLayoutTop:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v3}, Lcom/htc/album/modules/ui/ControlBarManager;->getFooterBar()Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getRootView()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->bringChildToFront(Landroid/view/View;)V

    :cond_0
    const-string v2, "LocalTagView"

    const-string v3, "[HTCAlbum][LocalTagView][bindAdapter]: End"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_0

    :cond_2
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/htc/album/addons/LocalTagView;->mLayoutTop:Landroid/widget/RelativeLayout;

    goto :goto_1
.end method

.method public bridge synthetic createMainView()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/album/addons/LocalTagView;->createMainView()Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public createMainView()Landroid/widget/ImageView;
    .locals 2

    new-instance v1, Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->isMfFragment:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMfFragment:Lcom/htc/app/mf/MfFragment;

    invoke-virtual {v0}, Lcom/htc/app/mf/MfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic createMainViewWrapper()Landroid/view/ViewGroup;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/album/addons/LocalTagView;->createMainViewWrapper()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public createMainViewWrapper()Landroid/widget/RelativeLayout;
    .locals 3

    const v2, 0x7f090041

    iget-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->isMfFragment:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMfFragment:Lcom/htc/app/mf/MfFragment;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMfFragment:Lcom/htc/app/mf/MfFragment;

    invoke-virtual {v1}, Lcom/htc/app/mf/MfFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/app/mf/MfFragment;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    goto :goto_0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 2

    iget-boolean v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->isMfFragment:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMfFragment:Lcom/htc/app/mf/MfFragment;

    invoke-virtual {v1}, Lcom/htc/app/mf/MfFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :goto_0
    const v1, 0x7f0a0074

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0
.end method

.method public getId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMainViewContainerId()I
    .locals 1

    const v0, 0x7f090042

    return v0
.end method

.method public getMainViewWrapperContainerId()I
    .locals 1

    const v0, 0x7f090041

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "LocalTagView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][LocalTagView][onActivityResult]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0, p3}, Lcom/htc/album/addons/LocalTagView;->onHandleTagUpdate(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCancel()V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->isMfFragment:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMfFragment:Lcom/htc/app/mf/MfFragment;

    invoke-virtual {v0}, Lcom/htc/app/mf/MfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/LocalTagView;->setupTaggableView(I)Z

    invoke-virtual {p0}, Lcom/htc/album/addons/LocalTagView;->relayoutTagManager()V

    return-void
.end method

.method public onConfirm()V
    .locals 12

    const/4 v11, -0x1

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    invoke-virtual {v8}, Lcom/htc/album/TagUtils/TagViewManager;->getChildCount()I

    move-result v3

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    :goto_0
    if-le v3, v4, :cond_1

    iget-object v8, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    invoke-virtual {v8, v4}, Lcom/htc/album/TagUtils/TagViewManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v8, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    invoke-virtual {v8, v1}, Lcom/htc/album/TagUtils/TagViewManager;->isTagView(Landroid/view/View;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "LocalTagView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][LogTagView][onConfirm]: skip: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move-object v6, v1

    check-cast v6, Lcom/htc/album/TagUtils/TagViewManager$TagView;

    new-instance v5, Lcom/htc/album/TagUtils/TagInfo;

    invoke-direct {v5}, Lcom/htc/album/TagUtils/TagInfo;-><init>()V

    iget-object v8, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    invoke-virtual {v6}, Lcom/htc/album/TagUtils/TagViewManager$TagView;->getTagRestView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/htc/album/TagUtils/TagViewManager;->getTagName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/htc/album/TagUtils/TagInfo;->mszTagName:Ljava/lang/String;

    iget-object v8, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    invoke-virtual {v6}, Lcom/htc/album/TagUtils/TagViewManager$TagView;->getTagRestView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/htc/album/TagUtils/TagViewManager;->getTagID(Landroid/view/View;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/htc/album/TagUtils/TagInfo;->mszTagID:Ljava/lang/String;

    iget-object v8, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    invoke-virtual {v6}, Lcom/htc/album/TagUtils/TagViewManager$TagView;->getTagRestView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/htc/album/TagUtils/TagViewManager;->getTagX(Landroid/view/View;)F

    move-result v8

    iput v8, v5, Lcom/htc/album/TagUtils/TagInfo;->mX:F

    iget-object v8, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    invoke-virtual {v6}, Lcom/htc/album/TagUtils/TagViewManager$TagView;->getTagRestView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/htc/album/TagUtils/TagViewManager;->getTagY(Landroid/view/View;)F

    move-result v8

    iput v8, v5, Lcom/htc/album/TagUtils/TagInfo;->mY:F

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string v8, "LocalTagView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][LocalTagView][onConfirm]: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v8, "tags"

    invoke-virtual {v0, v8, v7}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-boolean v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->isMfFragment:Z

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMfFragment:Lcom/htc/app/mf/MfFragment;

    invoke-virtual {v8}, Lcom/htc/app/mf/MfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v11, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMfFragment:Lcom/htc/app/mf/MfFragment;

    invoke-virtual {v8}, Lcom/htc/app/mf/MfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->finish()V

    :goto_2
    return-void

    :cond_2
    iget-object v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8, v11, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->finish()V

    goto :goto_2
.end method

.method public onControlButtonClick(Lcom/htc/album/modules/ui/widget/ControlButton;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/htc/album/addons/LocalTagView;->onCancel()V

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/album/addons/LocalTagView;->onConfirm()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateDialog(Landroid/view/View;)Landroid/app/Dialog;
    .locals 7

    move-object v4, p1

    iget-boolean v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->isMfFragment:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMfFragment:Lcom/htc/app/mf/MfFragment;

    invoke-virtual {v5}, Lcom/htc/app/mf/MfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    :goto_0
    const/4 v5, 0x2

    new-array v3, v5, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const v6, 0x7f0a0077

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const v6, 0x7f0a0075

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v5, "LocalTagView"

    const-string v6, "[HTCAlbum][LocalTagView][onCreateDialog]:... "

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    invoke-virtual {v5, p1}, Lcom/htc/album/TagUtils/TagViewManager;->getTagName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    new-instance v5, Lcom/htc/album/addons/LocalTagView$1;

    invoke-direct {v5, p0, v4, v0}, Lcom/htc/album/addons/LocalTagView$1;-><init>(Lcom/htc/album/addons/LocalTagView;Landroid/view/View;Landroid/app/Activity;)V

    invoke-virtual {v1, v3, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    return-object v2

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mActivity:Landroid/app/Activity;

    goto :goto_0
.end method

.method public onCreateFooterBar(I)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    .locals 7

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->isMfFragment:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMfFragment:Lcom/htc/app/mf/MfFragment;

    invoke-virtual {v3}, Lcom/htc/app/mf/MfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/album/addons/LocalTagView;->enableRightFooter()Z

    move-result v3

    invoke-static {v1, v3}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->makeFooter(Landroid/content/Context;Z)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v0

    const/4 v3, 0x5

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Cancel_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    const v5, 0x20401ee

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    const/4 v3, 0x4

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Save_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    const v5, 0x7f0a0001

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getRootView()Landroid/view/ViewGroup;

    move-result-object v6

    instance-of v2, v6, Lcom/htc/widget/HtcFooter;

    if-eqz v2, :cond_0

    check-cast v6, Lcom/htc/widget/HtcFooter;

    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Lcom/htc/widget/HtcFooter;->setTranparentBckground(Z)V

    :cond_0
    return-object v0

    :cond_1
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0
.end method

.method public onEnter()V
    .locals 3

    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->onEnter()V

    const-string v0, "LocalTagView"

    const-string v1, "[HTCAlbum][LocalTagView][onEnter]: "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    const/4 v1, 0x2

    const/16 v2, 0x1bc

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/modules/ui/ControlBarManager;->createControlBar(II)V

    :cond_0
    return-void
.end method

.method public onHandleTagUpdate(Landroid/content/Intent;)V
    .locals 10

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewSelected:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    iget-object v3, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewSelected:Landroid/view/View;

    invoke-virtual {v0, v3}, Lcom/htc/album/TagUtils/TagViewManager;->removeTag(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewSelected:Landroid/view/View;

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string v0, "tag_name"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "tag_id"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    iget-object v3, p0, Lcom/htc/album/addons/LocalTagView;->mTagInfoSelected:Lcom/htc/album/TagUtils/TagInfo;

    iget v3, v3, Lcom/htc/album/TagUtils/TagInfo;->mX:F

    iget-object v4, p0, Lcom/htc/album/addons/LocalTagView;->mTagInfoSelected:Lcom/htc/album/TagUtils/TagInfo;

    iget v4, v4, Lcom/htc/album/TagUtils/TagInfo;->mY:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/album/TagUtils/TagViewManager;->validateTagUniqueness(Ljava/lang/String;Ljava/lang/String;FF)V

    iget-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    const-string v3, ""

    iget-object v4, p0, Lcom/htc/album/addons/LocalTagView;->mTagInfoSelected:Lcom/htc/album/TagUtils/TagInfo;

    iget v4, v4, Lcom/htc/album/TagUtils/TagInfo;->mX:F

    iget-object v5, p0, Lcom/htc/album/addons/LocalTagView;->mTagInfoSelected:Lcom/htc/album/TagUtils/TagInfo;

    iget v5, v5, Lcom/htc/album/TagUtils/TagInfo;->mY:F

    const/4 v8, 0x0

    move v7, v6

    invoke-virtual/range {v0 .. v8}, Lcom/htc/album/TagUtils/TagViewManager;->addTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFFFZ)V

    const-string v0, "LocalTagView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][LocalTagView][onHandleTagUpdate]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/album/addons/LocalTagView;->verifyUIChange()V

    return-void
.end method

.method public onLeave()V
    .locals 0

    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->onLeave()V

    return-void
.end method

.method public onLongClickTagView(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/album/addons/LocalTagView;->onCreateDialog(Landroid/view/View;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public onPause()V
    .locals 2

    const-string v0, "LocalTagView"

    const-string v1, "[HTCAlbum][LocalTagView][onPause]: "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/album/addons/AdapterTagPhotos;

    invoke-virtual {v0}, Lcom/htc/album/addons/AdapterTagPhotos;->onPause()V

    :cond_0
    return-void
.end method

.method public onPhotoTouchDown(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 8

    const/high16 v7, 0x42c8

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v5, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewHandler:Lcom/htc/album/TagUtils/HandlerTagView;

    invoke-virtual {v5}, Lcom/htc/album/TagUtils/HandlerTagView;->getPhotoViewX()I

    move-result v5

    iget v6, v0, Landroid/graphics/Rect;->left:I

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewHandler:Lcom/htc/album/TagUtils/HandlerTagView;

    iget v6, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5, v6}, Lcom/htc/album/TagUtils/HandlerTagView;->setPhotoViewX(I)V

    :cond_0
    iget-object v5, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewHandler:Lcom/htc/album/TagUtils/HandlerTagView;

    invoke-virtual {v5}, Lcom/htc/album/TagUtils/HandlerTagView;->getPhotoViewY()I

    move-result v5

    iget v6, v0, Landroid/graphics/Rect;->top:I

    if-eq v5, v6, :cond_1

    iget-object v5, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewHandler:Lcom/htc/album/TagUtils/HandlerTagView;

    iget v6, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5, v6}, Lcom/htc/album/TagUtils/HandlerTagView;->setPhotoViewY(I)V

    :cond_1
    iget-object v5, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewHandler:Lcom/htc/album/TagUtils/HandlerTagView;

    invoke-virtual {v5}, Lcom/htc/album/TagUtils/HandlerTagView;->getPhotoViewWidth()I

    move-result v5

    if-eqz v5, :cond_2

    mul-float v5, v3, v7

    iget-object v6, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewHandler:Lcom/htc/album/TagUtils/HandlerTagView;

    invoke-virtual {v6}, Lcom/htc/album/TagUtils/HandlerTagView;->getPhotoViewWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v1, v5, v6

    :cond_2
    iget-object v5, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewHandler:Lcom/htc/album/TagUtils/HandlerTagView;

    invoke-virtual {v5}, Lcom/htc/album/TagUtils/HandlerTagView;->getPhotoViewHeight()I

    move-result v5

    if-eqz v5, :cond_3

    mul-float v5, v4, v7

    iget-object v6, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewHandler:Lcom/htc/album/TagUtils/HandlerTagView;

    invoke-virtual {v6}, Lcom/htc/album/TagUtils/HandlerTagView;->getPhotoViewHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v2, v5, v6

    :cond_3
    iget-object v5, p0, Lcom/htc/album/addons/LocalTagView;->mTagInfoSelected:Lcom/htc/album/TagUtils/TagInfo;

    iput v1, v5, Lcom/htc/album/TagUtils/TagInfo;->mX:F

    iget-object v5, p0, Lcom/htc/album/addons/LocalTagView;->mTagInfoSelected:Lcom/htc/album/TagUtils/TagInfo;

    iput v2, v5, Lcom/htc/album/TagUtils/TagInfo;->mY:F

    return-void
.end method

.method public onPhotoTouchUp()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewSelected:Landroid/view/View;

    invoke-virtual {p0}, Lcom/htc/album/addons/LocalTagView;->onTouchTagPhotoCommonGalleryService()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mbClearTop5:Ljava/lang/Boolean;

    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "LocalTagView"

    const-string v1, "[HTCAlbum][LocalTagView][onResume]: "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/album/addons/LocalTagView;->onUpdateViewTitle()V

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/album/addons/AdapterTagPhotos;

    invoke-virtual {v0}, Lcom/htc/album/addons/AdapterTagPhotos;->onResume()V

    :cond_0
    return-void
.end method

.method public onTagDelete(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    invoke-virtual {v0, p1}, Lcom/htc/album/TagUtils/TagViewManager;->removeTag(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/htc/album/addons/LocalTagView;->verifyUIChange()V

    return-void
.end method

.method public onTagEdit(Landroid/app/Activity;Landroid/view/View;)V
    .locals 9

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/htc/album/addons/LocalTagView;->mTagInfoSelected:Lcom/htc/album/TagUtils/TagInfo;

    iget-object v6, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    invoke-virtual {v6, p2}, Lcom/htc/album/TagUtils/TagViewManager;->getTagX(Landroid/view/View;)F

    move-result v6

    iput v6, v5, Lcom/htc/album/TagUtils/TagInfo;->mX:F

    iget-object v5, p0, Lcom/htc/album/addons/LocalTagView;->mTagInfoSelected:Lcom/htc/album/TagUtils/TagInfo;

    iget-object v6, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    invoke-virtual {v6, p2}, Lcom/htc/album/TagUtils/TagViewManager;->getTagY(Landroid/view/View;)F

    move-result v6

    iput v6, v5, Lcom/htc/album/TagUtils/TagInfo;->mY:F

    iput-object p2, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewSelected:Landroid/view/View;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.htc.album"

    const-string v6, "com.htc.album.SocialNetwork.ActivitySearchView"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-boolean v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->isMfFragment:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMfFragment:Lcom/htc/app/mf/MfFragment;

    invoke-virtual {v5}, Lcom/htc/app/mf/MfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    :goto_0
    const-string v5, "upload_mode"

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "upload_mode"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/htc/album/addons/LocalTagView;->mServiceName:Ljava/lang/String;

    sget-object v6, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v6, v6, v8

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const-string v5, "service_name"

    iget-object v6, p0, Lcom/htc/album/addons/LocalTagView;->mServiceName:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/htc/album/addons/LocalTagView;->mServiceName:Ljava/lang/String;

    sget-object v6, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v6, v6, v8

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "service_display"

    const-string v6, "facebook"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p1, v1, v8}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_1
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/htc/album/addons/LocalTagView;->mServiceName:Ljava/lang/String;

    sget-object v6, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "service_display"

    const-string v6, "flickr"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public onTouchTagPhotoCommonGalleryService()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/htc/album/addons/LocalTagView;->mServiceName:Ljava/lang/String;

    sget-object v6, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.htc.album"

    const-string v6, "com.htc.album.SocialNetwork.ActivitySearchView"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-boolean v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->isMfFragment:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMfFragment:Lcom/htc/app/mf/MfFragment;

    invoke-virtual {v5}, Lcom/htc/app/mf/MfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    :goto_0
    const-string v5, "upload_mode"

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "upload_mode"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "service_name"

    iget-object v6, p0, Lcom/htc/album/addons/LocalTagView;->mServiceName:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/htc/album/addons/LocalTagView;->mServiceName:Ljava/lang/String;

    sget-object v6, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-ne v8, v5, :cond_2

    const-string v5, "service_display"

    const-string v6, "facebook"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v5, "clear_top5_frined_list"

    iget-object v6, p0, Lcom/htc/album/addons/LocalTagView;->mbClearTop5:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-boolean v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->isMfFragment:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMfFragment:Lcom/htc/app/mf/MfFragment;

    invoke-virtual {v5}, Lcom/htc/app/mf/MfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v1, v7}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_2
    return-void

    :cond_1
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/htc/album/addons/LocalTagView;->mServiceName:Ljava/lang/String;

    sget-object v6, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v6, v6, v8

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-ne v8, v5, :cond_0

    const-string v5, "service_display"

    const-string v6, "flickr"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5, v1, v7}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2
.end method

.method public onUpdateViewTitle()V
    .locals 0

    return-void
.end method

.method public relayoutTagManager()V
    .locals 5

    iget-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    iget-object v1, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewHandler:Lcom/htc/album/TagUtils/HandlerTagView;

    invoke-virtual {v1}, Lcom/htc/album/TagUtils/HandlerTagView;->getPhotoViewX()I

    move-result v1

    iget-object v2, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewHandler:Lcom/htc/album/TagUtils/HandlerTagView;

    invoke-virtual {v2}, Lcom/htc/album/TagUtils/HandlerTagView;->getPhotoViewY()I

    move-result v2

    iget-object v3, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewHandler:Lcom/htc/album/TagUtils/HandlerTagView;

    invoke-virtual {v3}, Lcom/htc/album/TagUtils/HandlerTagView;->getPhotoViewWidth()I

    move-result v3

    iget-object v4, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewHandler:Lcom/htc/album/TagUtils/HandlerTagView;

    invoke-virtual {v4}, Lcom/htc/album/TagUtils/HandlerTagView;->getPhotoViewHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/album/TagUtils/TagViewManager;->setCanvasInfo(IIII)V

    :cond_0
    return-void
.end method

.method public requestFooterBar()Z
    .locals 1

    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setFastScrollEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setupTagManager()V
    .locals 14

    const/4 v8, 0x0

    const/4 v6, 0x0

    const-string v0, "LocalTagView"

    const-string v1, "[HTCAlbum][LocalTagView][setupTagManager]... "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->isMfFragment:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMfFragment:Lcom/htc/app/mf/MfFragment;

    invoke-virtual {v0}, Lcom/htc/app/mf/MfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    :goto_0
    iget-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewHandler:Lcom/htc/album/TagUtils/HandlerTagView;

    invoke-virtual {v0, v9}, Lcom/htc/album/TagUtils/HandlerTagView;->getTagViewManager(Landroid/content/Context;)Lcom/htc/album/TagUtils/TagViewManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    iget-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    new-instance v1, Lcom/htc/album/addons/LocalTagView$TagViewOnTouchListener;

    invoke-direct {v1, p0}, Lcom/htc/album/addons/LocalTagView$TagViewOnTouchListener;-><init>(Lcom/htc/album/addons/LocalTagView;)V

    invoke-virtual {v0, v1}, Lcom/htc/album/TagUtils/TagViewManager;->setTagOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    new-instance v1, Lcom/htc/album/addons/LocalTagView$TagViewOnLongClickListener;

    invoke-direct {v1, p0}, Lcom/htc/album/addons/LocalTagView$TagViewOnLongClickListener;-><init>(Lcom/htc/album/addons/LocalTagView;)V

    invoke-virtual {v0, v1}, Lcom/htc/album/TagUtils/TagViewManager;->setTagOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const-string v0, "LocalTagView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][LocalTagView][setupTagManager]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/addons/LocalTagView;->mLayoutTop:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mLayoutTop:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    const/4 v12, 0x0

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v8}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/album/TagUtils/TagPhotoInfo;

    invoke-virtual {v13}, Lcom/htc/album/TagUtils/TagPhotoInfo;->getTags()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_1
    if-le v10, v11, :cond_2

    invoke-virtual {v13, v11}, Lcom/htc/album/TagUtils/TagPhotoInfo;->getTagInfo(I)Lcom/htc/album/TagUtils/TagInfo;

    move-result-object v12

    if-nez v12, :cond_1

    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    iget-object v1, v12, Lcom/htc/album/TagUtils/TagInfo;->mszTagName:Ljava/lang/String;

    iget-object v2, v12, Lcom/htc/album/TagUtils/TagInfo;->mszTagID:Ljava/lang/String;

    const-string v3, ""

    iget v4, v12, Lcom/htc/album/TagUtils/TagInfo;->mX:F

    iget v5, v12, Lcom/htc/album/TagUtils/TagInfo;->mY:F

    move v7, v6

    invoke-virtual/range {v0 .. v8}, Lcom/htc/album/TagUtils/TagViewManager;->addTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFFFZ)V

    goto :goto_2

    :cond_2
    return-void
.end method

.method public setupTaggableView(I)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    if-nez v3, :cond_0

    :goto_0
    return v0

    :cond_0
    const-string v3, "LocalTagView"

    const-string v4, "[HTCAlbum][LocalTagView][setupTaggableView]... "

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->isMfFragment:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMfFragment:Lcom/htc/app/mf/MfFragment;

    invoke-virtual {v3}, Lcom/htc/app/mf/MfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    :goto_1
    iget-object v3, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewHandler:Lcom/htc/album/TagUtils/HandlerTagView;

    if-nez v3, :cond_1

    new-instance v3, Lcom/htc/album/TagUtils/HandlerTagView;

    invoke-direct {v3}, Lcom/htc/album/TagUtils/HandlerTagView;-><init>()V

    iput-object v3, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewHandler:Lcom/htc/album/TagUtils/HandlerTagView;

    :cond_1
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/album/TagUtils/TagPhotoInfo;

    iget-object v4, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewHandler:Lcom/htc/album/TagUtils/HandlerTagView;

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Lcom/htc/album/TagUtils/HandlerTagView;->setTaggableView(Landroid/widget/ImageView;)V

    iget-object v3, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewHandler:Lcom/htc/album/TagUtils/HandlerTagView;

    iget-object v4, p0, Lcom/htc/album/addons/LocalTagView;->mListenerPhotoTouch:Lcom/htc/album/addons/LocalTagView$TagPhotoOnTouchListener;

    invoke-virtual {v3, v1, v2, v4}, Lcom/htc/album/TagUtils/HandlerTagView;->prepareTaggableView(Landroid/content/Context;Lcom/htc/album/TagUtils/TagPhotoInfo;Landroid/view/View$OnTouchListener;)Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_1
.end method

.method public unbindAdapter()V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewHandler:Lcom/htc/album/TagUtils/HandlerTagView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewHandler:Lcom/htc/album/TagUtils/HandlerTagView;

    invoke-virtual {v0}, Lcom/htc/album/TagUtils/HandlerTagView;->release()V

    :cond_0
    return-void
.end method

.method public verifyUIChange()V
    .locals 4

    iget-object v1, p0, Lcom/htc/album/addons/LocalTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    invoke-virtual {v1}, Lcom/htc/album/TagUtils/TagViewManager;->getTagCount()I

    move-result v0

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setVisibility(I)V

    :cond_0
    :goto_0
    const-string v1, "LocalTagView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][LocalTagView][onHandleTagUpdate]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    const/16 v2, 0x8

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setVisibility(I)V

    goto :goto_0
.end method
