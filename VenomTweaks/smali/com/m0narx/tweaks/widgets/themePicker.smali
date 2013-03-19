.class public Lcom/m0narx/tweaks/widgets/themePicker;
.super Landroid/app/Activity;
.source "themePicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/m0narx/tweaks/widgets/themePicker$AppListAdapter;,
        Lcom/m0narx/tweaks/widgets/themePicker$ViewHolder;
    }
.end annotation


# instance fields
.field private AppList:Lcom/htc/widget/HtcListView;

.field CancelB:Lcom/htc/widget/HtcFooterButton;

.field Cr:Landroid/content/ContentResolver;

.field SaveB:Lcom/htc/widget/HtcFooterButton;

.field private handler:Landroid/os/Handler;

.field inflater:Landroid/view/LayoutInflater;

.field protected mAdapter:Lcom/m0narx/tweaks/widgets/themePicker$AppListAdapter;

.field private pDialog:Lcom/htc/app/HtcProgressDialog;

.field tFilter:I

.field tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/m0narx/tweaks/widgets/themePicker$1;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/widgets/themePicker$1;-><init>(Lcom/m0narx/tweaks/widgets/themePicker;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/widgets/themePicker;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/widgets/themePicker;)Lcom/htc/widget/HtcListView;
    .locals 1

    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/themePicker;->AppList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/m0narx/tweaks/widgets/themePicker;)Lcom/htc/app/HtcProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/themePicker;->pDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method


# virtual methods
.method public LoadData()V
    .locals 8

    new-instance v3, Lcom/m0narx/tweaks/widgets/themePicker$AppListAdapter;

    invoke-direct {v3, p0}, Lcom/m0narx/tweaks/widgets/themePicker$AppListAdapter;-><init>(Lcom/m0narx/tweaks/widgets/themePicker;)V

    iput-object v3, p0, Lcom/m0narx/tweaks/widgets/themePicker;->mAdapter:Lcom/m0narx/tweaks/widgets/themePicker$AppListAdapter;

    iget-object v3, p0, Lcom/m0narx/tweaks/widgets/themePicker;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    iget v4, p0, Lcom/m0narx/tweaks/widgets/themePicker;->tFilter:I

    invoke-virtual {v3, v4}, Lcom/m0narx/tweaks/widgets/themeHelper;->getThemes(I)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    iget-object v3, p0, Lcom/m0narx/tweaks/widgets/themePicker;->handler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_0
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/m0narx/tweaks/widgets/themeHelper$themeInfo;

    iget-object v3, p0, Lcom/m0narx/tweaks/widgets/themePicker;->mAdapter:Lcom/m0narx/tweaks/widgets/themePicker$AppListAdapter;

    iget-object v4, v1, Lcom/m0narx/tweaks/widgets/themeHelper$themeInfo;->title:Ljava/lang/CharSequence;

    iget-object v5, v1, Lcom/m0narx/tweaks/widgets/themeHelper$themeInfo;->packageName:Ljava/lang/String;

    iget-object v6, v1, Lcom/m0narx/tweaks/widgets/themeHelper$themeInfo;->themeName:Ljava/lang/String;

    iget-object v7, v1, Lcom/m0narx/tweaks/widgets/themeHelper$themeInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/m0narx/tweaks/widgets/themePicker$AppListAdapter;->addItem(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/themePicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/m0narx/tweaks/widgets/themePicker;->Cr:Landroid/content/ContentResolver;

    new-instance v2, Lcom/m0narx/tweaks/widgets/themeHelper;

    invoke-direct {v2, p0}, Lcom/m0narx/tweaks/widgets/themeHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/m0narx/tweaks/widgets/themePicker;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/themePicker;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "title"

    const v4, 0x7f0a001b

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/themePicker;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "filter"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/m0narx/tweaks/widgets/themePicker;->tFilter:I

    invoke-static {p0, v1}, Lcom/m0narx/tweaks/widgets/Misc;->setActionHtcBarTextWLand(Landroid/app/Activity;I)Lcom/htc/widget/ActionBarContainer;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/m0narx/tweaks/widgets/Misc;->enableBackButton(Landroid/app/Activity;Lcom/htc/widget/ActionBarContainer;)V

    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/widgets/themePicker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/m0narx/tweaks/widgets/themePicker;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030002

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/widgets/themePicker;->setContentView(I)V

    const v2, 0x7f080009

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/widgets/themePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcFooterButton;

    iput-object v2, p0, Lcom/m0narx/tweaks/widgets/themePicker;->CancelB:Lcom/htc/widget/HtcFooterButton;

    iget-object v2, p0, Lcom/m0narx/tweaks/widgets/themePicker;->CancelB:Lcom/htc/widget/HtcFooterButton;

    const v3, 0x7f0a0034

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    iget-object v2, p0, Lcom/m0narx/tweaks/widgets/themePicker;->CancelB:Lcom/htc/widget/HtcFooterButton;

    const v3, 0x20800a3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    iget-object v2, p0, Lcom/m0narx/tweaks/widgets/themePicker;->CancelB:Lcom/htc/widget/HtcFooterButton;

    new-instance v3, Lcom/m0narx/tweaks/widgets/themePicker$2;

    invoke-direct {v3, p0}, Lcom/m0narx/tweaks/widgets/themePicker$2;-><init>(Lcom/m0narx/tweaks/widgets/themePicker;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f080002

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/widgets/themePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListView;

    iput-object v2, p0, Lcom/m0narx/tweaks/widgets/themePicker;->AppList:Lcom/htc/widget/HtcListView;

    iget-object v2, p0, Lcom/m0narx/tweaks/widgets/themePicker;->AppList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcListView;->setAnimationCacheEnabled(Z)V

    iget-object v2, p0, Lcom/m0narx/tweaks/widgets/themePicker;->AppList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcListView;->setDrawingCacheEnabled(Z)V

    iget-object v2, p0, Lcom/m0narx/tweaks/widgets/themePicker;->AppList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcListView;->setSmoothScrollbarEnabled(Z)V

    iget-object v2, p0, Lcom/m0narx/tweaks/widgets/themePicker;->AppList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcListView;->setScrollingCacheEnabled(Z)V

    iget-object v2, p0, Lcom/m0narx/tweaks/widgets/themePicker;->AppList:Lcom/htc/widget/HtcListView;

    new-instance v3, Lcom/m0narx/tweaks/widgets/themePicker$3;

    invoke-direct {v3, p0}, Lcom/m0narx/tweaks/widgets/themePicker$3;-><init>(Lcom/m0narx/tweaks/widgets/themePicker;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    new-instance v2, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v2, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/m0narx/tweaks/widgets/themePicker;->pDialog:Lcom/htc/app/HtcProgressDialog;

    iget-object v2, p0, Lcom/m0narx/tweaks/widgets/themePicker;->pDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/themePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a009a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/m0narx/tweaks/widgets/themePicker;->pDialog:Lcom/htc/app/HtcProgressDialog;

    sget v3, Lcom/htc/app/HtcProgressDialog;->STYLE_SPINNER:I

    invoke-virtual {v2, v3}, Lcom/htc/app/HtcProgressDialog;->setProgressStyle(I)V

    iget-object v2, p0, Lcom/m0narx/tweaks/widgets/themePicker;->pDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v2}, Lcom/htc/app/HtcProgressDialog;->show()V

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

    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/themePicker;->LoadData()V

    return-void
.end method
