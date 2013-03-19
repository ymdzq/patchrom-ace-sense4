.class Lcom/htc/music/HtcMusic$52;
.super Landroid/widget/ArrayAdapter;
.source "HtcMusic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/HtcMusic;->createDownloadAlbumArtDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/HtcMusic;


# direct methods
.method constructor <init>(Lcom/htc/music/HtcMusic;Landroid/content/Context;I[Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 8361
    iput-object p1, p0, Lcom/htc/music/HtcMusic$52;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 8364
    const-string v5, "[HtcMusic]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getView position = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8365
    packed-switch p1, :pswitch_data_0

    .line 8435
    :goto_0
    return-object p2

    .line 8367
    :pswitch_0
    if-nez p2, :cond_1

    .line 8368
    iget-object v5, p0, Lcom/htc/music/HtcMusic$52;->this$0:Lcom/htc/music/HtcMusic;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030021

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 8370
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 8379
    :cond_0
    :goto_1
    const v5, 0x7f080025

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItem2LineText;

    .line 8381
    .local v0, autoUpdateTextView:Lcom/htc/widget/HtcListItem2LineText;
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 8382
    const v5, 0x7f0700ef

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 8383
    const v5, 0x7f080062

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcCheckBox;

    .line 8385
    .local v1, checkBox:Lcom/htc/widget/HtcCheckBox;
    iget-object v5, p0, Lcom/htc/music/HtcMusic$52;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mIsAutoUpdate:Z
    invoke-static {v5}, Lcom/htc/music/HtcMusic;->access$11100(Lcom/htc/music/HtcMusic;)Z

    move-result v5

    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    goto :goto_0

    .line 8372
    .end local v0           #autoUpdateTextView:Lcom/htc/widget/HtcListItem2LineText;
    .end local v1           #checkBox:Lcom/htc/widget/HtcCheckBox;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 8373
    .local v2, tag:Ljava/lang/Integer;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_0

    .line 8374
    :cond_2
    iget-object v5, p0, Lcom/htc/music/HtcMusic$52;->this$0:Lcom/htc/music/HtcMusic;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030021

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 8376
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 8389
    .end local v2           #tag:Ljava/lang/Integer;
    :pswitch_1
    if-nez p2, :cond_4

    .line 8390
    iget-object v5, p0, Lcom/htc/music/HtcMusic$52;->this$0:Lcom/htc/music/HtcMusic;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030022

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 8392
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 8401
    :cond_3
    :goto_2
    const v5, 0x7f080025

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItem2LineText;

    .line 8404
    .local v3, updateAllAlbumTextView:Lcom/htc/widget/HtcListItem2LineText;
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 8405
    const v5, 0x7f0700f2

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 8406
    iget-object v5, p0, Lcom/htc/music/HtcMusic$52;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mIsAutoUpdate:Z
    invoke-static {v5}, Lcom/htc/music/HtcMusic;->access$11100(Lcom/htc/music/HtcMusic;)Z

    move-result v5

    if-nez v5, :cond_6

    const/4 v5, 0x1

    :goto_3
    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListItem2LineText;->setEnabled(Z)V

    goto/16 :goto_0

    .line 8394
    .end local v3           #updateAllAlbumTextView:Lcom/htc/widget/HtcListItem2LineText;
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 8395
    .restart local v2       #tag:Ljava/lang/Integer;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    .line 8396
    :cond_5
    iget-object v5, p0, Lcom/htc/music/HtcMusic$52;->this$0:Lcom/htc/music/HtcMusic;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030022

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 8398
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    .line 8406
    .end local v2           #tag:Ljava/lang/Integer;
    .restart local v3       #updateAllAlbumTextView:Lcom/htc/widget/HtcListItem2LineText;
    :cond_6
    const/4 v5, 0x0

    goto :goto_3

    .line 8409
    .end local v3           #updateAllAlbumTextView:Lcom/htc/widget/HtcListItem2LineText;
    :pswitch_2
    if-nez p2, :cond_8

    .line 8410
    iget-object v5, p0, Lcom/htc/music/HtcMusic$52;->this$0:Lcom/htc/music/HtcMusic;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030022

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 8412
    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 8421
    :cond_7
    :goto_4
    const v5, 0x7f080025

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListItem2LineText;

    .line 8423
    .local v4, updateCurrentTextView:Lcom/htc/widget/HtcListItem2LineText;
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 8424
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItem2LineText;->setEnabled(Z)V

    .line 8425
    iget-object v5, p0, Lcom/htc/music/HtcMusic$52;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mIsRevertCurrent:Z
    invoke-static {v5}, Lcom/htc/music/HtcMusic;->access$11200(Lcom/htc/music/HtcMusic;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 8426
    const v5, 0x7f0700f0

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    goto/16 :goto_0

    .line 8414
    .end local v4           #updateCurrentTextView:Lcom/htc/widget/HtcListItem2LineText;
    :cond_8
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 8415
    .restart local v2       #tag:Ljava/lang/Integer;
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_7

    .line 8416
    :cond_9
    iget-object v5, p0, Lcom/htc/music/HtcMusic$52;->this$0:Lcom/htc/music/HtcMusic;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030022

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 8418
    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_4

    .line 8428
    .end local v2           #tag:Ljava/lang/Integer;
    .restart local v4       #updateCurrentTextView:Lcom/htc/widget/HtcListItem2LineText;
    :cond_a
    const v5, 0x7f0700f1

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    goto/16 :goto_0

    .line 8365
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
