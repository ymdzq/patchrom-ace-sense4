.class public Lcom/m0narx/tweaks/DeleteAndRearrangeQS;
.super Landroid/app/Activity;
.source "DeleteAndRearrangeQS.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;,
        Lcom/m0narx/tweaks/DeleteAndRearrangeQS$ViewHolder;
    }
.end annotation


# instance fields
.field CancelB:Lcom/htc/widget/HtcFooterButton;

.field Cr:Landroid/content/ContentResolver;

.field private QSList:Lcom/htc/widget/HtcReorderListView;

.field SaveB:Lcom/htc/widget/HtcFooterButton;

.field inflater:Landroid/view/LayoutInflater;

.field protected mRearrangeAdapter:Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/DeleteAndRearrangeQS;)Lcom/htc/widget/HtcReorderListView;
    .locals 1

    iget-object v0, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->QSList:Lcom/htc/widget/HtcReorderListView;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 13

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iput-object v9, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->Cr:Landroid/content/ContentResolver;

    const-string v9, "layout_inflater"

    invoke-virtual {p0, v9}, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    iput-object v9, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->inflater:Landroid/view/LayoutInflater;

    const v9, 0x7f0a0062

    invoke-static {p0, v9}, Lcom/m0narx/tweaks/widgets/Misc;->setActionHtcBarTextWLand(Landroid/app/Activity;I)Lcom/htc/widget/ActionBarContainer;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/m0narx/tweaks/widgets/Misc;->enableBackButton(Landroid/app/Activity;Lcom/htc/widget/ActionBarContainer;)V

    const v9, 0x7f030005

    invoke-virtual {p0, v9}, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->setContentView(I)V

    const v9, 0x7f080009

    invoke-virtual {p0, v9}, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/htc/widget/HtcFooterButton;

    iput-object v9, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->SaveB:Lcom/htc/widget/HtcFooterButton;

    iget-object v9, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->SaveB:Lcom/htc/widget/HtcFooterButton;

    const v10, 0x7f0a007e

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    new-instance v9, Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;

    invoke-direct {v9, p0}, Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;-><init>(Lcom/m0narx/tweaks/DeleteAndRearrangeQS;)V

    iput-object v9, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->mRearrangeAdapter:Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;

    const v9, 0x7f080008

    invoke-virtual {p0, v9}, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/htc/widget/HtcFooterButton;

    iput-object v9, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->CancelB:Lcom/htc/widget/HtcFooterButton;

    iget-object v9, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->CancelB:Lcom/htc/widget/HtcFooterButton;

    const v10, 0x7f0a0034

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    iget-object v9, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->CancelB:Lcom/htc/widget/HtcFooterButton;

    const v10, 0x20800a3

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    iget-object v9, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->CancelB:Lcom/htc/widget/HtcFooterButton;

    new-instance v10, Lcom/m0narx/tweaks/DeleteAndRearrangeQS$1;

    invoke-direct {v10, p0}, Lcom/m0narx/tweaks/DeleteAndRearrangeQS$1;-><init>(Lcom/m0narx/tweaks/DeleteAndRearrangeQS;)V

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v9, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->SaveB:Lcom/htc/widget/HtcFooterButton;

    const v10, 0x20800a7

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    iget-object v9, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->SaveB:Lcom/htc/widget/HtcFooterButton;

    new-instance v10, Lcom/m0narx/tweaks/DeleteAndRearrangeQS$2;

    invoke-direct {v10, p0}, Lcom/m0narx/tweaks/DeleteAndRearrangeQS$2;-><init>(Lcom/m0narx/tweaks/DeleteAndRearrangeQS;)V

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f050027

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f050028

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    const-string v0, ""

    iget-object v9, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->Cr:Landroid/content/ContentResolver;

    const-string v10, "tweaks_quicksettings"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    iget-object v9, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->Cr:Landroid/content/ContentResolver;

    const-string v10, "tweaks_quicksettings_full"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v9, ""

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    const/4 v9, 0x0

    aget-object v2, v8, v9

    const/4 v4, 0x1

    :goto_0
    array-length v9, v8

    if-lt v4, v9, :cond_4

    move-object v0, v2

    iget-object v9, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->Cr:Landroid/content/ContentResolver;

    const-string v10, "tweaks_quicksettings_full"

    invoke-static {v9, v10, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v9, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->Cr:Landroid/content/ContentResolver;

    const-string v10, "tweaks_quicksettings"

    invoke-static {v9, v10, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    if-eqz v0, :cond_2

    const-string v9, ""

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    :cond_2
    move-object v0, v2

    :cond_3
    const/4 v4, 0x1

    :goto_1
    array-length v9, v8

    if-lt v4, v9, :cond_5

    const-string v9, "REAR"

    const-string v10, "CHECKED!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v10, "\\|"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string v1, ""

    const/4 v4, 0x0

    :goto_2
    array-length v9, v3

    if-lt v4, v9, :cond_7

    const v9, 0x7f080002

    invoke-virtual {p0, v9}, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/htc/widget/HtcReorderListView;

    iput-object v9, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->QSList:Lcom/htc/widget/HtcReorderListView;

    iget-object v9, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->QSList:Lcom/htc/widget/HtcReorderListView;

    const v10, 0x7f08000a

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcReorderListView;->setDraggerId(I)V

    iget-object v9, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->QSList:Lcom/htc/widget/HtcReorderListView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcReorderListView;->setVerticalScrollBarEnabled(Z)V

    iget-object v9, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->QSList:Lcom/htc/widget/HtcReorderListView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcReorderListView;->setItemsCanFocus(Z)V

    iget-object v9, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->QSList:Lcom/htc/widget/HtcReorderListView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcReorderListView;->setVisibility(I)V

    iget-object v9, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->QSList:Lcom/htc/widget/HtcReorderListView;

    iget-object v10, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->mRearrangeAdapter:Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcReorderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v9, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->QSList:Lcom/htc/widget/HtcReorderListView;

    new-instance v10, Lcom/m0narx/tweaks/DeleteAndRearrangeQS$3;

    invoke-direct {v10, p0}, Lcom/m0narx/tweaks/DeleteAndRearrangeQS$3;-><init>(Lcom/m0narx/tweaks/DeleteAndRearrangeQS;)V

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcReorderListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    iget-object v9, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->QSList:Lcom/htc/widget/HtcReorderListView;

    new-instance v10, Lcom/m0narx/tweaks/DeleteAndRearrangeQS$4;

    invoke-direct {v10, p0}, Lcom/m0narx/tweaks/DeleteAndRearrangeQS$4;-><init>(Lcom/m0narx/tweaks/DeleteAndRearrangeQS;)V

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcReorderListView;->setDragListener(Lcom/htc/widget/HtcReorderListView$DragListener;)V

    iget-object v9, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->QSList:Lcom/htc/widget/HtcReorderListView;

    new-instance v10, Lcom/m0narx/tweaks/DeleteAndRearrangeQS$5;

    invoke-direct {v10, p0}, Lcom/m0narx/tweaks/DeleteAndRearrangeQS$5;-><init>(Lcom/m0narx/tweaks/DeleteAndRearrangeQS;)V

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcReorderListView;->setDropListener(Lcom/htc/widget/HtcReorderListView$DropListener;)V

    iget-object v9, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->QSList:Lcom/htc/widget/HtcReorderListView;

    new-instance v10, Lcom/m0narx/tweaks/DeleteAndRearrangeQS$6;

    invoke-direct {v10, p0}, Lcom/m0narx/tweaks/DeleteAndRearrangeQS$6;-><init>(Lcom/m0narx/tweaks/DeleteAndRearrangeQS;)V

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcReorderListView;->setRemoveListener(Lcom/htc/widget/HtcReorderListView$RemoveListener;)V

    iget-object v9, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->mRearrangeAdapter:Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;

    invoke-virtual {v9}, Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;->notifyDataSetChanged()V

    return-void

    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "|"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v8, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_5
    aget-object v9, v8, v4

    invoke-virtual {v2, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "|"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v8, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_7
    aget-object v9, v3, v4

    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v3, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v6, -0x1

    const/4 v5, 0x0

    :goto_3
    array-length v9, v8

    if-lt v5, v9, :cond_9

    :goto_4
    const/4 v9, -0x1

    if-eq v6, v9, :cond_8

    aget-object v9, v3, v4

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_b

    iget-object v9, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->mRearrangeAdapter:Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;

    aget-object v10, v3, v4

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aget-object v12, v7, v6

    invoke-virtual {v9, v10, v11, v12}, Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;->addItem(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    :cond_8
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    :cond_9
    aget-object v9, v8, v5

    aget-object v10, v3, v4

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    move v6, v5

    goto :goto_4

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_b
    iget-object v9, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->mRearrangeAdapter:Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;

    aget-object v10, v3, v4

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aget-object v12, v7, v6

    invoke-virtual {v9, v10, v11, v12}, Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;->addItem(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    goto :goto_5
.end method
