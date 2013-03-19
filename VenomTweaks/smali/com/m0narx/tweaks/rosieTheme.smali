.class public Lcom/m0narx/tweaks/rosieTheme;
.super Landroid/app/Activity;
.source "rosieTheme.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/m0narx/tweaks/rosieTheme$AppListAdapter;,
        Lcom/m0narx/tweaks/rosieTheme$ViewHolder;
    }
.end annotation


# instance fields
.field private AppList:Lcom/htc/widget/HtcListView;

.field private CancelB:Lcom/htc/widget/HtcFooterButton;

.field private Cr:Landroid/content/ContentResolver;

.field private SaveB:Lcom/htc/widget/HtcFooterButton;

.field private currentTheme:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field protected mAdapter:Lcom/m0narx/tweaks/rosieTheme$AppListAdapter;

.field private pDialog:Lcom/htc/app/HtcProgressDialog;

.field tFilter:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/m0narx/tweaks/rosieTheme$1;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/rosieTheme$1;-><init>(Lcom/m0narx/tweaks/rosieTheme;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/rosieTheme;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/rosieTheme;)Lcom/htc/widget/HtcListView;
    .locals 1

    iget-object v0, p0, Lcom/m0narx/tweaks/rosieTheme;->AppList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/m0narx/tweaks/rosieTheme;)Lcom/htc/app/HtcProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/m0narx/tweaks/rosieTheme;->pDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method static synthetic access$2(Lcom/m0narx/tweaks/rosieTheme;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/m0narx/tweaks/rosieTheme;->currentTheme:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/m0narx/tweaks/rosieTheme;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/m0narx/tweaks/rosieTheme;->Cr:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$4(Lcom/m0narx/tweaks/rosieTheme;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/m0narx/tweaks/rosieTheme;->currentTheme:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lcom/m0narx/tweaks/rosieTheme;)V
    .locals 0

    invoke-direct {p0}, Lcom/m0narx/tweaks/rosieTheme;->setCustomizeState()V

    return-void
.end method

.method private setCustomizeState()V
    .locals 2

    iget-object v0, p0, Lcom/m0narx/tweaks/rosieTheme;->currentTheme:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/m0narx/tweaks/rosieTheme;->SaveB:Lcom/htc/widget/HtcFooterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/m0narx/tweaks/rosieTheme;->SaveB:Lcom/htc/widget/HtcFooterButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public LoadData()V
    .locals 15

    const/4 v14, 0x1

    new-instance v9, Lcom/m0narx/tweaks/rosieTheme$AppListAdapter;

    invoke-direct {v9, p0}, Lcom/m0narx/tweaks/rosieTheme$AppListAdapter;-><init>(Lcom/m0narx/tweaks/rosieTheme;)V

    iput-object v9, p0, Lcom/m0narx/tweaks/rosieTheme;->mAdapter:Lcom/m0narx/tweaks/rosieTheme$AppListAdapter;

    invoke-virtual {p0}, Lcom/m0narx/tweaks/rosieTheme;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p0}, Lcom/m0narx/tweaks/rosieTheme;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v9, p0, Lcom/m0narx/tweaks/rosieTheme;->mAdapter:Lcom/m0narx/tweaks/rosieTheme$AppListAdapter;

    const v10, 0x7f0a0123

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f0a0124

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    const v13, 0x7f02001a

    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/m0narx/tweaks/rosieTheme$AppListAdapter;->addItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    new-instance v9, Landroid/content/Intent;

    const-string v10, "venom.rosie.launcher.THEME"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v9, v14}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-lt v2, v9, :cond_0

    new-instance v9, Landroid/content/Intent;

    const-string v10, "org.adw.launcher.THEMES"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v9, v14}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-lt v2, v9, :cond_2

    iget-object v9, p0, Lcom/m0narx/tweaks/rosieTheme;->handler:Landroid/os/Handler;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_0
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v0, ""

    :try_start_0
    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v6

    const-string v9, "theme_description"

    const-string v10, "string"

    invoke-virtual {v6, v9, v10, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :cond_1
    :goto_2
    iget-object v9, p0, Lcom/m0narx/tweaks/rosieTheme;->mAdapter:Lcom/m0narx/tweaks/rosieTheme$AppListAdapter;

    invoke-virtual {v7, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v5}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v9, v10, v0, v4, v11}, Lcom/m0narx/tweaks/rosieTheme$AppListAdapter;->addItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v0, ""

    :try_start_1
    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v6

    const-string v9, "theme_description"

    const-string v10, "string"

    invoke-virtual {v6, v9, v10, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :cond_3
    :goto_3
    iget-object v9, p0, Lcom/m0narx/tweaks/rosieTheme;->mAdapter:Lcom/m0narx/tweaks/rosieTheme$AppListAdapter;

    invoke-virtual {v7, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v5}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v9, v10, v0, v4, v11}, Lcom/m0narx/tweaks/rosieTheme$AppListAdapter;->addItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v9

    goto :goto_3

    :catch_1
    move-exception v9

    goto :goto_2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/m0narx/tweaks/rosieTheme;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/m0narx/tweaks/rosieTheme;->Cr:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/m0narx/tweaks/rosieTheme;->Cr:Landroid/content/ContentResolver;

    const-string v4, "tweaks_rosie_theme"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/m0narx/tweaks/rosieTheme;->currentTheme:Ljava/lang/String;

    iget-object v3, p0, Lcom/m0narx/tweaks/rosieTheme;->currentTheme:Ljava/lang/String;

    if-nez v3, :cond_0

    const-string v3, ""

    iput-object v3, p0, Lcom/m0narx/tweaks/rosieTheme;->currentTheme:Ljava/lang/String;

    :cond_0
    const v3, 0x7f0a0121

    invoke-static {p0, v3}, Lcom/m0narx/tweaks/widgets/Misc;->setActionHtcBarTextWLand(Landroid/app/Activity;I)Lcom/htc/widget/ActionBarContainer;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/m0narx/tweaks/widgets/Misc;->enableBackButton(Landroid/app/Activity;Lcom/htc/widget/ActionBarContainer;)V

    new-instance v2, Lcom/htc/widget/ActionBarItemView;

    invoke-direct {v2, p0}, Lcom/htc/widget/ActionBarItemView;-><init>(Landroid/content/Context;)V

    const v3, 0x7f020010

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarItemView;->setIcon(I)V

    const v3, 0x7f0a0001

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarItemView;->setText(I)V

    new-instance v3, Lcom/m0narx/tweaks/rosieTheme$2;

    invoke-direct {v3, p0}, Lcom/m0narx/tweaks/rosieTheme$2;-><init>(Lcom/m0narx/tweaks/rosieTheme;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarContainer;->addRightView(Landroid/view/View;)V

    const v3, 0x7f03000e

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/rosieTheme;->setContentView(I)V

    const v3, 0x7f080009

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/rosieTheme;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcFooterButton;

    iput-object v3, p0, Lcom/m0narx/tweaks/rosieTheme;->SaveB:Lcom/htc/widget/HtcFooterButton;

    iget-object v3, p0, Lcom/m0narx/tweaks/rosieTheme;->SaveB:Lcom/htc/widget/HtcFooterButton;

    const v4, 0x7f0a013f

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    iget-object v3, p0, Lcom/m0narx/tweaks/rosieTheme;->SaveB:Lcom/htc/widget/HtcFooterButton;

    const v4, 0x20800c3

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    iget-object v3, p0, Lcom/m0narx/tweaks/rosieTheme;->SaveB:Lcom/htc/widget/HtcFooterButton;

    new-instance v4, Lcom/m0narx/tweaks/rosieTheme$3;

    invoke-direct {v4, p0}, Lcom/m0narx/tweaks/rosieTheme$3;-><init>(Lcom/m0narx/tweaks/rosieTheme;)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f080008

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/rosieTheme;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcFooterButton;

    iput-object v3, p0, Lcom/m0narx/tweaks/rosieTheme;->CancelB:Lcom/htc/widget/HtcFooterButton;

    iget-object v3, p0, Lcom/m0narx/tweaks/rosieTheme;->CancelB:Lcom/htc/widget/HtcFooterButton;

    const v4, 0x7f0a0034

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    iget-object v3, p0, Lcom/m0narx/tweaks/rosieTheme;->CancelB:Lcom/htc/widget/HtcFooterButton;

    const v4, 0x20800a3

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    iget-object v3, p0, Lcom/m0narx/tweaks/rosieTheme;->CancelB:Lcom/htc/widget/HtcFooterButton;

    new-instance v4, Lcom/m0narx/tweaks/rosieTheme$4;

    invoke-direct {v4, p0}, Lcom/m0narx/tweaks/rosieTheme$4;-><init>(Lcom/m0narx/tweaks/rosieTheme;)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f080002

    invoke-virtual {p0, v3}, Lcom/m0narx/tweaks/rosieTheme;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListView;

    iput-object v3, p0, Lcom/m0narx/tweaks/rosieTheme;->AppList:Lcom/htc/widget/HtcListView;

    iget-object v3, p0, Lcom/m0narx/tweaks/rosieTheme;->AppList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListView;->setAnimationCacheEnabled(Z)V

    iget-object v3, p0, Lcom/m0narx/tweaks/rosieTheme;->AppList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListView;->setDrawingCacheEnabled(Z)V

    iget-object v3, p0, Lcom/m0narx/tweaks/rosieTheme;->AppList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListView;->setSmoothScrollbarEnabled(Z)V

    iget-object v3, p0, Lcom/m0narx/tweaks/rosieTheme;->AppList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListView;->setScrollingCacheEnabled(Z)V

    iget-object v3, p0, Lcom/m0narx/tweaks/rosieTheme;->AppList:Lcom/htc/widget/HtcListView;

    new-instance v4, Lcom/m0narx/tweaks/rosieTheme$5;

    invoke-direct {v4, p0}, Lcom/m0narx/tweaks/rosieTheme$5;-><init>(Lcom/m0narx/tweaks/rosieTheme;)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    new-instance v3, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v3, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/m0narx/tweaks/rosieTheme;->pDialog:Lcom/htc/app/HtcProgressDialog;

    iget-object v3, p0, Lcom/m0narx/tweaks/rosieTheme;->pDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {p0}, Lcom/m0narx/tweaks/rosieTheme;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a009a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/m0narx/tweaks/rosieTheme;->pDialog:Lcom/htc/app/HtcProgressDialog;

    sget v4, Lcom/htc/app/HtcProgressDialog;->STYLE_SPINNER:I

    invoke-virtual {v3, v4}, Lcom/htc/app/HtcProgressDialog;->setProgressStyle(I)V

    iget-object v3, p0, Lcom/m0narx/tweaks/rosieTheme;->pDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v3}, Lcom/htc/app/HtcProgressDialog;->show()V

    invoke-direct {p0}, Lcom/m0narx/tweaks/rosieTheme;->setCustomizeState()V

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public run()V
    .locals 0

    invoke-virtual {p0}, Lcom/m0narx/tweaks/rosieTheme;->LoadData()V

    return-void
.end method
