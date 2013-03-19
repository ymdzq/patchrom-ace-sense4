.class Lcom/htc/music/util/AsyncImageDecoder$1;
.super Landroid/os/Handler;
.source "AsyncImageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/util/AsyncImageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/util/AsyncImageDecoder;


# direct methods
.method constructor <init>(Lcom/htc/music/util/AsyncImageDecoder;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/htc/music/util/AsyncImageDecoder$1;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 113
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 192
    const-string v0, "[AsyncImageDecoder]"

    const-string v1, "Something wrong in mUiHandler.handleMessage()"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 115
    :pswitch_0
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;

    .line 117
    .local v6, task:Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;
    if-eqz v6, :cond_0

    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$000(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder$1;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mReportError:Z
    invoke-static {v0}, Lcom/htc/music/util/AsyncImageDecoder;->access$100(Lcom/htc/music/util/AsyncImageDecoder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder$1;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mRecycleOnPause:Z
    invoke-static {v0}, Lcom/htc/music/util/AsyncImageDecoder;->access$200(Lcom/htc/music/util/AsyncImageDecoder;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 119
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder$1;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;
    invoke-static {v0}, Lcom/htc/music/util/AsyncImageDecoder;->access$300(Lcom/htc/music/util/AsyncImageDecoder;)Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder$1;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mPause:Z
    invoke-static {v0}, Lcom/htc/music/util/AsyncImageDecoder;->access$400(Lcom/htc/music/util/AsyncImageDecoder;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 120
    const-string v0, "[AsyncImageDecoder]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImageDecoded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder$1;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;
    invoke-static {v0}, Lcom/htc/music/util/AsyncImageDecoder;->access$300(Lcom/htc/music/util/AsyncImageDecoder;)Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    move-result-object v0

    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mKey:I
    invoke-static {v6}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$500(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)I

    move-result v1

    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$000(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)Landroid/graphics/Bitmap;

    move-result-object v2

    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mTimeStamp:J
    invoke-static {v6}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$600(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)J

    move-result-wide v3

    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mVarargs:[Ljava/lang/Object;
    invoke-static {v6}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$700(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)[Ljava/lang/Object;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;->onImageDecoded(ILandroid/graphics/Bitmap;J[Ljava/lang/Object;)V

    goto :goto_0

    .line 123
    :cond_2
    const-string v0, "[AsyncImageDecoder]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decoder paused, recycle current bitmap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$000(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 125
    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$000(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 126
    #setter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v6, v3}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$002(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 129
    :cond_3
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder$1;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #calls: Lcom/htc/music/util/AsyncImageDecoder;->add(ILcom/htc/music/util/AsyncImageDecoder$DecodeTask;)V
    invoke-static {v0, v4, v6}, Lcom/htc/music/util/AsyncImageDecoder;->access$800(Lcom/htc/music/util/AsyncImageDecoder;ILcom/htc/music/util/AsyncImageDecoder$DecodeTask;)V

    goto/16 :goto_0

    .line 134
    :cond_4
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder$1;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;
    invoke-static {v0}, Lcom/htc/music/util/AsyncImageDecoder;->access$300(Lcom/htc/music/util/AsyncImageDecoder;)Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 135
    const-string v0, "[AsyncImageDecoder]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImageDecoded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder$1;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;
    invoke-static {v0}, Lcom/htc/music/util/AsyncImageDecoder;->access$300(Lcom/htc/music/util/AsyncImageDecoder;)Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    move-result-object v0

    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mKey:I
    invoke-static {v6}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$500(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)I

    move-result v1

    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$000(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)Landroid/graphics/Bitmap;

    move-result-object v2

    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mTimeStamp:J
    invoke-static {v6}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$600(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)J

    move-result-wide v3

    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mVarargs:[Ljava/lang/Object;
    invoke-static {v6}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$700(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)[Ljava/lang/Object;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;->onImageDecoded(ILandroid/graphics/Bitmap;J[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 138
    :cond_5
    const-string v0, "[AsyncImageDecoder]"

    const-string v1, "onImageDecoded mListener == null, recycle bitmap"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$000(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$000(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 141
    #setter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v6, v3}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$002(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 151
    .end local v6           #task:Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;
    :pswitch_1
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;

    .line 153
    .restart local v6       #task:Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;
    if-eqz v6, :cond_0

    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$000(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder$1;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mReportError:Z
    invoke-static {v0}, Lcom/htc/music/util/AsyncImageDecoder;->access$100(Lcom/htc/music/util/AsyncImageDecoder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    :cond_6
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder$1;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mRecycleOnPause:Z
    invoke-static {v0}, Lcom/htc/music/util/AsyncImageDecoder;->access$200(Lcom/htc/music/util/AsyncImageDecoder;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 155
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder$1;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mOnlineListener:Lcom/htc/music/util/AsyncImageDecoder$IOnlineImageDecodeListener;
    invoke-static {v0}, Lcom/htc/music/util/AsyncImageDecoder;->access$900(Lcom/htc/music/util/AsyncImageDecoder;)Lcom/htc/music/util/AsyncImageDecoder$IOnlineImageDecodeListener;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder$1;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mPause:Z
    invoke-static {v0}, Lcom/htc/music/util/AsyncImageDecoder;->access$400(Lcom/htc/music/util/AsyncImageDecoder;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 156
    const-string v0, "[AsyncImageDecoder]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImageDecoded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder$1;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mOnlineListener:Lcom/htc/music/util/AsyncImageDecoder$IOnlineImageDecodeListener;
    invoke-static {v0}, Lcom/htc/music/util/AsyncImageDecoder;->access$900(Lcom/htc/music/util/AsyncImageDecoder;)Lcom/htc/music/util/AsyncImageDecoder$IOnlineImageDecodeListener;

    move-result-object v0

    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mKey:I
    invoke-static {v6}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$500(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)I

    move-result v1

    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$000(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)Landroid/graphics/Bitmap;

    move-result-object v2

    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mTimeStamp:J
    invoke-static {v6}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$600(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)J

    move-result-wide v3

    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mVarargs:[Ljava/lang/Object;
    invoke-static {v6}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$700(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)[Ljava/lang/Object;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/htc/music/util/AsyncImageDecoder$IOnlineImageDecodeListener;->onOnlineImageDecoded(ILandroid/graphics/Bitmap;J[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 159
    :cond_7
    const-string v0, "[AsyncImageDecoder]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decoder paused, recycle current bitmap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$000(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 161
    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$000(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 162
    #setter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v6, v3}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$002(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 165
    :cond_8
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder$1;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #calls: Lcom/htc/music/util/AsyncImageDecoder;->add(ILcom/htc/music/util/AsyncImageDecoder$DecodeTask;)V
    invoke-static {v0, v4, v6}, Lcom/htc/music/util/AsyncImageDecoder;->access$800(Lcom/htc/music/util/AsyncImageDecoder;ILcom/htc/music/util/AsyncImageDecoder$DecodeTask;)V

    goto/16 :goto_0

    .line 170
    :cond_9
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder$1;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mOnlineListener:Lcom/htc/music/util/AsyncImageDecoder$IOnlineImageDecodeListener;
    invoke-static {v0}, Lcom/htc/music/util/AsyncImageDecoder;->access$900(Lcom/htc/music/util/AsyncImageDecoder;)Lcom/htc/music/util/AsyncImageDecoder$IOnlineImageDecodeListener;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 171
    const-string v0, "[AsyncImageDecoder]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImageDecoded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder$1;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mOnlineListener:Lcom/htc/music/util/AsyncImageDecoder$IOnlineImageDecodeListener;
    invoke-static {v0}, Lcom/htc/music/util/AsyncImageDecoder;->access$900(Lcom/htc/music/util/AsyncImageDecoder;)Lcom/htc/music/util/AsyncImageDecoder$IOnlineImageDecodeListener;

    move-result-object v0

    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mKey:I
    invoke-static {v6}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$500(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)I

    move-result v1

    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$000(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)Landroid/graphics/Bitmap;

    move-result-object v2

    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mTimeStamp:J
    invoke-static {v6}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$600(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)J

    move-result-wide v3

    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mVarargs:[Ljava/lang/Object;
    invoke-static {v6}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$700(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)[Ljava/lang/Object;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/htc/music/util/AsyncImageDecoder$IOnlineImageDecodeListener;->onOnlineImageDecoded(ILandroid/graphics/Bitmap;J[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 174
    :cond_a
    const-string v0, "[AsyncImageDecoder]"

    const-string v1, "onImageDecoded mOnlineListener == null, recycle bitmap"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$000(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 176
    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$000(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 177
    #setter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v6, v3}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$002(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 187
    .end local v6           #task:Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;
    :pswitch_2
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder$1;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->quit()V

    goto/16 :goto_0

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
