.class public Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;
.super Ljava/lang/Object;
.source "SunnyContainerView.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler$ISceneChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "sceneChangeListener"
.end annotation


# instance fields
.field private mIsCancelled:Z

.field private mIsChanging:Z

.field final synthetic this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->mIsChanging:Z

    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->mIsCancelled:Z

    return-void
.end method


# virtual methods
.method public isSceneChangeCancelled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->mIsCancelled:Z

    return v0
.end method

.method public isSceneChanging()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->mIsChanging:Z

    return v0
.end method

.method public onSceneChangeBegin()V
    .locals 4

    const-string v2, "SunnyContainerView"

    const-string v3, "[HTCAlbum][SunnyContainerView][onSceneChangeBegin]:..."

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    #getter for: Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mFragmentHost:Lcom/htc/app/mf/MfFragment;
    invoke-static {v2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->access$000(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;)Lcom/htc/app/mf/MfFragment;

    move-result-object v2

    instance-of v2, v2, Lcom/htc/sunny2/frameworks/base/interfaces/IScreenDisplay;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    iget-object v2, v2, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->getNextScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    iget-object v2, v2, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->getPreviousScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    #getter for: Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mFragmentHost:Lcom/htc/app/mf/MfFragment;
    invoke-static {v2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->access$000(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;)Lcom/htc/app/mf/MfFragment;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny2/frameworks/base/interfaces/IScreenDisplay;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->enableFullScreen()Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/IScreenDisplay;->fullscreenMode(Z)V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->enableSunnyEnvTouchEvent(Z)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->mIsChanging:Z

    return-void

    :cond_1
    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->enableFullScreen()Z

    move-result v2

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->enableFullScreen()Z

    move-result v3

    if-eq v2, v3, :cond_0

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->enableFullScreen()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onPrepareEnterFullscreenMode()V

    :goto_1
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    #getter for: Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mFragmentHost:Lcom/htc/app/mf/MfFragment;
    invoke-static {v2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->access$000(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;)Lcom/htc/app/mf/MfFragment;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny2/frameworks/base/interfaces/IScreenDisplay;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->enableFullScreen()Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/IScreenDisplay;->fullscreenMode(Z)V

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onPrepareLeaveFullscreenMode()V

    goto :goto_1
.end method

.method public onSceneChangeCancelled()V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v3, "SunnyContainerView"

    const-string v4, "[HTCAlbum][SunnyContainerView][onSceneChangeCancelled]:... "

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v8, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->mIsCancelled:Z

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    iget-object v3, v3, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v3}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->getNextScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v1

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    iget-object v3, v3, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v3}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->getPreviousScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onCancelNewAdapter()V

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v3, v2, v7}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeScene(Ljava/lang/String;Z)V

    const-string v3, "SunnyContainerView"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "[HTCAlbum][SunnyContainerView][onSceneChangeCancelled]: removed scene: "

    aput-object v5, v4, v7

    aput-object v2, v4, v8

    const/4 v5, 0x2

    const-string v6, " : count: "

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    iget-object v6, v6, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundScene:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->adapterIdentity()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundAdapter:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    iget-object v3, v3, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->refreshRenderOrder(Ljava/lang/String;)V

    :goto_0
    iput-boolean v7, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->mIsChanging:Z

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v3, v8}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->enableSunnyEnvTouchEvent(Z)V

    return-void

    :cond_1
    const-string v3, "SunnyContainerView"

    const-string v4, "[HTCAlbum][SunnyContainerView][onSceneChangeCancelled]: finish this... "

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    iput-object v9, v3, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundScene:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    iput-object v9, v3, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundAdapter:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    #calls: Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onFinish()V
    invoke-static {v3}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->access$100(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;)V

    goto :goto_0
.end method

.method public onSceneChangeEnd(I)V
    .locals 13

    const/4 v9, 0x0

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string v6, "SunnyContainerView"

    const-string v7, "[HTCAlbum][SunnyContainerView][onSceneChangeEnd]:..."

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    iget-object v6, v6, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v6}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->getNextScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v3

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    iget-object v6, v6, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v6}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->getPreviousScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v2

    if-ne v12, p1, :cond_2

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    iget-object v6, v6, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v11, v6, :cond_2

    const-string v6, "SunnyContainerView"

    const-string v7, "[HTCAlbum][SunnyContainerView][onSceneChangeEnd]: remove last scene"

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    iget-object v6, v6, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->adapterIdentity()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    #calls: Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->isSceneAdapterShared(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;)Z
    invoke-static {v6, v1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->access$200(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onDestroyAdapter()V

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->isSecureOnDestroyAdapter()Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnyExceptionSuperNotCalled;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onDestroyAdapter: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnyExceptionSuperNotCalled;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    iget-object v6, v6, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mAdapters:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "SunnyContainerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][SunnyContainerView][onSceneChangeEnd]: adapter unloaded: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v6, "SunnyContainerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][SunnyContainerView][onSceneChangeEnd]: adapters: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    iget-object v8, v8, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mAdapters:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v6, v5, v10}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeScene(Ljava/lang/String;Z)V

    const-string v6, "SunnyContainerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][SunnyContainerView][onSceneChangeEnd]: scene removed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "SunnyContainerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][SunnyContainerView][onSceneChangeEnd]: scenes: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    iget-object v8, v8, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    iput-object v9, v6, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundScene:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    iput-object v9, v6, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundAdapter:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    #calls: Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onFinish()V
    invoke-static {v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->access$100(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;)V

    :goto_0
    iput-boolean v10, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->mIsChanging:Z

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v6, v11}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->enableSunnyEnvTouchEvent(Z)V

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->invalidateOptionsMenu()V

    return-void

    :cond_2
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundScene:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->adapterIdentity()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundAdapter:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    #getter for: Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mFragmentHost:Lcom/htc/app/mf/MfFragment;
    invoke-static {v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->access$000(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;)Lcom/htc/app/mf/MfFragment;

    move-result-object v6

    instance-of v6, v6, Lcom/htc/sunny2/frameworks/base/interfaces/IScreenDisplay;

    if-eqz v6, :cond_9

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->enableFullScreen()Z

    move-result v6

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->enableFullScreen()Z

    move-result v7

    if-eq v6, v7, :cond_4

    :cond_3
    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->enableFullScreen()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onEnterFullscreenMode()V

    :cond_4
    if-eqz v2, :cond_9

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getId()I

    move-result v6

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getId()I

    move-result v7

    if-lt v6, v7, :cond_5

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    iget-object v6, v6, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v6}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->isSceneForceClose()Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_5
    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->adapterIdentity()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    #calls: Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->isSceneAdapterShared(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;)Z
    invoke-static {v6, v2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->access$200(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onDestroyAdapter()V

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->isSecureOnDestroyAdapter()Z

    move-result v6

    if-nez v6, :cond_6

    new-instance v6, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnyExceptionSuperNotCalled;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onDestroyAdapter: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnyExceptionSuperNotCalled;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_6
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    iget-object v6, v6, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mAdapters:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "SunnyContainerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][SunnyContainerView][onSceneChangeEnd]: adapter unloaded: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const-string v6, "SunnyContainerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][SunnyContainerView][onSceneChangeEnd]: adapters: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    iget-object v8, v8, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mAdapters:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v6, v5, v10}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeScene(Ljava/lang/String;Z)V

    const-string v6, "SunnyContainerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][SunnyContainerView][onSceneChangeEnd]: scene removed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "SunnyContainerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][SunnyContainerView][onSceneChangeEnd]: scenes: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    iget-object v8, v8, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    iget-object v6, v6, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v6}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->isSceneForceClose()Z

    move-result v6

    if-eqz v6, :cond_9

    const/4 v0, 0x0

    :goto_1
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    iget-object v6, v6, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v0, :cond_9

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    iget-object v6, v6, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    if-eqz v1, :cond_8

    invoke-interface {v1, v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->setId(I)V

    const-string v6, "SunnyContainerView"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "[HTCAlbum][SunnyContainerView][onSceneChangeEnd]: "

    aput-object v8, v7, v10

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    const-string v8, " : "

    aput-object v8, v7, v12

    const/4 v8, 0x3

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_9
    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onTriggerErrorReport()V

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->enableContextMenu()Z

    move-result v7

    #calls: Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->registerForContextMenu(Z)V
    invoke-static {v6, v7}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->access$300(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;Z)V

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->enableBroadcastReceiver()Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->registerBroadcastReceiver()V

    goto/16 :goto_0

    :cond_a
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->unregisterBroadcastReceiver()V

    goto/16 :goto_0
.end method
