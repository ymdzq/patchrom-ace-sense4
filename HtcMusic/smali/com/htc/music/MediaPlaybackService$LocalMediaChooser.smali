.class Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"

# interfaces
.implements Lcom/htc/music/MediaPlaybackService$IMediaChooser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocalMediaChooser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/MediaPlaybackService;


# direct methods
.method constructor <init>(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter

    .prologue
    .line 9761
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addRecentAlbumList()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    .line 9954
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$5400(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 9988
    :goto_0
    return-void

    .line 9956
    :cond_0
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    monitor-enter v4

    .line 9957
    :try_start_0
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v3}, Lcom/htc/music/MediaPlaybackService;->getAlbumId()I

    move-result v0

    .line 9958
    .local v0, currAlbumId:I
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Lcom/htc/music/online/MusicArrayList;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$16000(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/online/MusicArrayList;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/htc/music/online/MusicArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 9959
    .local v2, indexOfAlbumId:I
    if-nez v2, :cond_1

    .line 9960
    const-string v3, "[MediaPlaybackService]"

    const-string v5, "current album is recently album"

    invoke-static {v3, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9961
    monitor-exit v4

    goto :goto_0

    .line 9987
    .end local v0           #currAlbumId:I
    .end local v2           #indexOfAlbumId:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 9963
    .restart local v0       #currAlbumId:I
    .restart local v2       #indexOfAlbumId:I
    :cond_1
    :try_start_1
    const-string v3, "[MediaPlaybackService]"

    const-string v5, "addRecentPlayList"

    invoke-static {v3, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9965
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 9966
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Lcom/htc/music/online/MusicArrayList;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$16000(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/online/MusicArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/htc/music/online/MusicArrayList;->remove(I)Ljava/lang/Object;

    .line 9969
    :cond_2
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Lcom/htc/music/online/MusicArrayList;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$16000(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/online/MusicArrayList;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/htc/music/online/MusicArrayList;->add(ILjava/lang/Object;)V

    .line 9971
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Lcom/htc/music/online/MusicArrayList;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$16000(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/online/MusicArrayList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/music/online/MusicArrayList;->size()I

    move-result v3

    if-le v3, v7, :cond_3

    .line 9972
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Lcom/htc/music/online/MusicArrayList;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$16000(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/online/MusicArrayList;

    move-result-object v3

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Lcom/htc/music/online/MusicArrayList;->remove(I)Ljava/lang/Object;

    .line 9976
    :cond_3
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$1400(Lcom/htc/music/MediaPlaybackService;)Landroid/content/SharedPreferences;

    move-result-object v3

    if-nez v3, :cond_4

    .line 9977
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v6, "Music"

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Lcom/htc/music/MediaPlaybackService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static {v3, v5}, Lcom/htc/music/MediaPlaybackService;->access$1402(Lcom/htc/music/MediaPlaybackService;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    .line 9979
    :cond_4
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$1400(Lcom/htc/music/MediaPlaybackService;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 9980
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v1, :cond_5

    .line 9981
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService;->access$1400(Lcom/htc/music/MediaPlaybackService;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    #calls: Lcom/htc/music/MediaPlaybackService;->saveRecentAlbumList(Landroid/content/SharedPreferences$Editor;)V
    invoke-static {v3, v5}, Lcom/htc/music/MediaPlaybackService;->access$16100(Lcom/htc/music/MediaPlaybackService;Landroid/content/SharedPreferences$Editor;)V

    .line 9985
    :goto_1
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v5, "com.htc.music.recentlyplayedalbumchanged"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChangeDelay(Ljava/lang/String;)V
    invoke-static {v3, v5}, Lcom/htc/music/MediaPlaybackService;->access$8200(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 9987
    monitor-exit v4

    goto/16 :goto_0

    .line 9983
    :cond_5
    const-string v3, "[MediaPlaybackService]"

    const-string v5, "Save preference editor is null"

    invoke-static {v3, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public getAlbumArtPathFromDB(I)Ljava/lang/String;
    .locals 1
    .parameter "id"

    .prologue
    .line 10144
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBufferingPercent()I
    .locals 2

    .prologue
    .line 10149
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    monitor-enter v1

    .line 10150
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$5400(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10151
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$500(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MusicPluginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager;->getBufferingPercent()I

    move-result v0

    monitor-exit v1

    .line 10154
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x64

    monitor-exit v1

    goto :goto_0

    .line 10156
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCursorForArtPath(I)Landroid/database/Cursor;
    .locals 7
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    .line 10121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 10123
    .local v3, where:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/music/util/MusicUtils;->sMdColumns:[Ljava/lang/String;

    const-string v5, "album_key"

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 10126
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 10127
    :cond_0
    const-string v0, "[MediaPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find album with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10138
    :goto_0
    return-object v4

    .line 10131
    :cond_1
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->isMusicEnhancerEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10132
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/htc/music/util/MusicUtils;->mergeDlAlbumArt(Landroid/content/Context;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v6

    .line 10133
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_3

    .line 10134
    :cond_2
    const-string v0, "[MediaPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find album art with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v4, v6

    .line 10138
    goto :goto_0
.end method

.method public getRecentAlbumId()[I
    .locals 8

    .prologue
    .line 9991
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    monitor-enter v5

    .line 9993
    :try_start_0
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getStorageState()Ljava/lang/String;

    move-result-object v3

    .line 9994
    .local v3, status:Ljava/lang/String;
    const/4 v1, 0x0

    .line 9995
    .local v1, isMounted:Z
    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "mounted_ro"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 9997
    :cond_0
    const/4 v1, 0x1

    .line 10000
    :cond_1
    if-eqz v1, :cond_3

    .line 10001
    const-string v4, "[MediaPlaybackService]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "actuall recent album size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Lcom/htc/music/online/MusicArrayList;
    invoke-static {v7}, Lcom/htc/music/MediaPlaybackService;->access$16000(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/online/MusicArrayList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/music/online/MusicArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10006
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Lcom/htc/music/online/MusicArrayList;
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$16000(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/online/MusicArrayList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/music/online/MusicArrayList;->size()I

    move-result v4

    new-array v2, v4, [I

    .line 10007
    .local v2, localRecentAlbumId:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Lcom/htc/music/online/MusicArrayList;
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$16000(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/online/MusicArrayList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/music/online/MusicArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 10008
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mLocalRecentAlbumId:Lcom/htc/music/online/MusicArrayList;
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$16000(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/online/MusicArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/htc/music/online/MusicArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v2, v0

    .line 10007
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10010
    :cond_2
    monitor-exit v5

    .line 10012
    .end local v0           #i:I
    .end local v2           #localRecentAlbumId:[I
    :goto_1
    return-object v2

    :cond_3
    const/4 v4, 0x0

    new-array v2, v4, [I

    monitor-exit v5

    goto :goto_1

    .line 10116
    .end local v1           #isMounted:Z
    .end local v3           #status:Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public open([II)V
    .locals 8
    .parameter "list"
    .parameter "position"

    .prologue
    const/4 v7, 0x1

    .line 9770
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    monitor-enter v5

    .line 9771
    :try_start_0
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$13700(Lcom/htc/music/MediaPlaybackService;)I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_0

    .line 9772
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v6, 0x1

    #setter for: Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I
    invoke-static {v4, v6}, Lcom/htc/music/MediaPlaybackService;->access$13702(Lcom/htc/music/MediaPlaybackService;I)I

    .line 9775
    :cond_0
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v4}, Lcom/htc/music/MediaPlaybackService;->getAudioId()I

    move-result v3

    .line 9776
    .local v3, oldId:I
    array-length v1, p1

    .line 9778
    .local v1, listlength:I
    const/4 v2, 0x1

    .line 9779
    .local v2, newlist:Z
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$2800(Lcom/htc/music/MediaPlaybackService;)I

    move-result v4

    if-ne v4, v1, :cond_1

    .line 9781
    const/4 v2, 0x0

    .line 9782
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 9783
    aget v4, p1, v0

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayList:[I
    invoke-static {v6}, Lcom/htc/music/MediaPlaybackService;->access$13800(Lcom/htc/music/MediaPlaybackService;)[I

    move-result-object v6

    aget v6, v6, v0

    if-eq v4, v6, :cond_5

    .line 9784
    const/4 v2, 0x1

    .line 9790
    .end local v0           #i:I
    :cond_1
    if-eqz v2, :cond_3

    .line 9791
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mShuffleMode:I
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$13700(Lcom/htc/music/MediaPlaybackService;)I

    move-result v4

    if-ne v4, v7, :cond_6

    .line 9792
    if-gez p2, :cond_2

    .line 9793
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mRand:Lcom/htc/music/MediaPlaybackService$Shuffler;
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$13900(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$Shuffler;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/htc/music/MediaPlaybackService$Shuffler;->nextInt(I)I

    move-result p2

    .line 9797
    :cond_2
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->setShuffleSeq(II)V
    invoke-static {v4, v1, p2}, Lcom/htc/music/MediaPlaybackService;->access$14000(Lcom/htc/music/MediaPlaybackService;II)V

    .line 9798
    const/4 p2, 0x0

    .line 9800
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I
    invoke-static {v6}, Lcom/htc/music/MediaPlaybackService;->access$14100(Lcom/htc/music/MediaPlaybackService;)[I

    move-result-object v6

    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mAlbumListLen:I
    invoke-static {v7}, Lcom/htc/music/MediaPlaybackService;->access$14200(Lcom/htc/music/MediaPlaybackService;)I

    move-result v7

    #calls: Lcom/htc/music/MediaPlaybackService;->setShuffleAlbumList([II)V
    invoke-static {v4, v6, v7}, Lcom/htc/music/MediaPlaybackService;->access$14300(Lcom/htc/music/MediaPlaybackService;[II)V

    .line 9803
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mShuffleAlbumList:[I
    invoke-static {v6}, Lcom/htc/music/MediaPlaybackService;->access$14500(Lcom/htc/music/MediaPlaybackService;)[I

    move-result-object v6

    #setter for: Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I
    invoke-static {v4, v6}, Lcom/htc/music/MediaPlaybackService;->access$14402(Lcom/htc/music/MediaPlaybackService;[I)[I

    .line 9812
    :goto_1
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v6, -0x1

    #calls: Lcom/htc/music/MediaPlaybackService;->addToPlayList([II)V
    invoke-static {v4, p1, v6}, Lcom/htc/music/MediaPlaybackService;->access$14600(Lcom/htc/music/MediaPlaybackService;[II)V

    .line 9814
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v6, "com.htc.music.queuechanged"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChangeDelay(Ljava/lang/String;)V
    invoke-static {v4, v6}, Lcom/htc/music/MediaPlaybackService;->access$8200(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 9818
    :cond_3
    if-ltz p2, :cond_7

    .line 9819
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPlayPos:I
    invoke-static {v4, p2}, Lcom/htc/music/MediaPlaybackService;->access$2702(Lcom/htc/music/MediaPlaybackService;I)I

    .line 9825
    :goto_2
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$9500(Lcom/htc/music/MediaPlaybackService;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->clear()V

    .line 9827
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->saveBookmarkIfNeeded()V
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$9700(Lcom/htc/music/MediaPlaybackService;)V

    .line 9828
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->openCurrent()V

    .line 9829
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v4}, Lcom/htc/music/MediaPlaybackService;->getAudioId()I

    move-result v4

    if-eq v3, v4, :cond_4

    .line 9831
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v6, "com.htc.music.metachanged"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChangeDelay(Ljava/lang/String;)V
    invoke-static {v4, v6}, Lcom/htc/music/MediaPlaybackService;->access$8200(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 9834
    :cond_4
    monitor-exit v5

    .line 9835
    return-void

    .line 9782
    .restart local v0       #i:I
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9807
    .end local v0           #i:I
    :cond_6
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonShuffleAlbumList:[I
    invoke-static {v6}, Lcom/htc/music/MediaPlaybackService;->access$14100(Lcom/htc/music/MediaPlaybackService;)[I

    move-result-object v6

    #setter for: Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I
    invoke-static {v4, v6}, Lcom/htc/music/MediaPlaybackService;->access$14402(Lcom/htc/music/MediaPlaybackService;[I)[I

    goto :goto_1

    .line 9834
    .end local v1           #listlength:I
    .end local v2           #newlist:Z
    .end local v3           #oldId:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 9821
    .restart local v1       #listlength:I
    .restart local v2       #newlist:Z
    .restart local v3       #oldId:I
    :cond_7
    :try_start_1
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mRand:Lcom/htc/music/MediaPlaybackService$Shuffler;
    invoke-static {v6}, Lcom/htc/music/MediaPlaybackService;->access$13900(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$Shuffler;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I
    invoke-static {v7}, Lcom/htc/music/MediaPlaybackService;->access$2800(Lcom/htc/music/MediaPlaybackService;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/htc/music/MediaPlaybackService$Shuffler;->nextInt(I)I

    move-result v6

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPlayPos:I
    invoke-static {v4, v6}, Lcom/htc/music/MediaPlaybackService;->access$2702(Lcom/htc/music/MediaPlaybackService;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public openCurrent()V
    .locals 6

    .prologue
    .line 9839
    const-string v1, ""

    .line 9840
    .local v1, id:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    monitor-enter v3

    .line 9842
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v4, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mAsyncComplete:Z
    invoke-static {v2, v4}, Lcom/htc/music/MediaPlaybackService;->access$8402(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 9844
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$2800(Lcom/htc/music/MediaPlaybackService;)I

    move-result v2

    if-nez v2, :cond_1

    .line 9845
    monitor-exit v3

    .line 9863
    :cond_0
    :goto_0
    return-void

    .line 9847
    :cond_1
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayPos:I
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$2700(Lcom/htc/music/MediaPlaybackService;)I

    move-result v2

    if-ltz v2, :cond_2

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayPos:I
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$2700(Lcom/htc/music/MediaPlaybackService;)I

    move-result v2

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$2800(Lcom/htc/music/MediaPlaybackService;)I

    move-result v4

    if-lt v2, v4, :cond_3

    .line 9848
    :cond_2
    const-string v2, "[MediaPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad! we can\'t open mPlayPos "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayPos:I
    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService;->access$2700(Lcom/htc/music/MediaPlaybackService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mPlayListLen "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I
    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService;->access$2800(Lcom/htc/music/MediaPlaybackService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 9849
    monitor-exit v3

    goto :goto_0

    .line 9854
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 9851
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$5600(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    move-result-object v2

    const/4 v4, 0x0

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->stop(Z)V
    invoke-static {v2, v4}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$6700(Lcom/htc/music/MediaPlaybackService$LocalPlayer;Z)V

    .line 9852
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayList:[I
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$13800(Lcom/htc/music/MediaPlaybackService;)[I

    move-result-object v2

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayPos:I
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$2700(Lcom/htc/music/MediaPlaybackService;)I

    move-result v4

    aget v2, v2, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 9853
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v4, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mIsFileExist:Z
    invoke-static {v2, v4}, Lcom/htc/music/MediaPlaybackService;->access$10502(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 9854
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9856
    invoke-virtual {p0, v1}, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->queryMediaInfo(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 9857
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 9858
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 9859
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 5

    .prologue
    .line 10161
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    monitor-enter v2

    .line 10162
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$5400(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v0

    .line 10163
    .local v0, isPluginMode:Z
    const-string v1, "[MediaPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pause, isPluginMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10164
    if-eqz v0, :cond_0

    .line 10166
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$4700(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 10167
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$4700(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessage(I)Z

    .line 10173
    :goto_0
    monitor-exit v2

    .line 10174
    return-void

    .line 10169
    :cond_0
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$5600(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->pause()V

    .line 10170
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v1}, Lcom/htc/music/MediaPlaybackService;->printATSPauseMusictoStopLog()V

    goto :goto_0

    .line 10173
    .end local v0           #isPluginMode:Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public play()V
    .locals 5

    .prologue
    .line 9932
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "play() +++++"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9933
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    monitor-enter v1

    .line 9935
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v2, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mFFToEndIsPlaying:Z
    invoke-static {v0, v2}, Lcom/htc/music/MediaPlaybackService;->access$10602(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 9937
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$10100(Lcom/htc/music/MediaPlaybackService;)Landroid/media/AudioManager;

    move-result-object v0

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v3}, Lcom/htc/music/MediaPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/htc/music/MediaButtonIntentReceiver;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 9940
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$5400(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9942
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$4700(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 9943
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$4700(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessage(I)Z

    .line 9944
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->pauseOtherPlayer()V
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$10200(Lcom/htc/music/MediaPlaybackService;)V

    .line 9948
    :goto_0
    monitor-exit v1

    .line 9949
    return-void

    .line 9946
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$5600(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->play()V

    goto :goto_0

    .line 9948
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public queryMediaInfo(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    .line 9867
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    iget-object v2, v2, Lcom/htc/music/MediaPlaybackService;->mCursorCols:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 9869
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 9870
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 9873
    invoke-interface {v9}, Landroid/database/Cursor;->getColumnCount()I

    move-result v8

    .line 9874
    .local v8, colCount:I
    invoke-interface {v9}, Landroid/database/Cursor;->getPosition()I

    move-result v10

    .line 9875
    .local v10, position:I
    if-lez v8, :cond_0

    if-gez v10, :cond_2

    .line 9877
    :cond_0
    const-string v0, "[MediaPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openCurrent: cols count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9878
    if-eqz v9, :cond_1

    .line 9879
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 9880
    const/4 v9, 0x0

    .line 9901
    .end local v8           #colCount:I
    .end local v10           #position:I
    :cond_1
    :goto_0
    return-object v4

    .line 9887
    .restart local v8       #colCount:I
    .restart local v10       #position:I
    :cond_2
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    monitor-enter v1

    .line 9888
    :try_start_0
    invoke-virtual {p0, v9}, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->setAudioMetaData(Landroid/database/Cursor;)V

    .line 9890
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/htc/music/MediaPlaybackService;->open(Ljava/lang/String;Z)V

    .line 9892
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->isPodcast()Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$14700(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9893
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->getBookmark()J
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$14800(Lcom/htc/music/MediaPlaybackService;)J

    move-result-wide v6

    .line 9896
    .local v6, bookmark:J
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mLocalPlayer:Lcom/htc/music/MediaPlaybackService$LocalPlayer;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$5600(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$LocalPlayer;

    move-result-object v0

    const-wide/16 v2, 0x1388

    sub-long v2, v6, v2

    #calls: Lcom/htc/music/MediaPlaybackService$LocalPlayer;->seek(J)J
    invoke-static {v0, v2, v3}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->access$6300(Lcom/htc/music/MediaPlaybackService$LocalPlayer;J)J

    .line 9898
    .end local v6           #bookmark:J
    :cond_3
    monitor-exit v1

    .end local v8           #colCount:I
    .end local v10           #position:I
    :cond_4
    move-object v4, v9

    .line 9901
    goto :goto_0

    .line 9898
    .restart local v8       #colCount:I
    .restart local v10       #position:I
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAudioMetaData(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 9905
    if-nez p1, :cond_0

    .line 9906
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "setAudioMetaData, cursor = null"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 9907
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v1, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mIsFileExist:Z
    invoke-static {v0, v1}, Lcom/htc/music/MediaPlaybackService;->access$10502(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 9925
    :goto_0
    return-void

    .line 9911
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v1, "album"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/music/MediaPlaybackService;->mAlbum:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/music/MediaPlaybackService;->access$14902(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)Ljava/lang/String;

    .line 9912
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v1, "artist"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/music/MediaPlaybackService;->mArtist:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/music/MediaPlaybackService;->access$15002(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)Ljava/lang/String;

    .line 9913
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v1, "composer"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/music/MediaPlaybackService;->mComposer:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/music/MediaPlaybackService;->access$15102(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)Ljava/lang/String;

    .line 9914
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v1, "_data"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/music/MediaPlaybackService;->mData:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/music/MediaPlaybackService;->access$15202(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)Ljava/lang/String;

    .line 9915
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v1, "_display_name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/music/MediaPlaybackService;->mDisplayName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/music/MediaPlaybackService;->access$15302(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)Ljava/lang/String;

    .line 9916
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v1, "mime_type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/music/MediaPlaybackService;->mMimeType:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/music/MediaPlaybackService;->access$15402(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)Ljava/lang/String;

    .line 9917
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v1, "title"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/music/MediaPlaybackService;->mTitle:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/music/MediaPlaybackService;->access$15502(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)Ljava/lang/String;

    .line 9919
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v1, "album_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    #setter for: Lcom/htc/music/MediaPlaybackService;->mAlbumId:I
    invoke-static {v0, v1}, Lcom/htc/music/MediaPlaybackService;->access$7702(Lcom/htc/music/MediaPlaybackService;I)I

    .line 9920
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v1, "artist_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    #setter for: Lcom/htc/music/MediaPlaybackService;->mArtistId:I
    invoke-static {v0, v1}, Lcom/htc/music/MediaPlaybackService;->access$15602(Lcom/htc/music/MediaPlaybackService;I)I

    .line 9921
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v1, "bookmark"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    #setter for: Lcom/htc/music/MediaPlaybackService;->mBookmark:J
    invoke-static {v0, v1, v2}, Lcom/htc/music/MediaPlaybackService;->access$15702(Lcom/htc/music/MediaPlaybackService;J)J

    .line 9922
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    #setter for: Lcom/htc/music/MediaPlaybackService;->mId:J
    invoke-static {v0, v1, v2}, Lcom/htc/music/MediaPlaybackService;->access$15802(Lcom/htc/music/MediaPlaybackService;J)J

    .line 9923
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v1, "is_podcast"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    #setter for: Lcom/htc/music/MediaPlaybackService;->mIsPodcast:I
    invoke-static {v0, v1}, Lcom/htc/music/MediaPlaybackService;->access$15902(Lcom/htc/music/MediaPlaybackService;I)I

    .line 9924
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalMediaChooser;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v1, 0x1

    #setter for: Lcom/htc/music/MediaPlaybackService;->mIsFileExist:Z
    invoke-static {v0, v1}, Lcom/htc/music/MediaPlaybackService;->access$10502(Lcom/htc/music/MediaPlaybackService;Z)Z

    goto/16 :goto_0
.end method
