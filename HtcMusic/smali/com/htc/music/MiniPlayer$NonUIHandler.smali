.class Lcom/htc/music/MiniPlayer$NonUIHandler;
.super Landroid/os/Handler;
.source "MiniPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/MiniPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NonUIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/MiniPlayer;


# direct methods
.method public constructor <init>(Lcom/htc/music/MiniPlayer;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 1045
    iput-object p1, p0, Lcom/htc/music/MiniPlayer$NonUIHandler;->this$0:Lcom/htc/music/MiniPlayer;

    .line 1046
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1047
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1050
    iget v10, p1, Landroid/os/Message;->what:I

    packed-switch v10, :pswitch_data_0

    .line 1157
    :cond_0
    :goto_0
    return-void

    .line 1052
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1053
    .local v0, albumArtPath:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1054
    const/4 v9, 0x1

    .line 1056
    .local v9, sampleSize:I
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1057
    .local v2, bitmapOptions:Landroid/graphics/BitmapFactory$Options;
    sget-object v10, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v10, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1058
    iput-boolean v11, v2, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 1059
    iput v12, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1060
    iput-boolean v12, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1061
    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1062
    iget v10, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    shr-int/lit8 v6, v10, 0x1

    .line 1063
    .local v6, nextWidth:I
    iget v10, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    shr-int/lit8 v5, v10, 0x1

    .line 1064
    .local v5, nextHeight:I
    :goto_1
    iget-object v10, p0, Lcom/htc/music/MiniPlayer$NonUIHandler;->this$0:Lcom/htc/music/MiniPlayer;

    #getter for: Lcom/htc/music/MiniPlayer;->mMaxNotifyAlbumArtSideLen:I
    invoke-static {v10}, Lcom/htc/music/MiniPlayer;->access$200(Lcom/htc/music/MiniPlayer;)I

    move-result v10

    if-le v6, v10, :cond_1

    iget-object v10, p0, Lcom/htc/music/MiniPlayer$NonUIHandler;->this$0:Lcom/htc/music/MiniPlayer;

    #getter for: Lcom/htc/music/MiniPlayer;->mMaxNotifyAlbumArtSideLen:I
    invoke-static {v10}, Lcom/htc/music/MiniPlayer;->access$200(Lcom/htc/music/MiniPlayer;)I

    move-result v10

    if-le v5, v10, :cond_1

    .line 1065
    shl-int/lit8 v9, v9, 0x1

    .line 1066
    shr-int/lit8 v6, v6, 0x1

    .line 1067
    shr-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1070
    :cond_1
    iput v9, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1071
    iput-boolean v11, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1072
    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1075
    .local v1, bitmap:Landroid/graphics/Bitmap;
    iget-object v10, p0, Lcom/htc/music/MiniPlayer$NonUIHandler;->this$0:Lcom/htc/music/MiniPlayer;

    #getter for: Lcom/htc/music/MiniPlayer;->mUIHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/htc/music/MiniPlayer;->access$300(Lcom/htc/music/MiniPlayer;)Landroid/os/Handler;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    .line 1076
    .local v4, msgUI:Landroid/os/Message;
    iput-object v0, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1078
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1079
    .local v3, data:Landroid/os/Bundle;
    const-string v10, "DECODED_BITMAP"

    invoke-virtual {v3, v10, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1080
    invoke-virtual {v4, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1082
    iget-object v10, p0, Lcom/htc/music/MiniPlayer$NonUIHandler;->this$0:Lcom/htc/music/MiniPlayer;

    #getter for: Lcom/htc/music/MiniPlayer;->mUIHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/htc/music/MiniPlayer;->access$300(Lcom/htc/music/MiniPlayer;)Landroid/os/Handler;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1093
    .end local v0           #albumArtPath:Ljava/lang/String;
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #bitmapOptions:Landroid/graphics/BitmapFactory$Options;
    .end local v3           #data:Landroid/os/Bundle;
    .end local v4           #msgUI:Landroid/os/Message;
    .end local v5           #nextHeight:I
    .end local v6           #nextWidth:I
    .end local v9           #sampleSize:I
    :pswitch_1
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .line 1094
    .local v7, onlineAlbumArtPath:Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 1095
    invoke-static {v7}, Lcom/htc/music/online/ImageCacheManager;->getImageFromCacheOrURL(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1098
    .local v8, onlineBitmap:Landroid/graphics/Bitmap;
    iget-object v10, p0, Lcom/htc/music/MiniPlayer$NonUIHandler;->this$0:Lcom/htc/music/MiniPlayer;

    #getter for: Lcom/htc/music/MiniPlayer;->mUIHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/htc/music/MiniPlayer;->access$300(Lcom/htc/music/MiniPlayer;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x2715

    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 1099
    .restart local v4       #msgUI:Landroid/os/Message;
    iput-object v7, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1101
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1102
    .restart local v3       #data:Landroid/os/Bundle;
    const-string v10, "DECODED_BITMAP"

    invoke-virtual {v3, v10, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1103
    invoke-virtual {v4, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1105
    iget-object v10, p0, Lcom/htc/music/MiniPlayer$NonUIHandler;->this$0:Lcom/htc/music/MiniPlayer;

    #getter for: Lcom/htc/music/MiniPlayer;->mUIHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/htc/music/MiniPlayer;->access$300(Lcom/htc/music/MiniPlayer;)Landroid/os/Handler;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1050
    nop

    :pswitch_data_0
    .packed-switch 0x2714
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
