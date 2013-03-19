.class Lcom/htc/music/HtcMusic$36;
.super Ljava/lang/Object;
.source "HtcMusic.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/HtcMusic;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/HtcMusic;

.field final synthetic val$isOnlineMode:Z


# direct methods
.method constructor <init>(Lcom/htc/music/HtcMusic;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5955
    iput-object p1, p0, Lcom/htc/music/HtcMusic$36;->this$0:Lcom/htc/music/HtcMusic;

    iput-boolean p2, p0, Lcom/htc/music/HtcMusic$36;->val$isOnlineMode:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 5957
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 5959
    packed-switch p2, :pswitch_data_0

    .line 6027
    :cond_0
    :goto_0
    return-void

    .line 5962
    :pswitch_0
    iget-boolean v1, p0, Lcom/htc/music/HtcMusic$36;->val$isOnlineMode:Z

    if-eqz v1, :cond_1

    .line 5963
    iget-object v1, p0, Lcom/htc/music/HtcMusic$36;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;
    invoke-static {v1}, Lcom/htc/music/HtcMusic;->access$5700(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;

    move-result-object v1

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lcom/htc/music/HtcMusic$NonUiHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 5966
    :cond_1
    iget-object v1, p0, Lcom/htc/music/HtcMusic$36;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mDlnaMode:I
    invoke-static {v1}, Lcom/htc/music/HtcMusic;->access$5600(Lcom/htc/music/HtcMusic;)I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/music/HtcMusic$36;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mDlnaMode:I
    invoke-static {v1}, Lcom/htc/music/HtcMusic;->access$5600(Lcom/htc/music/HtcMusic;)I

    move-result v1

    if-ne v1, v4, :cond_3

    .line 5968
    :cond_2
    iget-object v1, p0, Lcom/htc/music/HtcMusic$36;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v1, v1, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v1, :cond_0

    .line 5970
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/HtcMusic$36;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v2, p0, Lcom/htc/music/HtcMusic$36;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v2, v2, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getAlbumId()I

    move-result v2

    #calls: Lcom/htc/music/HtcMusic;->startAlbumDetail(I)V
    invoke-static {v1, v2}, Lcom/htc/music/HtcMusic;->access$8900(Lcom/htc/music/HtcMusic;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5971
    :catch_0
    move-exception v0

    .line 5972
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 5975
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_3
    iget-object v1, p0, Lcom/htc/music/HtcMusic$36;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mDlnaMode:I
    invoke-static {v1}, Lcom/htc/music/HtcMusic;->access$5600(Lcom/htc/music/HtcMusic;)I

    move-result v1

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/htc/music/HtcMusic$36;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mDlnaMode:I
    invoke-static {v1}, Lcom/htc/music/HtcMusic;->access$5600(Lcom/htc/music/HtcMusic;)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 5977
    :cond_4
    iget-object v1, p0, Lcom/htc/music/HtcMusic$36;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v2, p0, Lcom/htc/music/HtcMusic$36;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mTrackName:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/htc/music/HtcMusic;->access$4700(Lcom/htc/music/HtcMusic;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/HtcMusic$36;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mAlbumName:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/HtcMusic;->access$8500(Lcom/htc/music/HtcMusic;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/HtcMusic$36;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mArtistName:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/music/HtcMusic;->access$8600(Lcom/htc/music/HtcMusic;)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/htc/music/HtcMusic;->shareMusicText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3, v4}, Lcom/htc/music/HtcMusic;->access$8700(Lcom/htc/music/HtcMusic;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5983
    :pswitch_1
    iget-boolean v1, p0, Lcom/htc/music/HtcMusic$36;->val$isOnlineMode:Z

    if-eqz v1, :cond_5

    .line 5984
    iget-object v1, p0, Lcom/htc/music/HtcMusic$36;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v2, p0, Lcom/htc/music/HtcMusic$36;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mTrackName:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/htc/music/HtcMusic;->access$4700(Lcom/htc/music/HtcMusic;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/HtcMusic$36;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mAlbumName:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/HtcMusic;->access$8500(Lcom/htc/music/HtcMusic;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/HtcMusic$36;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mArtistName:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/music/HtcMusic;->access$8600(Lcom/htc/music/HtcMusic;)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/htc/music/HtcMusic;->shareOnlineMusicText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3, v4}, Lcom/htc/music/HtcMusic;->access$9000(Lcom/htc/music/HtcMusic;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5988
    :cond_5
    iget-object v1, p0, Lcom/htc/music/HtcMusic$36;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mDlnaMode:I
    invoke-static {v1}, Lcom/htc/music/HtcMusic;->access$5600(Lcom/htc/music/HtcMusic;)I

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/htc/music/HtcMusic$36;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mDlnaMode:I
    invoke-static {v1}, Lcom/htc/music/HtcMusic;->access$5600(Lcom/htc/music/HtcMusic;)I

    move-result v1

    if-ne v1, v4, :cond_7

    .line 5990
    :cond_6
    iget-object v1, p0, Lcom/htc/music/HtcMusic$36;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->addtoPlaylist()V
    invoke-static {v1}, Lcom/htc/music/HtcMusic;->access$9100(Lcom/htc/music/HtcMusic;)V

    goto/16 :goto_0

    .line 5991
    :cond_7
    iget-object v1, p0, Lcom/htc/music/HtcMusic$36;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mDlnaMode:I
    invoke-static {v1}, Lcom/htc/music/HtcMusic;->access$5600(Lcom/htc/music/HtcMusic;)I

    move-result v1

    if-eq v1, v2, :cond_8

    iget-object v1, p0, Lcom/htc/music/HtcMusic$36;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mDlnaMode:I
    invoke-static {v1}, Lcom/htc/music/HtcMusic;->access$5600(Lcom/htc/music/HtcMusic;)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 5993
    :cond_8
    iget-object v1, p0, Lcom/htc/music/HtcMusic$36;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->doSearch()V
    invoke-static {v1}, Lcom/htc/music/HtcMusic;->access$9200(Lcom/htc/music/HtcMusic;)V

    goto/16 :goto_0

    .line 5997
    :pswitch_2
    iget-boolean v1, p0, Lcom/htc/music/HtcMusic$36;->val$isOnlineMode:Z

    if-eqz v1, :cond_9

    .line 5999
    iget-object v1, p0, Lcom/htc/music/HtcMusic$36;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v2, p0, Lcom/htc/music/HtcMusic$36;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mTrackName:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/htc/music/HtcMusic;->access$4700(Lcom/htc/music/HtcMusic;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/HtcMusic$36;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mAlbumName:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/HtcMusic;->access$8500(Lcom/htc/music/HtcMusic;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/HtcMusic$36;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mArtistName:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/music/HtcMusic;->access$8600(Lcom/htc/music/HtcMusic;)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/htc/music/HtcMusic;->searchRelatedWeibo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3, v4}, Lcom/htc/music/HtcMusic;->access$9300(Lcom/htc/music/HtcMusic;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6004
    :cond_9
    iget-object v1, p0, Lcom/htc/music/HtcMusic$36;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mDlnaMode:I
    invoke-static {v1}, Lcom/htc/music/HtcMusic;->access$5600(Lcom/htc/music/HtcMusic;)I

    move-result v1

    if-eq v1, v2, :cond_a

    iget-object v1, p0, Lcom/htc/music/HtcMusic$36;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mDlnaMode:I
    invoke-static {v1}, Lcom/htc/music/HtcMusic;->access$5600(Lcom/htc/music/HtcMusic;)I

    move-result v1

    if-ne v1, v3, :cond_b

    .line 6005
    :cond_a
    iget-object v1, p0, Lcom/htc/music/HtcMusic$36;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v2, p0, Lcom/htc/music/HtcMusic$36;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mTrackName:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/htc/music/HtcMusic;->access$4700(Lcom/htc/music/HtcMusic;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/HtcMusic$36;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mAlbumName:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/HtcMusic;->access$8500(Lcom/htc/music/HtcMusic;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/HtcMusic$36;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mArtistName:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/music/HtcMusic;->access$8600(Lcom/htc/music/HtcMusic;)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/htc/music/HtcMusic;->searchRelatedWeibo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3, v4}, Lcom/htc/music/HtcMusic;->access$9300(Lcom/htc/music/HtcMusic;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6010
    :cond_b
    iget-object v1, p0, Lcom/htc/music/HtcMusic$36;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->chooseShareType()V
    invoke-static {v1}, Lcom/htc/music/HtcMusic;->access$9400(Lcom/htc/music/HtcMusic;)V

    goto/16 :goto_0

    .line 6014
    :pswitch_3
    iget-object v1, p0, Lcom/htc/music/HtcMusic$36;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->setRingtone()V
    invoke-static {v1}, Lcom/htc/music/HtcMusic;->access$9500(Lcom/htc/music/HtcMusic;)V

    goto/16 :goto_0

    .line 6017
    :pswitch_4
    iget-object v1, p0, Lcom/htc/music/HtcMusic$36;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->doSearch()V
    invoke-static {v1}, Lcom/htc/music/HtcMusic;->access$9200(Lcom/htc/music/HtcMusic;)V

    goto/16 :goto_0

    .line 6023
    :pswitch_5
    iget-object v1, p0, Lcom/htc/music/HtcMusic$36;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v2, p0, Lcom/htc/music/HtcMusic$36;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mTrackName:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/htc/music/HtcMusic;->access$4700(Lcom/htc/music/HtcMusic;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/HtcMusic$36;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mAlbumName:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/HtcMusic;->access$8500(Lcom/htc/music/HtcMusic;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/HtcMusic$36;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mArtistName:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/music/HtcMusic;->access$8600(Lcom/htc/music/HtcMusic;)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/htc/music/HtcMusic;->searchRelatedWeibo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3, v4}, Lcom/htc/music/HtcMusic;->access$9300(Lcom/htc/music/HtcMusic;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5959
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
