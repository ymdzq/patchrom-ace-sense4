.class Lcom/htc/app/FilePickerCore$SdcardListener;
.super Landroid/content/BroadcastReceiver;
.source "FilePickerCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/FilePickerCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SdcardListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/app/FilePickerCore;


# direct methods
.method constructor <init>(Lcom/htc/app/FilePickerCore;)V
    .locals 0
    .parameter

    .prologue
    .line 3101
    iput-object p1, p0, Lcom/htc/app/FilePickerCore$SdcardListener;->this$0:Lcom/htc/app/FilePickerCore;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 3105
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3109
    .local v0, action:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/app/FilePickerCore$SdcardListener;->this$0:Lcom/htc/app/FilePickerCore;

    #calls: Lcom/htc/app/FilePickerCore;->checkHTCLandscapeEnabled(Z)V
    invoke-static {v3, v4}, Lcom/htc/app/FilePickerCore;->access$5100(Lcom/htc/app/FilePickerCore;Z)V

    .line 3110
    iget-object v3, p0, Lcom/htc/app/FilePickerCore$SdcardListener;->this$0:Lcom/htc/app/FilePickerCore;

    #calls: Lcom/htc/app/FilePickerCore;->getAppDropDownLocalAdapter()Lcom/htc/app/FilePickerAppDropDownAdapter;
    invoke-static {v3}, Lcom/htc/app/FilePickerCore;->access$5200(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerAppDropDownAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/app/FilePickerAppDropDownAdapter;->refreshAppListItems()V

    .line 3111
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->isInternalStorageAvailable()Z

    move-result v2

    .line 3112
    .local v2, intStorageAvailable:Z
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->isExternalStorageAvailable()Z

    move-result v1

    .line 3113
    .local v1, extStorageAvailable:Z
    if-nez v2, :cond_1

    if-nez v1, :cond_1

    .line 3114
    iget-object v3, p0, Lcom/htc/app/FilePickerCore$SdcardListener;->this$0:Lcom/htc/app/FilePickerCore;

    const v4, 0x20401f9

    #calls: Lcom/htc/app/FilePickerCore;->showNoSdCard(I)V
    invoke-static {v3, v4}, Lcom/htc/app/FilePickerCore;->access$5300(Lcom/htc/app/FilePickerCore;I)V

    .line 3161
    :cond_0
    :goto_0
    return-void

    .line 3117
    :cond_1
    iget-object v3, p0, Lcom/htc/app/FilePickerCore$SdcardListener;->this$0:Lcom/htc/app/FilePickerCore;

    #calls: Lcom/htc/app/FilePickerCore;->checkActionBarContainerBackUpEnabled()V
    invoke-static {v3}, Lcom/htc/app/FilePickerCore;->access$3100(Lcom/htc/app/FilePickerCore;)V

    .line 3120
    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3121
    iget-object v3, p0, Lcom/htc/app/FilePickerCore$SdcardListener;->this$0:Lcom/htc/app/FilePickerCore;

    invoke-virtual {v3}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->closeOptionsMenu()V

    .line 3123
    iget-object v3, p0, Lcom/htc/app/FilePickerCore$SdcardListener;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mDbHelper:Lcom/htc/app/FilePickerDBHelper;
    invoke-static {v3}, Lcom/htc/app/FilePickerCore;->access$5400(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerDBHelper;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 3124
    iget-object v3, p0, Lcom/htc/app/FilePickerCore$SdcardListener;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mDbHelper:Lcom/htc/app/FilePickerDBHelper;
    invoke-static {v3}, Lcom/htc/app/FilePickerCore;->access$5400(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerDBHelper;

    invoke-static {}, Lcom/htc/app/FilePickerDBHelper;->refreshSDCardID()V

    .line 3127
    :cond_2
    iget-object v3, p0, Lcom/htc/app/FilePickerCore$SdcardListener;->this$0:Lcom/htc/app/FilePickerCore;

    #calls: Lcom/htc/app/FilePickerCore;->NotifyToDoTask(I)V
    invoke-static {v3, v4}, Lcom/htc/app/FilePickerCore;->access$700(Lcom/htc/app/FilePickerCore;I)V

    goto :goto_0

    .line 3128
    :cond_3
    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3130
    :cond_4
    iget-object v3, p0, Lcom/htc/app/FilePickerCore$SdcardListener;->this$0:Lcom/htc/app/FilePickerCore;

    invoke-virtual {v3}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->closeOptionsMenu()V

    .line 3131
    iget-object v3, p0, Lcom/htc/app/FilePickerCore$SdcardListener;->this$0:Lcom/htc/app/FilePickerCore;

    #calls: Lcom/htc/app/FilePickerCore;->hideSearchBar()V
    invoke-static {v3}, Lcom/htc/app/FilePickerCore;->access$1000(Lcom/htc/app/FilePickerCore;)V

    .line 3132
    iget-object v3, p0, Lcom/htc/app/FilePickerCore$SdcardListener;->this$0:Lcom/htc/app/FilePickerCore;

    #calls: Lcom/htc/app/FilePickerCore;->hideDialog()V
    invoke-static {v3}, Lcom/htc/app/FilePickerCore;->access$5500(Lcom/htc/app/FilePickerCore;)V

    .line 3134
    iget-object v3, p0, Lcom/htc/app/FilePickerCore$SdcardListener;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;
    invoke-static {v3}, Lcom/htc/app/FilePickerCore;->access$5600(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerListAdapter;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 3135
    iget-object v3, p0, Lcom/htc/app/FilePickerCore$SdcardListener;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;
    invoke-static {v3}, Lcom/htc/app/FilePickerCore;->access$5600(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/app/FilePickerListAdapter;->stopScan()V

    .line 3136
    iget-object v3, p0, Lcom/htc/app/FilePickerCore$SdcardListener;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;
    invoke-static {v3}, Lcom/htc/app/FilePickerCore;->access$5600(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/app/FilePickerListAdapter;->notifyDataSetInvalidated()V

    .line 3144
    :cond_5
    iget-object v3, p0, Lcom/htc/app/FilePickerCore$SdcardListener;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mFavoritesAdapter:Lcom/htc/app/FilePickerListAdapter;
    invoke-static {v3}, Lcom/htc/app/FilePickerCore;->access$5700(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerListAdapter;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 3145
    iget-object v3, p0, Lcom/htc/app/FilePickerCore$SdcardListener;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mFavoritesAdapter:Lcom/htc/app/FilePickerListAdapter;
    invoke-static {v3}, Lcom/htc/app/FilePickerCore;->access$5700(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/app/FilePickerListAdapter;->stopScan()V

    .line 3146
    iget-object v3, p0, Lcom/htc/app/FilePickerCore$SdcardListener;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mFavoritesAdapter:Lcom/htc/app/FilePickerListAdapter;
    invoke-static {v3}, Lcom/htc/app/FilePickerCore;->access$5700(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/app/FilePickerListAdapter;->notifyDataSetInvalidated()V

    .line 3149
    :cond_6
    iget-object v3, p0, Lcom/htc/app/FilePickerCore$SdcardListener;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mRecentAdapter:Lcom/htc/app/FilePickerListAdapter;
    invoke-static {v3}, Lcom/htc/app/FilePickerCore;->access$5800(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerListAdapter;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 3150
    iget-object v3, p0, Lcom/htc/app/FilePickerCore$SdcardListener;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mRecentAdapter:Lcom/htc/app/FilePickerListAdapter;
    invoke-static {v3}, Lcom/htc/app/FilePickerCore;->access$5800(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/app/FilePickerListAdapter;->stopScan()V

    .line 3151
    iget-object v3, p0, Lcom/htc/app/FilePickerCore$SdcardListener;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mRecentAdapter:Lcom/htc/app/FilePickerListAdapter;
    invoke-static {v3}, Lcom/htc/app/FilePickerCore;->access$5800(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/app/FilePickerListAdapter;->notifyDataSetInvalidated()V

    .line 3155
    :cond_7
    iget-object v3, p0, Lcom/htc/app/FilePickerCore$SdcardListener;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mDbHelper:Lcom/htc/app/FilePickerDBHelper;
    invoke-static {v3}, Lcom/htc/app/FilePickerCore;->access$5400(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerDBHelper;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 3156
    iget-object v3, p0, Lcom/htc/app/FilePickerCore$SdcardListener;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mDbHelper:Lcom/htc/app/FilePickerDBHelper;
    invoke-static {v3}, Lcom/htc/app/FilePickerCore;->access$5400(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerDBHelper;

    invoke-static {}, Lcom/htc/app/FilePickerDBHelper;->refreshSDCardID()V

    .line 3159
    :cond_8
    iget-object v3, p0, Lcom/htc/app/FilePickerCore$SdcardListener;->this$0:Lcom/htc/app/FilePickerCore;

    #calls: Lcom/htc/app/FilePickerCore;->NotifyToDoTask(I)V
    invoke-static {v3, v4}, Lcom/htc/app/FilePickerCore;->access$700(Lcom/htc/app/FilePickerCore;I)V

    goto/16 :goto_0
.end method
