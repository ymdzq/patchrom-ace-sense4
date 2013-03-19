.class public Lcom/m0narx/tweaks/customLSnotifications;
.super Landroid/app/Activity;
.source "customLSnotifications.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/m0narx/tweaks/customLSnotifications$AppAdapter;,
        Lcom/m0narx/tweaks/customLSnotifications$ViewHolder;
    }
.end annotation


# static fields
.field private static final DEFAULT:Ljava/lang/String; = ""

.field private static final PICKER_ADDAPP:I


# instance fields
.field private final ANDROID_APP:Ljava/lang/String;

.field private AppList:Lcom/htc/widget/HtcListView;

.field private final CONNECT_APP:Ljava/lang/String;

.field private CancelB:Lcom/htc/widget/HtcFooterButton;

.field private Cr:Landroid/content/ContentResolver;

.field private final MENU_ENABLE_ANDROID:I

.field private final MENU_ENABLE_PCCS:I

.field private SaveB:Lcom/htc/widget/HtcFooterButton;

.field private enable_android:Z

.field private enable_pscs:Z

.field protected mAppAdapter:Lcom/m0narx/tweaks/customLSnotifications$AppAdapter;

.field private pm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "android"

    iput-object v0, p0, Lcom/m0narx/tweaks/customLSnotifications;->ANDROID_APP:Ljava/lang/String;

    const-string v0, "com.htc.android.psclient"

    iput-object v0, p0, Lcom/m0narx/tweaks/customLSnotifications;->CONNECT_APP:Ljava/lang/String;

    iput v1, p0, Lcom/m0narx/tweaks/customLSnotifications;->MENU_ENABLE_ANDROID:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/m0narx/tweaks/customLSnotifications;->MENU_ENABLE_PCCS:I

    iput-boolean v1, p0, Lcom/m0narx/tweaks/customLSnotifications;->enable_android:Z

    iput-boolean v1, p0, Lcom/m0narx/tweaks/customLSnotifications;->enable_pscs:Z

    return-void
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/customLSnotifications;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/m0narx/tweaks/customLSnotifications;->pm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$1(Lcom/m0narx/tweaks/customLSnotifications;)Lcom/htc/widget/HtcListView;
    .locals 1

    iget-object v0, p0, Lcom/m0narx/tweaks/customLSnotifications;->AppList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/m0narx/tweaks/customLSnotifications;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/m0narx/tweaks/customLSnotifications;->enable_pscs:Z

    return v0
.end method

.method static synthetic access$3(Lcom/m0narx/tweaks/customLSnotifications;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/m0narx/tweaks/customLSnotifications;->enable_android:Z

    return v0
.end method

.method static synthetic access$4(Lcom/m0narx/tweaks/customLSnotifications;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/m0narx/tweaks/customLSnotifications;->Cr:Landroid/content/ContentResolver;

    return-object v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/m0narx/tweaks/customLSnotifications;->mAppAdapter:Lcom/m0narx/tweaks/customLSnotifications$AppAdapter;

    const-string v1, "package"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/customLSnotifications$AppAdapter;->addItem(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/m0narx/tweaks/customLSnotifications;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, p0, Lcom/m0narx/tweaks/customLSnotifications;->Cr:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/m0narx/tweaks/customLSnotifications;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iput-object v5, p0, Lcom/m0narx/tweaks/customLSnotifications;->pm:Landroid/content/pm/PackageManager;

    const v5, 0x7f0a01bb

    invoke-static {p0, v5}, Lcom/m0narx/tweaks/widgets/Misc;->setActionHtcBarTextWLand(Landroid/app/Activity;I)Lcom/htc/widget/ActionBarContainer;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/m0narx/tweaks/widgets/Misc;->enableBackButton(Landroid/app/Activity;Lcom/htc/widget/ActionBarContainer;)V

    new-instance v4, Lcom/htc/widget/ActionBarItemView;

    invoke-direct {v4, p0}, Lcom/htc/widget/ActionBarItemView;-><init>(Landroid/content/Context;)V

    const/high16 v5, 0x208

    invoke-virtual {v4, v5}, Lcom/htc/widget/ActionBarItemView;->setIcon(I)V

    const v5, 0x204025c

    invoke-virtual {v4, v5}, Lcom/htc/widget/ActionBarItemView;->setText(I)V

    new-instance v5, Lcom/m0narx/tweaks/customLSnotifications$1;

    invoke-direct {v5, p0}, Lcom/m0narx/tweaks/customLSnotifications$1;-><init>(Lcom/m0narx/tweaks/customLSnotifications;)V

    invoke-virtual {v4, v5}, Lcom/htc/widget/ActionBarItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v4}, Lcom/htc/widget/ActionBarContainer;->addRightView(Landroid/view/View;)V

    const v5, 0x7f03000e

    invoke-virtual {p0, v5}, Lcom/m0narx/tweaks/customLSnotifications;->setContentView(I)V

    const v5, 0x7f080009

    invoke-virtual {p0, v5}, Lcom/m0narx/tweaks/customLSnotifications;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcFooterButton;

    iput-object v5, p0, Lcom/m0narx/tweaks/customLSnotifications;->SaveB:Lcom/htc/widget/HtcFooterButton;

    iget-object v5, p0, Lcom/m0narx/tweaks/customLSnotifications;->SaveB:Lcom/htc/widget/HtcFooterButton;

    const v6, 0x7f0a007e

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    new-instance v5, Lcom/m0narx/tweaks/customLSnotifications$AppAdapter;

    invoke-direct {v5, p0}, Lcom/m0narx/tweaks/customLSnotifications$AppAdapter;-><init>(Lcom/m0narx/tweaks/customLSnotifications;)V

    iput-object v5, p0, Lcom/m0narx/tweaks/customLSnotifications;->mAppAdapter:Lcom/m0narx/tweaks/customLSnotifications$AppAdapter;

    const v5, 0x7f080008

    invoke-virtual {p0, v5}, Lcom/m0narx/tweaks/customLSnotifications;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcFooterButton;

    iput-object v5, p0, Lcom/m0narx/tweaks/customLSnotifications;->CancelB:Lcom/htc/widget/HtcFooterButton;

    iget-object v5, p0, Lcom/m0narx/tweaks/customLSnotifications;->CancelB:Lcom/htc/widget/HtcFooterButton;

    const v6, 0x7f0a0034

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    iget-object v5, p0, Lcom/m0narx/tweaks/customLSnotifications;->CancelB:Lcom/htc/widget/HtcFooterButton;

    const v6, 0x20800a3

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    iget-object v5, p0, Lcom/m0narx/tweaks/customLSnotifications;->CancelB:Lcom/htc/widget/HtcFooterButton;

    new-instance v6, Lcom/m0narx/tweaks/customLSnotifications$2;

    invoke-direct {v6, p0}, Lcom/m0narx/tweaks/customLSnotifications$2;-><init>(Lcom/m0narx/tweaks/customLSnotifications;)V

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/m0narx/tweaks/customLSnotifications;->SaveB:Lcom/htc/widget/HtcFooterButton;

    const v6, 0x20800a7

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    iget-object v5, p0, Lcom/m0narx/tweaks/customLSnotifications;->SaveB:Lcom/htc/widget/HtcFooterButton;

    new-instance v6, Lcom/m0narx/tweaks/customLSnotifications$3;

    invoke-direct {v6, p0}, Lcom/m0narx/tweaks/customLSnotifications$3;-><init>(Lcom/m0narx/tweaks/customLSnotifications;)V

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/m0narx/tweaks/customLSnotifications;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_lockscreen_notifications"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    iget-object v5, p0, Lcom/m0narx/tweaks/customLSnotifications;->Cr:Landroid/content/ContentResolver;

    const-string v6, "tweaks_lockscreen_notifications"

    const-string v7, ""

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    const-string v5, "\\;"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    array-length v5, v2

    if-lt v3, v5, :cond_1

    const v5, 0x7f080002

    invoke-virtual {p0, v5}, Lcom/m0narx/tweaks/customLSnotifications;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcListView;

    iput-object v5, p0, Lcom/m0narx/tweaks/customLSnotifications;->AppList:Lcom/htc/widget/HtcListView;

    iget-object v5, p0, Lcom/m0narx/tweaks/customLSnotifications;->AppList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v5, v8}, Lcom/htc/widget/HtcListView;->setVerticalScrollBarEnabled(Z)V

    iget-object v5, p0, Lcom/m0narx/tweaks/customLSnotifications;->AppList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v5, v8}, Lcom/htc/widget/HtcListView;->setItemsCanFocus(Z)V

    iget-object v5, p0, Lcom/m0narx/tweaks/customLSnotifications;->AppList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v5, v8}, Lcom/htc/widget/HtcListView;->setVisibility(I)V

    iget-object v5, p0, Lcom/m0narx/tweaks/customLSnotifications;->AppList:Lcom/htc/widget/HtcListView;

    iget-object v6, p0, Lcom/m0narx/tweaks/customLSnotifications;->mAppAdapter:Lcom/m0narx/tweaks/customLSnotifications$AppAdapter;

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v5, p0, Lcom/m0narx/tweaks/customLSnotifications;->AppList:Lcom/htc/widget/HtcListView;

    new-instance v6, Lcom/m0narx/tweaks/customLSnotifications$4;

    invoke-direct {v6, p0}, Lcom/m0narx/tweaks/customLSnotifications$4;-><init>(Lcom/m0narx/tweaks/customLSnotifications;)V

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    iget-object v5, p0, Lcom/m0narx/tweaks/customLSnotifications;->mAppAdapter:Lcom/m0narx/tweaks/customLSnotifications$AppAdapter;

    invoke-virtual {v5}, Lcom/m0narx/tweaks/customLSnotifications$AppAdapter;->notifyDataSetChanged()V

    return-void

    :cond_1
    aget-object v5, v2, v3

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    aget-object v5, v2, v3

    const-string v6, "android"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    aget-object v5, v2, v3

    const-string v6, "com.htc.android.psclient"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/m0narx/tweaks/customLSnotifications;->mAppAdapter:Lcom/m0narx/tweaks/customLSnotifications$AppAdapter;

    aget-object v6, v2, v3

    invoke-virtual {v5, v6}, Lcom/m0narx/tweaks/customLSnotifications$AppAdapter;->addItem(Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    aget-object v5, v2, v3

    const-string v6, "android"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iput-boolean v9, p0, Lcom/m0narx/tweaks/customLSnotifications;->enable_android:Z

    goto :goto_1

    :cond_4
    aget-object v5, v2, v3

    const-string v6, "com.htc.android.psclient"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iput-boolean v9, p0, Lcom/m0narx/tweaks/customLSnotifications;->enable_pscs:Z

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    const v2, 0x7f0a01be

    invoke-interface {p1, v3, v3, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    iget-boolean v2, p0, Lcom/m0narx/tweaks/customLSnotifications;->enable_android:Z

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    const v2, 0x7f0a01bd

    invoke-interface {p1, v3, v4, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    iget-boolean v2, p0, Lcom/m0narx/tweaks/customLSnotifications;->enable_pscs:Z

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    return v4
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v1, v0

    :goto_0
    return v1

    :pswitch_0
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/m0narx/tweaks/customLSnotifications;->enable_android:Z

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :pswitch_1
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_2
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/m0narx/tweaks/customLSnotifications;->enable_pscs:Z

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
