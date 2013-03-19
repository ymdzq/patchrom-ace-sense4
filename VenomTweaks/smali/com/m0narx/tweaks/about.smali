.class public Lcom/m0narx/tweaks/about;
.super Lcom/htc/app/HtcListActivity;
.source "about.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/m0narx/tweaks/about$ExpandableListAdapter;
    }
.end annotation


# instance fields
.field private final ITEM_DONATEAPP:I

.field private final ITEM_PROFILES:I

.field public final LINK_DONATE:Ljava/lang/String;

.field public final LINK_MEMBER:Ljava/lang/String;

.field public final LINK_THREAD:Ljava/lang/String;

.field private childs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private childs_comment:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private childs_img:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private groups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private groups_comment:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private groups_img:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapter:Lcom/m0narx/tweaks/about$ExpandableListAdapter;

.field private mListView:Lcom/htc/widget/HtcExpandableListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/htc/app/HtcListActivity;-><init>()V

    const-string v0, "http://forum.xda-developers.com/showthread.php?p=26521106"

    iput-object v0, p0, Lcom/m0narx/tweaks/about;->LINK_THREAD:Ljava/lang/String;

    const-string v0, "http://forum.xda-developers.com/member.php?u="

    iput-object v0, p0, Lcom/m0narx/tweaks/about;->LINK_MEMBER:Ljava/lang/String;

    const-string v0, "http://forum.xda-developers.com/donatetome.php?u="

    iput-object v0, p0, Lcom/m0narx/tweaks/about;->LINK_DONATE:Ljava/lang/String;

    const/4 v0, 0x4

    iput v0, p0, Lcom/m0narx/tweaks/about;->ITEM_PROFILES:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/m0narx/tweaks/about;->ITEM_DONATEAPP:I

    return-void
.end method

.method private CheckButtonState()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/m0narx/tweaks/main;->mActionButton:Lcom/htc/widget/ActionBarItemView;

    const v1, 0x7f020020

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarItemView;->setIcon(I)V

    sget-object v0, Lcom/m0narx/tweaks/main;->mActionButton:Lcom/htc/widget/ActionBarItemView;

    const/high16 v1, 0x7f0a

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarItemView;->setText(I)V

    sget-object v0, Lcom/m0narx/tweaks/main;->mActionText:Lcom/htc/widget/ActionBarText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->setSecondaryVisibility(I)V

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Reboot;->is(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/m0narx/tweaks/main;->mActionText:Lcom/htc/widget/ActionBarText;

    const v1, 0x7f0a000d

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->setSecondaryText(I)V

    sget-object v0, Lcom/m0narx/tweaks/main;->mActionText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarText;->setSecondaryVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Reboot;->is(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/m0narx/tweaks/main;->mActionText:Lcom/htc/widget/ActionBarText;

    const v1, 0x7f0a000c

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->setSecondaryText(I)V

    sget-object v0, Lcom/m0narx/tweaks/main;->mActionText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarText;->setSecondaryVisibility(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Reboot;->is(I)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/m0narx/tweaks/main;->mActionText:Lcom/htc/widget/ActionBarText;

    const v1, 0x7f0a000e

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->setSecondaryText(I)V

    sget-object v0, Lcom/m0narx/tweaks/main;->mActionText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarText;->setSecondaryVisibility(I)V

    goto :goto_0

    :cond_3
    invoke-static {v2}, Lcom/m0narx/tweaks/widgets/Reboot;->is(I)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/m0narx/tweaks/main;->mActionText:Lcom/htc/widget/ActionBarText;

    const v1, 0x7f0a000a

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->setSecondaryText(I)V

    sget-object v0, Lcom/m0narx/tweaks/main;->mActionText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarText;->setSecondaryVisibility(I)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Reboot;->is(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/m0narx/tweaks/main;->mActionText:Lcom/htc/widget/ActionBarText;

    const v1, 0x7f0a000b

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->setSecondaryText(I)V

    sget-object v0, Lcom/m0narx/tweaks/main;->mActionText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarText;->setSecondaryVisibility(I)V

    goto :goto_0
.end method

.method private SetupHeader()V
    .locals 2

    sget-object v0, Lcom/m0narx/tweaks/main;->mActionButton:Lcom/htc/widget/ActionBarItemView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarItemView;->setEnabled(Z)V

    sget-object v0, Lcom/m0narx/tweaks/main;->mActionButton:Lcom/htc/widget/ActionBarItemView;

    const v1, 0x7f020020

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarItemView;->setIcon(I)V

    sget-object v0, Lcom/m0narx/tweaks/main;->mActionButton:Lcom/htc/widget/ActionBarItemView;

    const/high16 v1, 0x7f0a

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarItemView;->setText(I)V

    sget-object v0, Lcom/m0narx/tweaks/main;->mActionButton:Lcom/htc/widget/ActionBarItemView;

    new-instance v1, Lcom/m0narx/tweaks/about$3;

    invoke-direct {v1, p0}, Lcom/m0narx/tweaks/about$3;-><init>(Lcom/m0narx/tweaks/about;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/m0narx/tweaks/about;->CheckButtonState()V

    return-void
.end method


# virtual methods
.method public addChild(IIII)V
    .locals 2

    iget-object v0, p0, Lcom/m0narx/tweaks/about;->childs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/m0narx/tweaks/about;->childs:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/m0narx/tweaks/about;->childs_comment:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/m0narx/tweaks/about;->childs_img:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/m0narx/tweaks/about;->childs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/m0narx/tweaks/about;->childs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/m0narx/tweaks/about;->childs:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/m0narx/tweaks/about;->childs_comment:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/m0narx/tweaks/about;->childs_comment:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/m0narx/tweaks/about;->childs:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/m0narx/tweaks/about;->childs_img:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/m0narx/tweaks/about;->childs_img:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/m0narx/tweaks/about;->childs:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addGroup(III)V
    .locals 2

    iget-object v0, p0, Lcom/m0narx/tweaks/about;->groups:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/m0narx/tweaks/about;->groups_comment:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/m0narx/tweaks/about;->groups_img:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    const v3, 0x7f02000f

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onCreate(Landroid/os/Bundle;)V

    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/about;->setContentView(I)V

    invoke-direct {p0}, Lcom/m0narx/tweaks/about;->SetupHeader()V

    invoke-virtual {p0}, Lcom/m0narx/tweaks/about;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcExpandableListView;

    iput-object v0, p0, Lcom/m0narx/tweaks/about;->mListView:Lcom/htc/widget/HtcExpandableListView;

    iget-object v0, p0, Lcom/m0narx/tweaks/about;->mListView:Lcom/htc/widget/HtcExpandableListView;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcExpandableListView;->setTextFilterEnabled(Z)V

    iget-object v0, p0, Lcom/m0narx/tweaks/about;->mListView:Lcom/htc/widget/HtcExpandableListView;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcExpandableListView;->setFastScrollEnabled(Z)V

    iget-object v0, p0, Lcom/m0narx/tweaks/about;->mListView:Lcom/htc/widget/HtcExpandableListView;

    new-instance v1, Lcom/m0narx/tweaks/about$1;

    invoke-direct {v1, p0}, Lcom/m0narx/tweaks/about$1;-><init>(Lcom/m0narx/tweaks/about;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcExpandableListView;->setOnChildClickListener(Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;)V

    iget-object v0, p0, Lcom/m0narx/tweaks/about;->mListView:Lcom/htc/widget/HtcExpandableListView;

    new-instance v1, Lcom/m0narx/tweaks/about$2;

    invoke-direct {v1, p0}, Lcom/m0narx/tweaks/about$2;-><init>(Lcom/m0narx/tweaks/about;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcExpandableListView;->setOnGroupClickListener(Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/about;->groups:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/about;->groups_img:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/about;->groups_comment:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/about;->childs:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/about;->childs_comment:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/about;->childs_img:Ljava/util/ArrayList;

    const v0, 0x7f0a0013

    const v1, 0x7f0a0014

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/about;->addGroup(III)V

    const v0, 0x7f0a0015

    const v1, 0x7f0a0016

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/about;->addGroup(III)V

    const v0, 0x7f0a0017

    const v1, 0x7f0a0018

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/about;->addGroup(III)V

    const v0, 0x7f0a0019

    const v1, 0x7f0a001a

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/about;->addGroup(III)V

    const v0, 0x7f0a00a7

    const v1, 0x7f0a00a8

    const v2, 0x7f020014

    invoke-virtual {p0, v0, v1, v2}, Lcom/m0narx/tweaks/about;->addGroup(III)V

    const/4 v9, 0x0

    :goto_0
    const/4 v0, 0x4

    if-lt v9, v0, :cond_0

    new-instance v0, Lcom/m0narx/tweaks/about$ExpandableListAdapter;

    iget-object v3, p0, Lcom/m0narx/tweaks/about;->groups:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/m0narx/tweaks/about;->groups_comment:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/m0narx/tweaks/about;->groups_img:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/m0narx/tweaks/about;->childs:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/m0narx/tweaks/about;->childs_comment:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/m0narx/tweaks/about;->childs_img:Ljava/util/ArrayList;

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v8}, Lcom/m0narx/tweaks/about$ExpandableListAdapter;-><init>(Lcom/m0narx/tweaks/about;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/about;->mAdapter:Lcom/m0narx/tweaks/about$ExpandableListAdapter;

    iget-object v0, p0, Lcom/m0narx/tweaks/about;->mListView:Lcom/htc/widget/HtcExpandableListView;

    iget-object v1, p0, Lcom/m0narx/tweaks/about;->mAdapter:Lcom/m0narx/tweaks/about$ExpandableListAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    return-void

    :cond_0
    const v0, 0x7f0a000f

    const v1, 0x7f0a0010

    invoke-virtual {p0, v9, v0, v1, v3}, Lcom/m0narx/tweaks/about;->addChild(IIII)V

    const v0, 0x7f0a0011

    const v1, 0x7f0a0012

    const v2, 0x7f02001f

    invoke-virtual {p0, v9, v0, v1, v2}, Lcom/m0narx/tweaks/about;->addChild(IIII)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/htc/app/HtcListActivity;->onResume()V

    invoke-direct {p0}, Lcom/m0narx/tweaks/about;->SetupHeader()V

    return-void
.end method
