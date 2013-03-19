.class public Lcom/m0narx/tweaks/customizeQuickLaunch;
.super Landroid/app/Activity;
.source "customizeQuickLaunch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/m0narx/tweaks/customizeQuickLaunch$RearrangeAdapter;,
        Lcom/m0narx/tweaks/customizeQuickLaunch$ViewHolder;
    }
.end annotation


# static fields
.field private static final DEFAULT:Ljava/lang/String; = "com.android.htccontacts,com.android.htccontacts.DialerTabActivity|com.android.mms,com.android.mms.ui.ConversationList|com.android.camera,com.android.camera.CameraEntry|com.m0narx.tweaks,com.m0narx.tweaks.main|com.m0narx.hub,com.m0narx.hub.main|com.m0narx.fileexplorer,com.m0narx.fileexplorer.main"

.field private static final PICKER_ADDAPP:I


# instance fields
.field private AppList:Lcom/htc/widget/HtcReorderListView;

.field private CancelB:Lcom/htc/widget/HtcFooterButton;

.field private Cr:Landroid/content/ContentResolver;

.field private SaveB:Lcom/htc/widget/HtcFooterButton;

.field protected mRearrangeAdapter:Lcom/m0narx/tweaks/customizeQuickLaunch$RearrangeAdapter;

.field private pm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/customizeQuickLaunch;)Lcom/htc/widget/HtcReorderListView;
    .locals 1

    iget-object v0, p0, Lcom/m0narx/tweaks/customizeQuickLaunch;->AppList:Lcom/htc/widget/HtcReorderListView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/m0narx/tweaks/customizeQuickLaunch;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/m0narx/tweaks/customizeQuickLaunch;->Cr:Landroid/content/ContentResolver;

    return-object v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    const/4 v3, -0x1

    if-eq p2, v3, :cond_0

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    :try_start_0
    iget-object v3, p0, Lcom/m0narx/tweaks/customizeQuickLaunch;->pm:Landroid/content/pm/PackageManager;

    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "package"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "activity"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/m0narx/tweaks/customizeQuickLaunch;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v3}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/m0narx/tweaks/customizeQuickLaunch;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v3}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v3, p0, Lcom/m0narx/tweaks/customizeQuickLaunch;->mRearrangeAdapter:Lcom/m0narx/tweaks/customizeQuickLaunch$RearrangeAdapter;

    const-string v4, "package"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "activity"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v0, v1}, Lcom/m0narx/tweaks/customizeQuickLaunch$RearrangeAdapter;->addItem(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/m0narx/tweaks/customizeQuickLaunch;->mRearrangeAdapter:Lcom/m0narx/tweaks/customizeQuickLaunch$RearrangeAdapter;

    invoke-virtual {v3}, Lcom/m0narx/tweaks/customizeQuickLaunch$RearrangeAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14

    const/4 v13, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/m0narx/tweaks/customizeQuickLaunch;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iput-object v9, p0, Lcom/m0narx/tweaks/customizeQuickLaunch;->Cr:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/m0narx/tweaks/customizeQuickLaunch;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iput-object v9, p0, Lcom/m0narx/tweaks/customizeQuickLaunch;->pm:Landroid/content/pm/PackageManager;

    const v9, 0x7f0a018e

    invoke-static {p0, v9}, Lcom/m0narx/tweaks/widgets/Misc;->setActionHtcBarTextWLand(Landroid/app/Activity;I)Lcom/htc/widget/ActionBarContainer;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/m0narx/tweaks/widgets/Misc;->enableBackButton(Landroid/app/Activity;Lcom/htc/widget/ActionBarContainer;)V

    new-instance v8, Lcom/htc/widget/ActionBarItemView;

    invoke-direct {v8, p0}, Lcom/htc/widget/ActionBarItemView;-><init>(Landroid/content/Context;)V

    const/high16 v9, 0x208

    invoke-virtual {v8, v9}, Lcom/htc/widget/ActionBarItemView;->setIcon(I)V

    const v9, 0x204025c

    invoke-virtual {v8, v9}, Lcom/htc/widget/ActionBarItemView;->setText(I)V

    new-instance v9, Lcom/m0narx/tweaks/customizeQuickLaunch$1;

    invoke-direct {v9, p0}, Lcom/m0narx/tweaks/customizeQuickLaunch$1;-><init>(Lcom/m0narx/tweaks/customizeQuickLaunch;)V

    invoke-virtual {v8, v9}, Lcom/htc/widget/ActionBarItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, v8}, Lcom/htc/widget/ActionBarContainer;->addRightView(Landroid/view/View;)V

    const v9, 0x7f030005

    invoke-virtual {p0, v9}, Lcom/m0narx/tweaks/customizeQuickLaunch;->setContentView(I)V

    const v9, 0x7f080009

    invoke-virtual {p0, v9}, Lcom/m0narx/tweaks/customizeQuickLaunch;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/htc/widget/HtcFooterButton;

    iput-object v9, p0, Lcom/m0narx/tweaks/customizeQuickLaunch;->SaveB:Lcom/htc/widget/HtcFooterButton;

    iget-object v9, p0, Lcom/m0narx/tweaks/customizeQuickLaunch;->SaveB:Lcom/htc/widget/HtcFooterButton;

    const v10, 0x7f0a007e

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    new-instance v9, Lcom/m0narx/tweaks/customizeQuickLaunch$RearrangeAdapter;

    invoke-direct {v9, p0}, Lcom/m0narx/tweaks/customizeQuickLaunch$RearrangeAdapter;-><init>(Lcom/m0narx/tweaks/customizeQuickLaunch;)V

    iput-object v9, p0, Lcom/m0narx/tweaks/customizeQuickLaunch;->mRearrangeAdapter:Lcom/m0narx/tweaks/customizeQuickLaunch$RearrangeAdapter;

    const v9, 0x7f080008

    invoke-virtual {p0, v9}, Lcom/m0narx/tweaks/customizeQuickLaunch;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/htc/widget/HtcFooterButton;

    iput-object v9, p0, Lcom/m0narx/tweaks/customizeQuickLaunch;->CancelB:Lcom/htc/widget/HtcFooterButton;

    iget-object v9, p0, Lcom/m0narx/tweaks/customizeQuickLaunch;->CancelB:Lcom/htc/widget/HtcFooterButton;

    const v10, 0x7f0a0034

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    iget-object v9, p0, Lcom/m0narx/tweaks/customizeQuickLaunch;->CancelB:Lcom/htc/widget/HtcFooterButton;

    const v10, 0x20800a3

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    iget-object v9, p0, Lcom/m0narx/tweaks/customizeQuickLaunch;->CancelB:Lcom/htc/widget/HtcFooterButton;

    new-instance v10, Lcom/m0narx/tweaks/customizeQuickLaunch$2;

    invoke-direct {v10, p0}, Lcom/m0narx/tweaks/customizeQuickLaunch$2;-><init>(Lcom/m0narx/tweaks/customizeQuickLaunch;)V

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v9, p0, Lcom/m0narx/tweaks/customizeQuickLaunch;->SaveB:Lcom/htc/widget/HtcFooterButton;

    const v10, 0x20800a7

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    iget-object v9, p0, Lcom/m0narx/tweaks/customizeQuickLaunch;->SaveB:Lcom/htc/widget/HtcFooterButton;

    new-instance v10, Lcom/m0narx/tweaks/customizeQuickLaunch$3;

    invoke-direct {v10, p0}, Lcom/m0narx/tweaks/customizeQuickLaunch$3;-><init>(Lcom/m0narx/tweaks/customizeQuickLaunch;)V

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v9, p0, Lcom/m0narx/tweaks/customizeQuickLaunch;->Cr:Landroid/content/ContentResolver;

    const-string v10, "tweaks_quicklauncher"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "com.android.htccontacts,com.android.htccontacts.DialerTabActivity|com.android.mms,com.android.mms.ui.ConversationList|com.android.camera,com.android.camera.CameraEntry|com.m0narx.tweaks,com.m0narx.tweaks.main|com.m0narx.hub,com.m0narx.hub.main|com.m0narx.fileexplorer,com.m0narx.fileexplorer.main"

    iget-object v9, p0, Lcom/m0narx/tweaks/customizeQuickLaunch;->Cr:Landroid/content/ContentResolver;

    const-string v10, "tweaks_quicklauncher"

    const-string v11, "com.android.htccontacts,com.android.htccontacts.DialerTabActivity|com.android.mms,com.android.mms.ui.ConversationList|com.android.camera,com.android.camera.CameraEntry|com.m0narx.tweaks,com.m0narx.tweaks.main|com.m0narx.hub,com.m0narx.hub.main|com.m0narx.fileexplorer,com.m0narx.fileexplorer.main"

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    const-string v9, "\\|"

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    :goto_0
    array-length v9, v6

    if-lt v7, v9, :cond_1

    const v9, 0x7f080002

    invoke-virtual {p0, v9}, Lcom/m0narx/tweaks/customizeQuickLaunch;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/htc/widget/HtcReorderListView;

    iput-object v9, p0, Lcom/m0narx/tweaks/customizeQuickLaunch;->AppList:Lcom/htc/widget/HtcReorderListView;

    iget-object v9, p0, Lcom/m0narx/tweaks/customizeQuickLaunch;->AppList:Lcom/htc/widget/HtcReorderListView;

    const v10, 0x7f08000a

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcReorderListView;->setDraggerId(I)V

    iget-object v9, p0, Lcom/m0narx/tweaks/customizeQuickLaunch;->AppList:Lcom/htc/widget/HtcReorderListView;

    invoke-virtual {v9, v13}, Lcom/htc/widget/HtcReorderListView;->setVerticalScrollBarEnabled(Z)V

    iget-object v9, p0, Lcom/m0narx/tweaks/customizeQuickLaunch;->AppList:Lcom/htc/widget/HtcReorderListView;

    invoke-virtual {v9, v13}, Lcom/htc/widget/HtcReorderListView;->setItemsCanFocus(Z)V

    iget-object v9, p0, Lcom/m0narx/tweaks/customizeQuickLaunch;->AppList:Lcom/htc/widget/HtcReorderListView;

    invoke-virtual {v9, v13}, Lcom/htc/widget/HtcReorderListView;->setVisibility(I)V

    iget-object v9, p0, Lcom/m0narx/tweaks/customizeQuickLaunch;->AppList:Lcom/htc/widget/HtcReorderListView;

    iget-object v10, p0, Lcom/m0narx/tweaks/customizeQuickLaunch;->mRearrangeAdapter:Lcom/m0narx/tweaks/customizeQuickLaunch$RearrangeAdapter;

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcReorderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v9, p0, Lcom/m0narx/tweaks/customizeQuickLaunch;->AppList:Lcom/htc/widget/HtcReorderListView;

    new-instance v10, Lcom/m0narx/tweaks/customizeQuickLaunch$4;

    invoke-direct {v10, p0}, Lcom/m0narx/tweaks/customizeQuickLaunch$4;-><init>(Lcom/m0narx/tweaks/customizeQuickLaunch;)V

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcReorderListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    iget-object v9, p0, Lcom/m0narx/tweaks/customizeQuickLaunch;->AppList:Lcom/htc/widget/HtcReorderListView;

    new-instance v10, Lcom/m0narx/tweaks/customizeQuickLaunch$5;

    invoke-direct {v10, p0}, Lcom/m0narx/tweaks/customizeQuickLaunch$5;-><init>(Lcom/m0narx/tweaks/customizeQuickLaunch;)V

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcReorderListView;->setDragListener(Lcom/htc/widget/HtcReorderListView$DragListener;)V

    iget-object v9, p0, Lcom/m0narx/tweaks/customizeQuickLaunch;->AppList:Lcom/htc/widget/HtcReorderListView;

    new-instance v10, Lcom/m0narx/tweaks/customizeQuickLaunch$6;

    invoke-direct {v10, p0}, Lcom/m0narx/tweaks/customizeQuickLaunch$6;-><init>(Lcom/m0narx/tweaks/customizeQuickLaunch;)V

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcReorderListView;->setDropListener(Lcom/htc/widget/HtcReorderListView$DropListener;)V

    iget-object v9, p0, Lcom/m0narx/tweaks/customizeQuickLaunch;->AppList:Lcom/htc/widget/HtcReorderListView;

    new-instance v10, Lcom/m0narx/tweaks/customizeQuickLaunch$7;

    invoke-direct {v10, p0}, Lcom/m0narx/tweaks/customizeQuickLaunch$7;-><init>(Lcom/m0narx/tweaks/customizeQuickLaunch;)V

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcReorderListView;->setRemoveListener(Lcom/htc/widget/HtcReorderListView$RemoveListener;)V

    iget-object v9, p0, Lcom/m0narx/tweaks/customizeQuickLaunch;->mRearrangeAdapter:Lcom/m0narx/tweaks/customizeQuickLaunch$RearrangeAdapter;

    invoke-virtual {v9}, Lcom/m0narx/tweaks/customizeQuickLaunch$RearrangeAdapter;->notifyDataSetChanged()V

    return-void

    :cond_1
    aget-object v9, v6, v7

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v9, v4

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2

    :try_start_0
    iget-object v9, p0, Lcom/m0narx/tweaks/customizeQuickLaunch;->pm:Landroid/content/pm/PackageManager;

    new-instance v10, Landroid/content/ComponentName;

    const/4 v11, 0x0

    aget-object v11, v4, v11

    const/4 v12, 0x1

    aget-object v12, v4, v12

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    iget-object v9, p0, Lcom/m0narx/tweaks/customizeQuickLaunch;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v9}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v9, p0, Lcom/m0narx/tweaks/customizeQuickLaunch;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v9}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v9, p0, Lcom/m0narx/tweaks/customizeQuickLaunch;->mRearrangeAdapter:Lcom/m0narx/tweaks/customizeQuickLaunch$RearrangeAdapter;

    const/4 v10, 0x0

    aget-object v10, v4, v10

    const/4 v11, 0x1

    aget-object v11, v4, v11

    invoke-virtual {v9, v10, v11, v1, v2}, Lcom/m0narx/tweaks/customizeQuickLaunch$RearrangeAdapter;->addItem(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v9

    goto :goto_1
.end method
