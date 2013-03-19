.class Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;
.super Ljava/lang/Thread;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

.field final synthetic val$this$0:Lcom/htc/opensense2/album/util/ImageManager;


# direct methods
.method constructor <init>(Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;Lcom/htc/opensense2/album/util/ImageManager;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;->this$1:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    iput-object p2, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;->val$this$0:Lcom/htc/opensense2/album/util/ImageManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    const/4 v12, 0x1

    invoke-virtual {p0, v12}, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;->setPriority(I)V

    const-wide/16 v9, 0x8fc

    :try_start_0
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    iget-object v9, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;->this$1:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    const/4 v10, 0x0

    #setter for: Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mIsNotify:Z
    invoke-static {v9, v10}, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->access$1002(Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;Z)Z

    iget-object v9, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;->this$1:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    #calls: Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->updateImageCountByQuery()I
    invoke-static {v9}, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->access$1100(Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;)I

    const/4 v7, 0x0

    const/4 v5, 0x0

    iget-object v9, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;->this$1:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    iget v9, v9, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mTotalCount:I

    const/16 v10, 0x65

    if-ge v9, v10, :cond_6

    iget-object v9, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;->this$1:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mGoDestroyList:Ljava/util/List;
    invoke-static {v9}, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->access$1200(Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;)Ljava/util/List;

    move-result-object v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;->this$1:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    new-instance v10, Ljava/util/ArrayList;

    const/16 v11, 0x8

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v10}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    #setter for: Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mGoDestroyList:Ljava/util/List;
    invoke-static {v9, v10}, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->access$1202(Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;Ljava/util/List;)Ljava/util/List;

    :cond_0
    iget-object v9, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;->this$1:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSubList:Ljava/util/List;
    invoke-static {v9}, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->access$1300(Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;)Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x3

    new-array v10, v10, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v9, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-object v0, v8

    array-length v4, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v6, v0, v3

    if-eqz v6, :cond_1

    iget-object v9, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;->this$1:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mGoDestroyList:Ljava/util/List;
    invoke-static {v9}, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->access$1200(Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x1

    iget-object v9, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;->this$1:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    const/4 v10, 0x0

    #calls: Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->createMiddleImageList(Z)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    invoke-static {v9, v10}, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->access$1400(Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;Z)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v5

    iget-object v9, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;->this$1:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSubList:Ljava/util/List;
    invoke-static {v9}, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->access$1300(Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;)Ljava/util/List;

    move-result-object v10

    monitor-enter v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v9, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;->this$1:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSubList:Ljava/util/List;
    invoke-static {v9}, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->access$1300(Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->clear()V

    iget-object v9, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;->this$1:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSubList:Ljava/util/List;
    invoke-static {v9}, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->access$1300(Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v9, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;->this$1:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    const/4 v11, 0x1

    #setter for: Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mStatus:I
    invoke-static {v9, v11}, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->access$1502(Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;I)I

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    sget-boolean v9, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v9, :cond_3

    const-string v9, "ImageManager"

    const-string v10, "[HTCAlbum][ImageManager][PartialImageList]: drop partial lists and create one image list"

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    const/4 v1, 0x0

    iget-object v9, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;->this$1:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mLocker:Ljava/lang/Object;
    invoke-static {v9}, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->access$1600(Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    iget-object v9, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;->this$1:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mPartialLoadListener:Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;
    invoke-static {v9}, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->access$1700(Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;)Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;

    move-result-object v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;->this$1:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mIsNotify:Z
    invoke-static {v9}, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->access$1000(Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;)Z

    move-result v9

    if-nez v9, :cond_4

    const/4 v1, 0x1

    iget-object v9, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;->this$1:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    const/4 v11, 0x1

    #setter for: Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mIsNotify:Z
    invoke-static {v9, v11}, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->access$1002(Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;Z)Z

    :cond_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-ne v12, v1, :cond_5

    if-ne v7, v12, :cond_7

    :try_start_5
    iget-object v9, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;->this$1:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mPartialLoadListener:Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;
    invoke-static {v9}, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->access$1700(Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;)Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;->this$1:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    invoke-interface {v9, v10}, Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;->onPartialListBuilt(Lcom/htc/opensense2/album/util/ImageManager$IImageList;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :cond_5
    :goto_3
    return-void

    :catchall_0
    move-exception v9

    :try_start_6
    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v9
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    move-exception v2

    const-string v9, "ImageManager"

    const-string v10, "[HTCAlbum][ImageManager][PartialImageList]: run: fail"

    invoke-static {v9, v10, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    const/4 v7, 0x0

    :try_start_8
    iget-object v9, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;->this$1:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    const/4 v10, 0x1

    #calls: Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->createMiddleImageList(Z)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    invoke-static {v9, v10}, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->access$1400(Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;Z)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v5

    iget-object v9, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;->this$1:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSubList:Ljava/util/List;
    invoke-static {v9}, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->access$1300(Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;)Ljava/util/List;

    move-result-object v10

    monitor-enter v10
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :try_start_9
    iget-object v9, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;->this$1:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mSubList:Ljava/util/List;
    invoke-static {v9}, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->access$1300(Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;)Ljava/util/List;

    move-result-object v9

    const/4 v11, 0x1

    invoke-interface {v9, v11, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v9, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;->this$1:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    const/4 v11, 0x3

    #setter for: Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mStatus:I
    invoke-static {v9, v11}, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->access$1502(Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;I)I

    monitor-exit v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    sget-boolean v9, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v9, :cond_3

    const-string v9, "ImageManager"

    const-string v10, "[HTCAlbum][ImageManager][PartialImageList]: create middle image list"

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_2

    :catchall_1
    move-exception v9

    :try_start_b
    monitor-exit v10
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    throw v9
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    :catchall_2
    move-exception v9

    :try_start_d
    monitor-exit v10
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :try_start_e
    throw v9

    :cond_7
    iget-object v9, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;->this$1:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mPartialLoadListener:Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;
    invoke-static {v9}, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->access$1700(Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;)Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;->this$1:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    iget-object v11, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList$1;->this$1:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    iget v11, v11, Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;->mPartialCount:I

    invoke-interface {v5}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v12

    invoke-interface {v9, v10, v11, v12}, Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;->onPartialListBuilt(Lcom/htc/opensense2/album/util/ImageManager$IImageList;II)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    goto :goto_3

    :catch_1
    move-exception v9

    goto/16 :goto_0
.end method
