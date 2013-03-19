.class final Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;
.super Landroid/os/Handler;
.source "FriendsCollectionDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/online/FriendsCollectionDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UIHandler"
.end annotation


# static fields
.field private static final BACK_PRESSED:I = 0x7

.field private static final DELETE_TRACK:I = 0x8

.field private static final HIDE_EMPTY_ERROR_VIEW:I = 0x5

.field private static final NOTIFY_DATA_SET_CHANGED:I = 0x1

.field private static final REQUERY_CURSOR:I = 0xc

.field private static final SET_MAIN_TITLE:I = 0xa

.field private static final SET_SECONDARY_TITLE:I = 0xb

.field private static final SET_TITLE:I = 0x0

.field private static final SHOW_CONTACT_RINGTONE_TOAST:I = 0x2

.field private static final SHOW_DATABASE_ERROR:I = 0x3

.field private static final SHOW_EMPTY_VIEW:I = 0x4

.field private static final SHOW_SPINNER:I = 0x6

.field private static final UPDATE_ALBUM_ART:I = 0x9


# instance fields
.field final synthetic this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;


# direct methods
.method private constructor <init>(Lcom/htc/music/online/FriendsCollectionDetailActivity;)V
    .locals 3
    .parameter

    .prologue
    .line 857
    iput-object p1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    .line 858
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 860
    const-string v0, "[FriendsCollectionDetailActivity]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UIHandler="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/music/online/FriendsCollectionDetailActivity;Lcom/htc/music/online/FriendsCollectionDetailActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 828
    invoke-direct {p0, p1}, Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;-><init>(Lcom/htc/music/online/FriendsCollectionDetailActivity;)V

    return-void
.end method


# virtual methods
.method public backPressed(I)V
    .locals 3
    .parameter "delay"

    .prologue
    .line 894
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 895
    .local v0, msg:Landroid/os/Message;
    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 896
    return-void
.end method

.method public deleteTrack(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 901
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 902
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 903
    invoke-virtual {p0, v0}, Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 904
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    .line 924
    const-string v2, "[FriendsCollectionDetailActivity]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< UIHandler >>>>> + msg.what = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 998
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 928
    :sswitch_1
    iget-object v3, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 931
    :sswitch_2
    iget-object v2, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    #getter for: Lcom/htc/music/online/FriendsCollectionDetailActivity;->mAdapter:Lcom/htc/music/online/FriendsCollectionDetailActivity$DetailListAdapter;
    invoke-static {v2}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$1200(Lcom/htc/music/online/FriendsCollectionDetailActivity;)Lcom/htc/music/online/FriendsCollectionDetailActivity$DetailListAdapter;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 932
    iget-object v2, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    #getter for: Lcom/htc/music/online/FriendsCollectionDetailActivity;->mAdapter:Lcom/htc/music/online/FriendsCollectionDetailActivity$DetailListAdapter;
    invoke-static {v2}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$1200(Lcom/htc/music/online/FriendsCollectionDetailActivity;)Lcom/htc/music/online/FriendsCollectionDetailActivity$DetailListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/music/online/FriendsCollectionDetailActivity$DetailListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 934
    :cond_1
    const-string v2, "[FriendsCollectionDetailActivity]"

    const-string v3, "NOTIFY_DATA_SET_CHANGED, mAdapter=null"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 937
    :sswitch_3
    iget-object v2, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    #getter for: Lcom/htc/music/online/FriendsCollectionDetailActivity;->mStopping:Z
    invoke-static {v2}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$1300(Lcom/htc/music/online/FriendsCollectionDetailActivity;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    #getter for: Lcom/htc/music/online/FriendsCollectionDetailActivity;->mRingToneHelper:Lcom/htc/music/util/RingtoneHelper;
    invoke-static {v2}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$1400(Lcom/htc/music/online/FriendsCollectionDetailActivity;)Lcom/htc/music/util/RingtoneHelper;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 938
    iget-object v2, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    #getter for: Lcom/htc/music/online/FriendsCollectionDetailActivity;->mRingToneHelper:Lcom/htc/music/util/RingtoneHelper;
    invoke-static {v2}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$1400(Lcom/htc/music/online/FriendsCollectionDetailActivity;)Lcom/htc/music/util/RingtoneHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/music/util/RingtoneHelper;->showContactRingtoneToast()V

    goto :goto_0

    .line 940
    :cond_2
    const-string v2, "[FriendsCollectionDetailActivity]"

    const-string v3, "SHOW_CONTACT_RINGTONE_TOAST, stopping or mRingToneHelper=null"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 943
    :sswitch_4
    iget-object v2, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    #setter for: Lcom/htc/music/online/FriendsCollectionDetailActivity;->mShowError:Z
    invoke-static {v2, v5}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$1502(Lcom/htc/music/online/FriendsCollectionDetailActivity;Z)Z

    .line 944
    iget-object v2, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    invoke-virtual {v2}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->showDatabaseError()V

    .line 945
    iget-object v2, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    invoke-virtual {v2}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->updateOptionsMenu()V

    goto :goto_0

    .line 948
    :sswitch_5
    iget-object v2, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    #setter for: Lcom/htc/music/online/FriendsCollectionDetailActivity;->mShowError:Z
    invoke-static {v2, v5}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$1502(Lcom/htc/music/online/FriendsCollectionDetailActivity;Z)Z

    .line 949
    iget-object v2, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    iget v3, p1, Landroid/os/Message;->arg1:I

    #setter for: Lcom/htc/music/online/FriendsCollectionDetailActivity;->mEmptyViewMsg:I
    invoke-static {v2, v3}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$1602(Lcom/htc/music/online/FriendsCollectionDetailActivity;I)I

    .line 950
    iget-object v2, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    iget-object v3, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    #getter for: Lcom/htc/music/online/FriendsCollectionDetailActivity;->mEmptyViewMsg:I
    invoke-static {v3}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$1600(Lcom/htc/music/online/FriendsCollectionDetailActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->showEmptyView(I)V

    .line 951
    iget-object v2, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    invoke-virtual {v2}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->updateOptionsMenu()V

    goto :goto_0

    .line 954
    :sswitch_6
    iget-object v2, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    const/4 v3, 0x0

    #setter for: Lcom/htc/music/online/FriendsCollectionDetailActivity;->mShowError:Z
    invoke-static {v2, v3}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$1502(Lcom/htc/music/online/FriendsCollectionDetailActivity;Z)Z

    .line 955
    iget-object v2, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    const/4 v3, -0x1

    #setter for: Lcom/htc/music/online/FriendsCollectionDetailActivity;->mEmptyViewMsg:I
    invoke-static {v2, v3}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$1602(Lcom/htc/music/online/FriendsCollectionDetailActivity;I)I

    .line 956
    iget-object v2, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    invoke-virtual {v2}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->hideEmptyErrorView()V

    .line 957
    iget-object v2, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    invoke-virtual {v2}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->updateOptionsMenu()V

    goto/16 :goto_0

    .line 960
    :sswitch_7
    iget-object v3, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v3, v2}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->showSpinner(Z)V

    goto/16 :goto_0

    .line 963
    :sswitch_8
    iget-object v2, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    invoke-virtual {v2}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->onBackPressed()V

    goto/16 :goto_0

    .line 967
    :sswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 968
    .local v0, obj:Ljava/lang/Object;
    const/4 v1, 0x0

    .line 969
    .local v1, tempBitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    instance-of v2, v0, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    .line 970
    iget-object v2, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    #getter for: Lcom/htc/music/online/FriendsCollectionDetailActivity;->mAlbumArt:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$1700(Lcom/htc/music/online/FriendsCollectionDetailActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 971
    iget-object v2, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    check-cast v0, Landroid/graphics/Bitmap;

    .end local v0           #obj:Ljava/lang/Object;
    #setter for: Lcom/htc/music/online/FriendsCollectionDetailActivity;->mAlbumArt:Landroid/graphics/Bitmap;
    invoke-static {v2, v0}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$1702(Lcom/htc/music/online/FriendsCollectionDetailActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 973
    :cond_3
    iget-object v2, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    #getter for: Lcom/htc/music/online/FriendsCollectionDetailActivity;->mAdapter:Lcom/htc/music/online/FriendsCollectionDetailActivity$DetailListAdapter;
    invoke-static {v2}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$1200(Lcom/htc/music/online/FriendsCollectionDetailActivity;)Lcom/htc/music/online/FriendsCollectionDetailActivity$DetailListAdapter;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 974
    iget-object v2, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    #getter for: Lcom/htc/music/online/FriendsCollectionDetailActivity;->mAdapter:Lcom/htc/music/online/FriendsCollectionDetailActivity$DetailListAdapter;
    invoke-static {v2}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$1200(Lcom/htc/music/online/FriendsCollectionDetailActivity;)Lcom/htc/music/online/FriendsCollectionDetailActivity$DetailListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/music/online/FriendsCollectionDetailActivity$DetailListAdapter;->notifyDataSetChanged()V

    .line 977
    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 978
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 979
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 976
    :cond_4
    const-string v2, "[FriendsCollectionDetailActivity]"

    const-string v3, "UPDATE_ALBUM_ART, stopping or mAdapter=null"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 984
    .end local v1           #tempBitmap:Landroid/graphics/Bitmap;
    :sswitch_a
    iget-object v3, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->setMainTitle(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 988
    :sswitch_b
    iget-object v3, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->setSecondaryTitle(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 995
    :sswitch_c
    iget-object v2, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;->this$0:Lcom/htc/music/online/FriendsCollectionDetailActivity;

    #calls: Lcom/htc/music/online/FriendsCollectionDetailActivity;->checkLogin()V
    invoke-static {v2}, Lcom/htc/music/online/FriendsCollectionDetailActivity;->access$1800(Lcom/htc/music/online/FriendsCollectionDetailActivity;)V

    goto/16 :goto_0

    .line 926
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x6 -> :sswitch_7
        0x7 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_0
        0x186a1 -> :sswitch_c
    .end sparse-switch
.end method

.method public hideEmptyErrorViewUI()V
    .locals 1

    .prologue
    .line 886
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;->sendEmptyMessage(I)Z

    .line 887
    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 868
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;->sendEmptyMessage(I)Z

    .line 869
    return-void
.end method

.method public showContactRingtoneToast()V
    .locals 1

    .prologue
    .line 872
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;->sendEmptyMessage(I)Z

    .line 873
    return-void
.end method

.method public showSpinnerUI(Z)V
    .locals 2
    .parameter "b"

    .prologue
    .line 890
    const/4 v0, 0x6

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 891
    return-void
.end method

.method public updateAlbumArt(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "albumArt"

    .prologue
    .line 907
    const/16 v0, 0x9

    invoke-virtual {p0, v0, p1}, Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/online/FriendsCollectionDetailActivity$UIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 908
    return-void
.end method
