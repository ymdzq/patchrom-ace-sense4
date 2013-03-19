.class public Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;
.super Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;
.source "MfFragmentMainOnline.java"

# interfaces
.implements Lcom/htc/album/UploadEditor/ISceneSourcePluginFactory;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MfFragmentMainOnline"

.field private static final OPENSENSE_ACTION_ALBUM:Ljava/lang/String; = "com.htc.album.actions.opensense.albums"


# instance fields
.field private mGotoScene:Ljava/lang/String;

.field protected mIsExternal:Z

.field private mIsOpensenseAlbum:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->mGotoScene:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->mIsOpensenseAlbum:Z

    iput-boolean v1, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->mIsExternal:Z

    return-void
.end method

.method private startSceneWithIntent(Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "service_name"

    const-string v2, "service_name"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "user_id"

    const-string v2, "user_id"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "album_id"

    const-string v2, "album_id"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "album_name"

    const-string v2, "album_name"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "photo_id"

    const-string v2, "photo_id"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "flag_genuine"

    const-string v2, "flag_genuine"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "from_tabhost"

    const-string v2, "from_tabhost"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "from_albumhost"

    const-string v2, "from_albumhost"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "from_tmoFaves"

    const-string v2, "from_tmoFaves"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "opensense_pugin"

    const-string v2, "opensense_pugin"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "user_name"

    const-string v2, "user_name"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "user_buddyicon"

    const-string v2, "user_buddyicon"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "from_outside"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v2, "online_scene"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method private startWatchViewerScene(Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "from_watch"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "album_id"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "opensense_pugin"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "service_name"

    const-string v2, "WatchDataPlugin"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v2, "SceneOnlinePhotoFullscreen"

    invoke-virtual {v1, v0, v2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public enable2Pane()Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->mIsExternal:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->mIsOpensenseAlbum:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->mGotoScene:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected enableProgressInterrupt()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getContentView()I
    .locals 1

    const v0, 0x7f030031

    return v0
.end method

.method protected getLayoutHost()Landroid/view/ViewGroup;
    .locals 2

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090040

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "MfFragmentMainOnline"

    const-string v1, "[HTCAlbum][MfFragmentMainOnline][onActivityCreated]:... "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "MfFragmentMainOnline"

    const-string v1, "[HTCAlbum][MfFragmentMainOnline][onCreate]:... "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCreateScene()Z
    .locals 11

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v7, "MfFragmentMainOnline"

    const-string v8, "[HTCAlbum][MfFragmentMainOnline][onCreateScene]: no arguments..."

    invoke-static {v7, v8}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v6

    :cond_0
    const-string v8, "social_intent"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    if-nez v2, :cond_1

    const-string v7, "MfFragmentMainOnline"

    const-string v8, "[HTCAlbum][MfFragmentMainOnline][onCreateScene]: no social intent..."

    invoke-static {v7, v8}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v8, "MfFragmentMainOnline"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][MfFragmentMainOnline][onCreateScene]: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_2

    const-string v8, "com.htc.album.actions.opensense.albums"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iput-boolean v7, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->mIsOpensenseAlbum:Z

    :cond_2
    const-string v8, "from_outside"

    invoke-virtual {v2, v8, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->mIsExternal:Z

    const-string v8, "com.htc.album.action.VIEW_WATCH_ONLINE_FULLSCREEN"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v8, "goto_scene"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->mGotoScene:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->mIsExternal:Z

    if-eqz v8, :cond_4

    const-string v8, "MfFragmentMainOnline"

    const-string v9, "[HTCAlbum][MfFragmentMainOnline][onCreateScene]: external..."

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->startSceneWithIntent(Landroid/content/Intent;)V

    :goto_1
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v8}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->getHeight(Landroid/content/Context;I)I

    move-result v8

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f07002b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    add-int v4, v8, v9

    iget-object v8, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v8, v6, v4, v6, v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setPadding(IIII)V

    :cond_3
    move v6, v7

    goto/16 :goto_0

    :cond_4
    if-eqz v3, :cond_5

    const-string v8, "MfFragmentMainOnline"

    const-string v9, "[HTCAlbum][MfFragmentMainOnline][onCreateScene]: 2..."

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->startWatchViewerScene(Landroid/content/Intent;)V

    goto :goto_1

    :cond_5
    iget-object v8, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->mGotoScene:Ljava/lang/String;

    if-eqz v8, :cond_6

    const-string v8, "MfFragmentMainOnline"

    const-string v9, "[HTCAlbum][MfFragmentMainOnline][onCreateScene]: 3..."

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "social_bundle"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    iget-object v8, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    iget-object v9, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->mGotoScene:Ljava/lang/String;

    invoke-virtual {v8, v1, v9}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string v8, "MfFragmentMainOnline"

    const-string v9, "[HTCAlbum][MfFragmentMainOnline][onCreateScene]: 4..."

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const/4 v9, 0x0

    const-string v10, "SceneOnlineFolder"

    invoke-virtual {v8, v9, v10}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    const-string v0, "MfFragmentMainOnline"

    const-string v1, "[HTCAlbum][MfFragmentMainOnline][onDestroyView]:... "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->onDestroyView()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "MfFragmentMainOnline"

    const-string v1, "[HTCAlbum][MfFragmentMainOnline][onNewIntent]:... "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeAllScene()Z

    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->onCreateScene()Z

    return-void
.end method

.method public onPause()V
    .locals 2

    const-string v0, "MfFragmentMainOnline"

    const-string v1, "[HTCAlbum][MfFragmentMainOnline][onPause]:... "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "MfFragmentMainOnline"

    const-string v1, "[HTCAlbum][MfFragmentMainOnline][onResume]:... "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->onResume()V

    return-void
.end method

.method public paneRight()Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->mIsExternal:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->mIsOpensenseAlbum:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->mGotoScene:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public sceneFactory(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    .locals 2

    const/4 v0, 0x0

    const-string v1, "SceneOnlineFolder"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;

    invoke-direct {v0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;-><init>()V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "SceneOnlinePhotoThumbnail"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;

    invoke-direct {v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;-><init>()V

    goto :goto_0

    :cond_2
    const-string v1, "SceneOnlinePhotoFullscreen"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    invoke-direct {v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;-><init>()V

    goto :goto_0

    :cond_3
    const-string v1, "ScenePhotoTagEditor"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;

    invoke-direct {v0}, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;-><init>()V

    goto :goto_0
.end method

.method public sceneSourceFactory(Ljava/lang/String;)Lcom/htc/album/UploadEditor/ISceneSourcePlugin;
    .locals 4

    const-string v1, "MfFragmentMainOnline"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][MfFragmentMainOnline][sceneSourceFactory]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/htc/album/UploadEditor/SceneSourceLive;

    invoke-direct {v0}, Lcom/htc/album/UploadEditor/SceneSourceLive;-><init>()V

    return-object v0
.end method
