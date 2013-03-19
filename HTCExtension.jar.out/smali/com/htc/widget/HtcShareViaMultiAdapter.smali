.class public Lcom/htc/widget/HtcShareViaMultiAdapter;
.super Lcom/htc/widget/IHtcShareViaAdapter;
.source "HtcShareViaMultiAdapter.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private mAdapter:Landroid/widget/ListAdapter;

.field private mBgFlag:I

.field private mData:Landroid/widget/ActivityChooserModel;

.field private mExpandStatus:I

.field private mIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDismissOk:Z

.field private mIsSetTextResId:Z

.field private mListBgDraw:Landroid/graphics/drawable/Drawable;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mResId:I

.field private mReturnView:Landroid/view/View;

.field private mTextResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "applicationContext"

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Lcom/htc/widget/IHtcShareViaAdapter;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcShareViaMultiAdapter;->mIntents:Ljava/util/List;

    .line 32
    iput-boolean v1, p0, Lcom/htc/widget/HtcShareViaMultiAdapter;->mIsDismissOk:Z

    .line 33
    const/16 v0, 0xa0

    iput v0, p0, Lcom/htc/widget/HtcShareViaMultiAdapter;->mExpandStatus:I

    .line 44
    iput-boolean v1, p0, Lcom/htc/widget/HtcShareViaMultiAdapter;->mIsSetTextResId:Z

    .line 47
    iput-object p1, p0, Lcom/htc/widget/HtcShareViaMultiAdapter;->context:Landroid/content/Context;

    .line 48
    iget-object v0, p0, Lcom/htc/widget/HtcShareViaMultiAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcShareViaMultiAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 49
    return-void
.end method

.method private sort(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v2, ri:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 76
    .local v3, set:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    const/4 v1, 0x0

    .line 77
    .local v1, lable:Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .line 79
    .local v4, setSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 80
    const/4 v1, 0x0

    .line 81
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, p0, Lcom/htc/widget/HtcShareViaMultiAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v6}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 82
    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 84
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v4

    .line 79
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :cond_1
    return-object v2
.end method


# virtual methods
.method public UpdateRecord(Landroid/content/pm/ActivityInfo;)Z
    .locals 2
    .parameter "activityInfo"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/htc/widget/HtcShareViaMultiAdapter;->mData:Landroid/widget/ActivityChooserModel;

    if-nez v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/htc/widget/HtcShareViaMultiAdapter;->context:Landroid/content/Context;

    const-string v1, "task_specific_history_file_name.xml"

    invoke-static {v0, v1}, Landroid/widget/ActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/ActivityChooserModel;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcShareViaMultiAdapter;->mData:Landroid/widget/ActivityChooserModel;

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcShareViaMultiAdapter;->mData:Landroid/widget/ActivityChooserModel;

    invoke-virtual {v0, p1}, Landroid/widget/ActivityChooserModel;->upDateHisoryRecord(Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0
.end method

.method public addIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/widget/HtcShareViaMultiAdapter;->mIntents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    return-void
.end method

.method expand()V
    .locals 1

    .prologue
    .line 109
    const/16 v0, 0xa2

    iput v0, p0, Lcom/htc/widget/HtcShareViaMultiAdapter;->mExpandStatus:I

    return-void
.end method

.method public getCount()I
    .locals 4

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/htc/widget/HtcShareViaMultiAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/htc/widget/HtcShareViaMultiAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-le v0, v1, :cond_1

    const/16 v2, 0xa2

    iget v3, p0, Lcom/htc/widget/HtcShareViaMultiAdapter;->mExpandStatus:I

    if-eq v2, v3, :cond_1

    const/16 v2, 0xa1

    iput v2, p0, Lcom/htc/widget/HtcShareViaMultiAdapter;->mExpandStatus:I

    :cond_1
    iget v2, p0, Lcom/htc/widget/HtcShareViaMultiAdapter;->mExpandStatus:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_0
    .end packed-switch
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 140
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 169
    int-to-long v0, p1

    return-wide v0
.end method

.method public getShareListResolveInfo()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v2, infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v4, p0, Lcom/htc/widget/HtcShareViaMultiAdapter;->context:Landroid/content/Context;

    const-string v5, "task_specific_history_file_name.xml"

    invoke-static {v4, v5}, Landroid/widget/ActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/ActivityChooserModel;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/widget/HtcShareViaMultiAdapter;->mData:Landroid/widget/ActivityChooserModel;

    .line 61
    iget-object v4, p0, Lcom/htc/widget/HtcShareViaMultiAdapter;->mIntents:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 62
    .local v3, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/htc/widget/HtcShareViaMultiAdapter;->mData:Landroid/widget/ActivityChooserModel;

    invoke-virtual {v4, v3}, Landroid/widget/ActivityChooserModel;->addIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 64
    .end local v3           #intent:Landroid/content/Intent;
    :cond_0
    iget-object v4, p0, Lcom/htc/widget/HtcShareViaMultiAdapter;->mData:Landroid/widget/ActivityChooserModel;

    invoke-virtual {v4}, Landroid/widget/ActivityChooserModel;->MultiSortting()V

    .line 65
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v4, p0, Lcom/htc/widget/HtcShareViaMultiAdapter;->mData:Landroid/widget/ActivityChooserModel;

    invoke-virtual {v4}, Landroid/widget/ActivityChooserModel;->getActivityCount()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 66
    iget-object v4, p0, Lcom/htc/widget/HtcShareViaMultiAdapter;->mData:Landroid/widget/ActivityChooserModel;

    invoke-virtual {v4, v0}, Landroid/widget/ActivityChooserModel;->getActivity(I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 68
    :cond_1
    iget-object v4, p0, Lcom/htc/widget/HtcShareViaMultiAdapter;->mData:Landroid/widget/ActivityChooserModel;

    invoke-virtual {v4}, Landroid/widget/ActivityChooserModel;->clearActivity()V

    .line 69
    return-object v2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v5, -0x2

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/widget/HtcShareViaMultiAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v3, :cond_0

    :goto_0
    return-object v2

    :cond_0
    const/4 v3, 0x4

    if-ne p1, v3, :cond_2

    const/16 v3, 0xa1

    iget v4, p0, Lcom/htc/widget/HtcShareViaMultiAdapter;->mExpandStatus:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/htc/widget/HtcShareViaMultiAdapter;->mReturnView:Landroid/view/View;

    if-nez v3, :cond_1

    new-instance v0, Lcom/htc/widget/HtcListItem;

    iget-object v3, p0, Lcom/htc/widget/HtcShareViaMultiAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/htc/widget/HtcListItem;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/htc/widget/HtcListItem1LineCenteredText;

    iget-object v3, p0, Lcom/htc/widget/HtcShareViaMultiAdapter;->context:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/htc/widget/HtcListItem1LineCenteredText;-><init>(Landroid/content/Context;)V

    iget v3, p0, Lcom/htc/widget/HtcShareViaMultiAdapter;->mBgFlag:I

    packed-switch v3, :pswitch_data_0

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListItem;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem1LineCenteredText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v2, p0, Lcom/htc/widget/HtcShareViaMultiAdapter;->mTextResId:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem1LineCenteredText;->setTextStyle(I)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/htc/widget/HtcShareViaMultiAdapter;->context:Landroid/content/Context;

    const v3, 0x10404d8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem1LineCenteredText;->setText(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/htc/widget/HtcShareViaMultiAdapter;->mReturnView:Landroid/view/View;

    :cond_1
    iget-object v2, p0, Lcom/htc/widget/HtcShareViaMultiAdapter;->mReturnView:Landroid/view/View;

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/htc/widget/HtcShareViaMultiAdapter;->mListBgDraw:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListItem;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :pswitch_1
    iget v2, p0, Lcom/htc/widget/HtcShareViaMultiAdapter;->mResId:I

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListItem;->setBackgroundResource(I)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/htc/widget/HtcShareViaMultiAdapter;->mReturnView:Landroid/view/View;

    if-ne v3, p2, :cond_3

    iget-object v3, p0, Lcom/htc/widget/HtcShareViaMultiAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p1, v2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/htc/widget/HtcShareViaMultiAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method isDataEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method isDataReady()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method isDimissOk()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/htc/widget/HtcShareViaMultiAdapter;->mIsDismissOk:Z

    return v0
.end method

.method isExpanded()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/htc/widget/HtcShareViaMultiAdapter;->mExpandStatus:I

    return v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/htc/widget/HtcShareViaMultiAdapter;->mAdapter:Landroid/widget/ListAdapter;

    .line 93
    iget-object v0, p0, Lcom/htc/widget/HtcShareViaMultiAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcShareViaMultiAdapter;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v0, v0, Lcom/htc/widget/HtcShareViaAdapter;

    if-eqz v0, :cond_1

    .line 94
    iget-boolean v0, p0, Lcom/htc/widget/HtcShareViaMultiAdapter;->mIsSetTextResId:Z

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/htc/widget/HtcShareViaMultiAdapter;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Lcom/htc/widget/HtcShareViaAdapter;

    iget v1, p0, Lcom/htc/widget/HtcShareViaMultiAdapter;->mTextResId:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcShareViaAdapter;->setListItemTextAppearance(I)V

    .line 96
    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcShareViaMultiAdapter;->mBgFlag:I

    packed-switch v0, :pswitch_data_0

    .line 105
    :cond_1
    :goto_0
    return-void

    .line 98
    :pswitch_0
    iget-object v0, p0, Lcom/htc/widget/HtcShareViaMultiAdapter;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Lcom/htc/widget/HtcShareViaAdapter;

    iget-object v1, p0, Lcom/htc/widget/HtcShareViaMultiAdapter;->mListBgDraw:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcShareViaAdapter;->setListItemBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 101
    :pswitch_1
    iget-object v0, p0, Lcom/htc/widget/HtcShareViaMultiAdapter;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Lcom/htc/widget/HtcShareViaAdapter;

    iget v1, p0, Lcom/htc/widget/HtcShareViaMultiAdapter;->mResId:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcShareViaAdapter;->setListItemBackgroundResource(I)V

    goto :goto_0

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method setIsDimissOk(Z)V
    .locals 0
    .parameter "isDismissOk"

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/htc/widget/HtcShareViaMultiAdapter;->mIsDismissOk:Z

    .line 124
    return-void
.end method

.method setListItemBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 224
    iput-object p1, p0, Lcom/htc/widget/HtcShareViaMultiAdapter;->mListBgDraw:Landroid/graphics/drawable/Drawable;

    .line 225
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/widget/HtcShareViaMultiAdapter;->mBgFlag:I

    .line 226
    iget-object v0, p0, Lcom/htc/widget/HtcShareViaMultiAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcShareViaMultiAdapter;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v0, v0, Lcom/htc/widget/HtcShareViaAdapter;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/htc/widget/HtcShareViaMultiAdapter;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Lcom/htc/widget/HtcShareViaAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcShareViaAdapter;->setListItemBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 228
    :cond_0
    return-void
.end method

.method setListItemBackgroundResource(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 235
    iput p1, p0, Lcom/htc/widget/HtcShareViaMultiAdapter;->mResId:I

    .line 236
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/widget/HtcShareViaMultiAdapter;->mBgFlag:I

    .line 237
    iget-object v0, p0, Lcom/htc/widget/HtcShareViaMultiAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcShareViaMultiAdapter;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v0, v0, Lcom/htc/widget/HtcShareViaAdapter;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/htc/widget/HtcShareViaMultiAdapter;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Lcom/htc/widget/HtcShareViaAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcShareViaAdapter;->setListItemBackgroundResource(I)V

    .line 239
    :cond_0
    return-void
.end method

.method setListItemTextAppearance(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 242
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcShareViaMultiAdapter;->mIsSetTextResId:Z

    .line 243
    iput p1, p0, Lcom/htc/widget/HtcShareViaMultiAdapter;->mTextResId:I

    .line 244
    iget-object v0, p0, Lcom/htc/widget/HtcShareViaMultiAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcShareViaMultiAdapter;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v0, v0, Lcom/htc/widget/HtcShareViaAdapter;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/htc/widget/HtcShareViaMultiAdapter;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Lcom/htc/widget/HtcShareViaAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcShareViaAdapter;->setListItemTextAppearance(I)V

    .line 246
    :cond_0
    return-void
.end method

.method public shrink()V
    .locals 1

    .prologue
    .line 119
    const/16 v0, 0xa3

    iput v0, p0, Lcom/htc/widget/HtcShareViaMultiAdapter;->mExpandStatus:I

    .line 120
    return-void
.end method
