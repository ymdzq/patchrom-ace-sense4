.class final Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;
.super Landroid/os/Handler;
.source "AsyncImageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/util/AsyncImageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NonUiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/util/AsyncImageDecoder;


# direct methods
.method public constructor <init>(Lcom/htc/music/util/AsyncImageDecoder;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 885
    iput-object p1, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    .line 886
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 887
    return-void
.end method

.method private doOnlineDecode()V
    .locals 15

    .prologue
    const-wide/16 v13, 0x0

    const/4 v12, 0x4

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 1005
    const/4 v6, 0x0

    .line 1007
    .local v6, task:Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mSyncObject:Ljava/lang/Object;
    invoke-static {v7}, Lcom/htc/music/util/AsyncImageDecoder;->access$1100(Lcom/htc/music/util/AsyncImageDecoder;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 1008
    :try_start_0
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #calls: Lcom/htc/music/util/AsyncImageDecoder;->removeFirstVisibleTask()Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;
    invoke-static {v7}, Lcom/htc/music/util/AsyncImageDecoder;->access$1200(Lcom/htc/music/util/AsyncImageDecoder;)Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;

    move-result-object v6

    .line 1009
    if-nez v6, :cond_0

    .line 1011
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;
    invoke-static {v7}, Lcom/htc/music/util/AsyncImageDecoder;->access$1300(Lcom/htc/music/util/AsyncImageDecoder;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;
    invoke-static {v7}, Lcom/htc/music/util/AsyncImageDecoder;->access$1300(Lcom/htc/music/util/AsyncImageDecoder;)Ljava/util/List;

    move-result-object v7

    const/4 v9, 0x0

    invoke-interface {v7, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;

    move-object v6, v0

    .line 1013
    :cond_0
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1015
    const/4 v1, 0x0

    .line 1017
    .local v1, bitmap:Landroid/graphics/Bitmap;
    if-eqz v6, :cond_4

    .line 1018
    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPath:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$1400(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 1019
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPath:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$1400(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/htc/music/util/AsyncImageDecoder;->decodeByURL(Ljava/lang/String;)Landroid/graphics/Bitmap;
    invoke-static {v7, v8}, Lcom/htc/music/util/AsyncImageDecoder;->access$3100(Lcom/htc/music/util/AsyncImageDecoder;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1022
    :cond_1
    if-eqz v1, :cond_8

    .line 1024
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mMergeAfterDecoded:Z
    invoke-static {v7}, Lcom/htc/music/util/AsyncImageDecoder;->access$2200(Lcom/htc/music/util/AsyncImageDecoder;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1025
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mMergeImage:Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/htc/music/util/AsyncImageDecoder;->access$2300(Lcom/htc/music/util/AsyncImageDecoder;)Landroid/graphics/Bitmap;

    move-result-object v7

    if-nez v7, :cond_2

    .line 1026
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/htc/music/util/AsyncImageDecoder;->access$2400(Lcom/htc/music/util/AsyncImageDecoder;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mMergeImageId:I
    invoke-static {v9}, Lcom/htc/music/util/AsyncImageDecoder;->access$2500(Lcom/htc/music/util/AsyncImageDecoder;)I

    move-result v9

    invoke-static {v8, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    #setter for: Lcom/htc/music/util/AsyncImageDecoder;->mMergeImage:Landroid/graphics/Bitmap;
    invoke-static {v7, v8}, Lcom/htc/music/util/AsyncImageDecoder;->access$2302(Lcom/htc/music/util/AsyncImageDecoder;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1028
    :cond_2
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mMergeImage:Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/htc/music/util/AsyncImageDecoder;->access$2300(Lcom/htc/music/util/AsyncImageDecoder;)Landroid/graphics/Bitmap;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 1029
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mMergeWidth:I
    invoke-static {v7}, Lcom/htc/music/util/AsyncImageDecoder;->access$2600(Lcom/htc/music/util/AsyncImageDecoder;)I

    move-result v7

    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mMergeHeight:I
    invoke-static {v8}, Lcom/htc/music/util/AsyncImageDecoder;->access$2700(Lcom/htc/music/util/AsyncImageDecoder;)I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1030
    .local v3, cleanImage:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    .line 1031
    .local v2, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1032
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mMergeImage:Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/htc/music/util/AsyncImageDecoder;->access$2300(Lcom/htc/music/util/AsyncImageDecoder;)Landroid/graphics/Bitmap;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v2, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1033
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mMergeOffsetX:I
    invoke-static {v7}, Lcom/htc/music/util/AsyncImageDecoder;->access$2800(Lcom/htc/music/util/AsyncImageDecoder;)I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mMergeOffsetY:I
    invoke-static {v8}, Lcom/htc/music/util/AsyncImageDecoder;->access$2900(Lcom/htc/music/util/AsyncImageDecoder;)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v2, v1, v7, v8, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1034
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1035
    move-object v1, v3

    .line 1039
    .end local v2           #canvas:Landroid/graphics/Canvas;
    .end local v3           #cleanImage:Landroid/graphics/Bitmap;
    :cond_3
    #setter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v6, v1}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$002(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1040
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;
    invoke-static {v7}, Lcom/htc/music/util/AsyncImageDecoder;->access$300(Lcom/htc/music/util/AsyncImageDecoder;)Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    move-result-object v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mUiHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/htc/music/util/AsyncImageDecoder;->access$3000(Lcom/htc/music/util/AsyncImageDecoder;)Landroid/os/Handler;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 1041
    invoke-virtual {p0, v12, v11, v11, v10}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 1042
    .local v5, message:Landroid/os/Message;
    iput-object v6, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1043
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mUiHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/htc/music/util/AsyncImageDecoder;->access$3000(Lcom/htc/music/util/AsyncImageDecoder;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v5, v13, v14}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1060
    .end local v5           #message:Landroid/os/Message;
    :cond_4
    :goto_0
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mSyncObject:Ljava/lang/Object;
    invoke-static {v7}, Lcom/htc/music/util/AsyncImageDecoder;->access$1100(Lcom/htc/music/util/AsyncImageDecoder;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 1061
    :cond_5
    :goto_1
    :try_start_1
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mPause:Z
    invoke-static {v7}, Lcom/htc/music/util/AsyncImageDecoder;->access$400(Lcom/htc/music/util/AsyncImageDecoder;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    if-eqz v7, :cond_9

    .line 1063
    :try_start_2
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mSyncObject:Ljava/lang/Object;
    invoke-static {v7}, Lcom/htc/music/util/AsyncImageDecoder;->access$1100(Lcom/htc/music/util/AsyncImageDecoder;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1064
    :catch_0
    move-exception v4

    .line 1065
    .local v4, e:Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1066
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mUiHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/htc/music/util/AsyncImageDecoder;->access$3000(Lcom/htc/music/util/AsyncImageDecoder;)Landroid/os/Handler;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 1067
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mUiHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/htc/music/util/AsyncImageDecoder;->access$3000(Lcom/htc/music/util/AsyncImageDecoder;)Landroid/os/Handler;

    move-result-object v7

    const/4 v9, 0x3

    invoke-virtual {v7, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1068
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mUiHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/htc/music/util/AsyncImageDecoder;->access$3000(Lcom/htc/music/util/AsyncImageDecoder;)Landroid/os/Handler;

    move-result-object v7

    const/4 v9, 0x3

    invoke-virtual {v7, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 1070
    :cond_6
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mUiHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/htc/music/util/AsyncImageDecoder;->access$3000(Lcom/htc/music/util/AsyncImageDecoder;)Landroid/os/Handler;

    move-result-object v7

    const/4 v9, 0x3

    const-wide/16 v10, 0x64

    invoke-virtual {v7, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 1074
    .end local v4           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v7

    .line 1013
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    :catchall_1
    move-exception v7

    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v7

    .line 1045
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    :cond_7
    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$000(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)Landroid/graphics/Bitmap;

    move-result-object v7

    if-eqz v7, :cond_4

    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$000(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_4

    .line 1046
    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$000(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 1047
    #setter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v6, v10}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$002(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_0

    .line 1050
    :cond_8
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mReportError:Z
    invoke-static {v7}, Lcom/htc/music/util/AsyncImageDecoder;->access$100(Lcom/htc/music/util/AsyncImageDecoder;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1051
    #setter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v6, v10}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$002(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1052
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;
    invoke-static {v7}, Lcom/htc/music/util/AsyncImageDecoder;->access$300(Lcom/htc/music/util/AsyncImageDecoder;)Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mUiHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/htc/music/util/AsyncImageDecoder;->access$3000(Lcom/htc/music/util/AsyncImageDecoder;)Landroid/os/Handler;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 1053
    invoke-virtual {p0, v12, v11, v11, v10}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 1054
    .restart local v5       #message:Landroid/os/Message;
    iput-object v6, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1055
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mUiHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/htc/music/util/AsyncImageDecoder;->access$3000(Lcom/htc/music/util/AsyncImageDecoder;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v5, v13, v14}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1074
    .end local v5           #message:Landroid/os/Message;
    :cond_9
    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1076
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;
    invoke-static {v7}, Lcom/htc/music/util/AsyncImageDecoder;->access$1300(Lcom/htc/music/util/AsyncImageDecoder;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_b

    .line 1077
    invoke-virtual {p0, v12}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->hasMessages(I)Z

    move-result v7

    if-nez v7, :cond_a

    .line 1078
    invoke-virtual {p0, v12, v13, v14}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1083
    :cond_a
    :goto_2
    return-void

    .line 1081
    :cond_b
    invoke-virtual {p0, v12}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->removeMessages(I)V

    goto :goto_2
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    .line 890
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 999
    :pswitch_0
    const-string v8, "[AsyncImageDecoder]"

    const-string v9, "Something wrong in NonUiHandler.handleMessage()."

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    :cond_0
    :goto_0
    return-void

    .line 893
    :pswitch_1
    const/4 v7, 0x0

    .line 895
    .local v7, task:Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mSyncObject:Ljava/lang/Object;
    invoke-static {v8}, Lcom/htc/music/util/AsyncImageDecoder;->access$1100(Lcom/htc/music/util/AsyncImageDecoder;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 896
    :try_start_0
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #calls: Lcom/htc/music/util/AsyncImageDecoder;->removeFirstVisibleTask()Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;
    invoke-static {v8}, Lcom/htc/music/util/AsyncImageDecoder;->access$1200(Lcom/htc/music/util/AsyncImageDecoder;)Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;

    move-result-object v7

    .line 897
    if-nez v7, :cond_1

    .line 899
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;
    invoke-static {v8}, Lcom/htc/music/util/AsyncImageDecoder;->access$1300(Lcom/htc/music/util/AsyncImageDecoder;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_1

    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;
    invoke-static {v8}, Lcom/htc/music/util/AsyncImageDecoder;->access$1300(Lcom/htc/music/util/AsyncImageDecoder;)Ljava/util/List;

    move-result-object v8

    const/4 v10, 0x0

    invoke-interface {v8, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;

    move-object v7, v0

    .line 901
    :cond_1
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 903
    const/4 v1, 0x0

    .line 905
    .local v1, bitmap:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_6

    .line 906
    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPath:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$1400(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_9

    .line 907
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPath:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$1400(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/htc/music/util/AsyncImageDecoder;->decodeByPath(Ljava/lang/String;)Landroid/graphics/Bitmap;
    invoke-static {v8, v9}, Lcom/htc/music/util/AsyncImageDecoder;->access$1500(Lcom/htc/music/util/AsyncImageDecoder;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 909
    if-nez v1, :cond_2

    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mAlbumId:I
    invoke-static {v7}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$1600(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)I

    move-result v8

    const/4 v9, -0x1

    if-le v8, v9, :cond_2

    .line 910
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mAlbumId:I
    invoke-static {v7}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$1600(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)I

    move-result v9

    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mNotScale:Z
    invoke-static {v7}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$1700(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)Z

    move-result v10

    #calls: Lcom/htc/music/util/AsyncImageDecoder;->decodeByAlbumId(IZ)Landroid/graphics/Bitmap;
    invoke-static {v8, v9, v10}, Lcom/htc/music/util/AsyncImageDecoder;->access$1800(Lcom/htc/music/util/AsyncImageDecoder;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 918
    :cond_2
    :goto_1
    if-eqz v1, :cond_c

    .line 920
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mTouchFile:Z
    invoke-static {v8}, Lcom/htc/music/util/AsyncImageDecoder;->access$2100(Lcom/htc/music/util/AsyncImageDecoder;)Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    if-eqz v7, :cond_3

    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPath:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$1400(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPath:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$1400(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_3

    .line 922
    new-instance v5, Ljava/io/File;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPath:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$1400(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 923
    .local v5, file:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 924
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/io/File;->setLastModified(J)Z

    .line 930
    .end local v5           #file:Ljava/io/File;
    :cond_3
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mMergeAfterDecoded:Z
    invoke-static {v8}, Lcom/htc/music/util/AsyncImageDecoder;->access$2200(Lcom/htc/music/util/AsyncImageDecoder;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 931
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mMergeImage:Landroid/graphics/Bitmap;
    invoke-static {v8}, Lcom/htc/music/util/AsyncImageDecoder;->access$2300(Lcom/htc/music/util/AsyncImageDecoder;)Landroid/graphics/Bitmap;

    move-result-object v8

    if-nez v8, :cond_4

    .line 932
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    iget-object v9, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/htc/music/util/AsyncImageDecoder;->access$2400(Lcom/htc/music/util/AsyncImageDecoder;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mMergeImageId:I
    invoke-static {v10}, Lcom/htc/music/util/AsyncImageDecoder;->access$2500(Lcom/htc/music/util/AsyncImageDecoder;)I

    move-result v10

    invoke-static {v9, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    #setter for: Lcom/htc/music/util/AsyncImageDecoder;->mMergeImage:Landroid/graphics/Bitmap;
    invoke-static {v8, v9}, Lcom/htc/music/util/AsyncImageDecoder;->access$2302(Lcom/htc/music/util/AsyncImageDecoder;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 934
    :cond_4
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mMergeImage:Landroid/graphics/Bitmap;
    invoke-static {v8}, Lcom/htc/music/util/AsyncImageDecoder;->access$2300(Lcom/htc/music/util/AsyncImageDecoder;)Landroid/graphics/Bitmap;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 935
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mMergeWidth:I
    invoke-static {v8}, Lcom/htc/music/util/AsyncImageDecoder;->access$2600(Lcom/htc/music/util/AsyncImageDecoder;)I

    move-result v8

    iget-object v9, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mMergeHeight:I
    invoke-static {v9}, Lcom/htc/music/util/AsyncImageDecoder;->access$2700(Lcom/htc/music/util/AsyncImageDecoder;)I

    move-result v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 936
    .local v3, cleanImage:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    .line 937
    .local v2, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 938
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mMergeImage:Landroid/graphics/Bitmap;
    invoke-static {v8}, Lcom/htc/music/util/AsyncImageDecoder;->access$2300(Lcom/htc/music/util/AsyncImageDecoder;)Landroid/graphics/Bitmap;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v2, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 939
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mMergeOffsetX:I
    invoke-static {v8}, Lcom/htc/music/util/AsyncImageDecoder;->access$2800(Lcom/htc/music/util/AsyncImageDecoder;)I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mMergeOffsetY:I
    invoke-static {v9}, Lcom/htc/music/util/AsyncImageDecoder;->access$2900(Lcom/htc/music/util/AsyncImageDecoder;)I

    move-result v9

    int-to-float v9, v9

    const/4 v10, 0x0

    invoke-virtual {v2, v1, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 940
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 941
    move-object v1, v3

    .line 945
    .end local v2           #canvas:Landroid/graphics/Canvas;
    .end local v3           #cleanImage:Landroid/graphics/Bitmap;
    :cond_5
    #setter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v7, v1}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$002(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 946
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;
    invoke-static {v8}, Lcom/htc/music/util/AsyncImageDecoder;->access$300(Lcom/htc/music/util/AsyncImageDecoder;)Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    move-result-object v8

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mUiHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/htc/music/util/AsyncImageDecoder;->access$3000(Lcom/htc/music/util/AsyncImageDecoder;)Landroid/os/Handler;

    move-result-object v8

    if-eqz v8, :cond_b

    .line 947
    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0, v8, v9, v10, v11}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 948
    .local v6, message:Landroid/os/Message;
    iput-object v7, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 949
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mUiHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/htc/music/util/AsyncImageDecoder;->access$3000(Lcom/htc/music/util/AsyncImageDecoder;)Landroid/os/Handler;

    move-result-object v8

    const-wide/16 v9, 0x0

    invoke-virtual {v8, v6, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 966
    .end local v6           #message:Landroid/os/Message;
    :cond_6
    :goto_2
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mSyncObject:Ljava/lang/Object;
    invoke-static {v8}, Lcom/htc/music/util/AsyncImageDecoder;->access$1100(Lcom/htc/music/util/AsyncImageDecoder;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 967
    :cond_7
    :goto_3
    :try_start_1
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mPause:Z
    invoke-static {v8}, Lcom/htc/music/util/AsyncImageDecoder;->access$400(Lcom/htc/music/util/AsyncImageDecoder;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    if-eqz v8, :cond_d

    .line 969
    :try_start_2
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mSyncObject:Ljava/lang/Object;
    invoke-static {v8}, Lcom/htc/music/util/AsyncImageDecoder;->access$1100(Lcom/htc/music/util/AsyncImageDecoder;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 970
    :catch_0
    move-exception v4

    .line 971
    .local v4, e:Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 972
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mUiHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/htc/music/util/AsyncImageDecoder;->access$3000(Lcom/htc/music/util/AsyncImageDecoder;)Landroid/os/Handler;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 973
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mUiHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/htc/music/util/AsyncImageDecoder;->access$3000(Lcom/htc/music/util/AsyncImageDecoder;)Landroid/os/Handler;

    move-result-object v8

    const/4 v10, 0x3

    invoke-virtual {v8, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 974
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mUiHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/htc/music/util/AsyncImageDecoder;->access$3000(Lcom/htc/music/util/AsyncImageDecoder;)Landroid/os/Handler;

    move-result-object v8

    const/4 v10, 0x3

    invoke-virtual {v8, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 976
    :cond_8
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mUiHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/htc/music/util/AsyncImageDecoder;->access$3000(Lcom/htc/music/util/AsyncImageDecoder;)Landroid/os/Handler;

    move-result-object v8

    const/4 v10, 0x3

    const-wide/16 v11, 0x64

    invoke-virtual {v8, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_3

    .line 980
    .end local v4           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v8

    .line 901
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    :catchall_1
    move-exception v8

    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v8

    .line 912
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    :cond_9
    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mAlbumId:I
    invoke-static {v7}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$1600(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)I

    move-result v8

    const/4 v9, -0x1

    if-le v8, v9, :cond_a

    .line 913
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mAlbumId:I
    invoke-static {v7}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$1600(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)I

    move-result v9

    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mNotScale:Z
    invoke-static {v7}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$1700(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)Z

    move-result v10

    #calls: Lcom/htc/music/util/AsyncImageDecoder;->decodeByAlbumId(IZ)Landroid/graphics/Bitmap;
    invoke-static {v8, v9, v10}, Lcom/htc/music/util/AsyncImageDecoder;->access$1800(Lcom/htc/music/util/AsyncImageDecoder;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    goto/16 :goto_1

    .line 914
    :cond_a
    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mDescriptor:Landroid/content/res/AssetFileDescriptor;
    invoke-static {v7}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$1900(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 915
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mDescriptor:Landroid/content/res/AssetFileDescriptor;
    invoke-static {v7}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$1900(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v9

    #calls: Lcom/htc/music/util/AsyncImageDecoder;->decodeByFileDescriptor(Landroid/content/res/AssetFileDescriptor;)Landroid/graphics/Bitmap;
    invoke-static {v8, v9}, Lcom/htc/music/util/AsyncImageDecoder;->access$2000(Lcom/htc/music/util/AsyncImageDecoder;Landroid/content/res/AssetFileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto/16 :goto_1

    .line 951
    :cond_b
    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$000(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)Landroid/graphics/Bitmap;

    move-result-object v8

    if-eqz v8, :cond_6

    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$000(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-nez v8, :cond_6

    .line 952
    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$000(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 953
    const/4 v8, 0x0

    #setter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v7, v8}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$002(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto/16 :goto_2

    .line 956
    :cond_c
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mReportError:Z
    invoke-static {v8}, Lcom/htc/music/util/AsyncImageDecoder;->access$100(Lcom/htc/music/util/AsyncImageDecoder;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 957
    const/4 v8, 0x0

    #setter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v7, v8}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$002(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 958
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;
    invoke-static {v8}, Lcom/htc/music/util/AsyncImageDecoder;->access$300(Lcom/htc/music/util/AsyncImageDecoder;)Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    move-result-object v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mUiHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/htc/music/util/AsyncImageDecoder;->access$3000(Lcom/htc/music/util/AsyncImageDecoder;)Landroid/os/Handler;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 959
    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0, v8, v9, v10, v11}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 960
    .restart local v6       #message:Landroid/os/Message;
    iput-object v7, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 961
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mUiHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/htc/music/util/AsyncImageDecoder;->access$3000(Lcom/htc/music/util/AsyncImageDecoder;)Landroid/os/Handler;

    move-result-object v8

    const-wide/16 v9, 0x0

    invoke-virtual {v8, v6, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2

    .line 980
    .end local v6           #message:Landroid/os/Message;
    :cond_d
    :try_start_5
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 982
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;
    invoke-static {v8}, Lcom/htc/music/util/AsyncImageDecoder;->access$1300(Lcom/htc/music/util/AsyncImageDecoder;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_e

    .line 983
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->hasMessages(I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 984
    const/4 v8, 0x1

    const-wide/16 v9, 0x0

    invoke-virtual {p0, v8, v9, v10}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 987
    :cond_e
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->removeMessages(I)V

    goto/16 :goto_0

    .line 994
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v7           #task:Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;
    :pswitch_2
    invoke-direct {p0}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->doOnlineDecode()V

    goto/16 :goto_0

    .line 890
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
