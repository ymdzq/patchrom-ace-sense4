.class final Lcom/htc/music/online/MusicGridViewUtilForCollection$NonUiHandler;
.super Landroid/os/Handler;
.source "MusicGridViewUtilForCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/online/MusicGridViewUtilForCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NonUiHandler"
.end annotation


# static fields
.field protected static final IMAGE_PATH_UPDATE:I = 0x2

.field protected static final PARENT_MEDIA_LIST_UPDATE:I = 0x0

.field protected static final SELF_TERMINATE:I = 0x4


# instance fields
.field final synthetic this$0:Lcom/htc/music/online/MusicGridViewUtilForCollection;


# direct methods
.method public constructor <init>(Lcom/htc/music/online/MusicGridViewUtilForCollection;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 494
    iput-object p1, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$NonUiHandler;->this$0:Lcom/htc/music/online/MusicGridViewUtilForCollection;

    .line 495
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 498
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 503
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 559
    :goto_0
    :pswitch_0
    return-void

    .line 505
    :pswitch_1
    iget-object v2, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$NonUiHandler;->this$0:Lcom/htc/music/online/MusicGridViewUtilForCollection;

    #getter for: Lcom/htc/music/online/MusicGridViewUtilForCollection;->mParentMediaList:Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;
    invoke-static {v2}, Lcom/htc/music/online/MusicGridViewUtilForCollection;->access$200(Lcom/htc/music/online/MusicGridViewUtilForCollection;)Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-virtual {v3, v2}, Lcom/htc/music/online/MusicGridViewUtilForCollection$ParentMediaList;->updateMediaListData(Ljava/util/List;)V

    .line 506
    iget-object v2, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$NonUiHandler;->this$0:Lcom/htc/music/online/MusicGridViewUtilForCollection;

    iget-object v2, v2, Lcom/htc/music/online/MusicGridViewUtilForCollection;->mMusicGridViewItemUpdater:Lcom/htc/music/online/MusicGridViewUtilForCollection$MusicGridViewItemUpdater;

    invoke-interface {v2}, Lcom/htc/music/online/MusicGridViewUtilForCollection$MusicGridViewItemUpdater;->notifyAllDataChange()V

    goto :goto_0

    .line 514
    :pswitch_2
    iget-object v2, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$NonUiHandler;->this$0:Lcom/htc/music/online/MusicGridViewUtilForCollection;

    iget v3, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/htc/music/online/MusicGridViewUtilForCollection;->updateAlbumartForGenreArtist(I)V
    invoke-static {v2, v3}, Lcom/htc/music/online/MusicGridViewUtilForCollection;->access$300(Lcom/htc/music/online/MusicGridViewUtilForCollection;I)V

    .line 515
    iput-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    .line 545
    :pswitch_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Lcom/htc/sunny2/view/SSurfaceView;

    if-eqz v2, :cond_1

    .line 546
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/htc/sunny2/view/SSurfaceView;

    .line 547
    .local v1, surface:Lcom/htc/sunny2/view/SSurfaceView;
    invoke-virtual {v1}, Lcom/htc/sunny2/view/SSurfaceView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    .line 548
    .local v0, gridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    instance-of v2, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    if-eqz v2, :cond_0

    .line 549
    invoke-virtual {v0, v4}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setMediaListIHT_block(Lcom/htc/sunny2/IMediaList;)V

    .line 551
    :cond_0
    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->release()V

    .line 552
    invoke-virtual {v1, v4}, Lcom/htc/sunny2/view/SSurfaceView;->setTag(Ljava/lang/Object;)V

    .line 553
    invoke-virtual {v1}, Lcom/htc/sunny2/view/SSurfaceView;->destroy()V

    .line 555
    .end local v0           #gridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    .end local v1           #surface:Lcom/htc/sunny2/view/SSurfaceView;
    :cond_1
    iput-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 556
    iget-object v2, p0, Lcom/htc/music/online/MusicGridViewUtilForCollection$NonUiHandler;->this$0:Lcom/htc/music/online/MusicGridViewUtilForCollection;

    invoke-virtual {v2}, Lcom/htc/music/online/MusicGridViewUtilForCollection;->destroy()V

    goto :goto_0

    .line 503
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
