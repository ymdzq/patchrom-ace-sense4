.class public Lcom/htc/widget/HtcShareViaAdapter;
.super Lcom/htc/widget/IHtcShareViaAdapter;
.source "HtcShareViaAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HtcShareViaAdapter$ShareViaViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private mBgFlag:I

.field private mDataModel:Lcom/htc/widget/HtcActivityChooserModel;

.field private mExpandStatus:I

.field private mIsDataReady:Z

.field private mIsDismissOk:Z

.field private mIsRegister:Z

.field private mListBgDraw:Landroid/graphics/drawable/Drawable;

.field private final mModelDataSetOberver:Landroid/database/DataSetObserver;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mResId:I

.field private mTextResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/htc/widget/IHtcShareViaAdapter;-><init>()V

    iput-boolean v1, p0, Lcom/htc/widget/HtcShareViaAdapter;->mIsDismissOk:Z

    const/16 v0, 0xa0

    iput v0, p0, Lcom/htc/widget/HtcShareViaAdapter;->mExpandStatus:I

    iput-boolean v1, p0, Lcom/htc/widget/HtcShareViaAdapter;->mIsRegister:Z

    iput-boolean v1, p0, Lcom/htc/widget/HtcShareViaAdapter;->mIsDataReady:Z

    new-instance v0, Lcom/htc/widget/HtcShareViaAdapter$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcShareViaAdapter$1;-><init>(Lcom/htc/widget/HtcShareViaAdapter;)V

    iput-object v0, p0, Lcom/htc/widget/HtcShareViaAdapter;->mModelDataSetOberver:Landroid/database/DataSetObserver;

    iput-object p1, p0, Lcom/htc/widget/HtcShareViaAdapter;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/htc/widget/HtcShareViaAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcShareViaAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p2}, Lcom/htc/widget/HtcShareViaAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1, v0, v0}, Lcom/htc/widget/HtcShareViaAdapter;->setIntent(Landroid/content/Intent;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;Ljava/util/List;Ljava/util/List;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p4}, Lcom/htc/widget/HtcShareViaAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/widget/HtcShareViaAdapter;->setIntent(Landroid/content/Intent;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$002(Lcom/htc/widget/HtcShareViaAdapter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/HtcShareViaAdapter;->mIsDataReady:Z

    return p1
.end method


# virtual methods
.method expand()V
    .locals 1

    const/16 v0, 0xa2

    iput v0, p0, Lcom/htc/widget/HtcShareViaAdapter;->mExpandStatus:I

    return-void
.end method

.method public getCount()I
    .locals 5

    const/4 v1, 0x1

    const/16 v4, 0xa1

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/htc/widget/HtcShareViaAdapter;->mDataModel:Lcom/htc/widget/HtcActivityChooserModel;

    if-nez v3, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v3, p0, Lcom/htc/widget/HtcShareViaAdapter;->mIsDataReady:Z

    if-nez v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/htc/widget/HtcShareViaAdapter;->mDataModel:Lcom/htc/widget/HtcActivityChooserModel;

    invoke-virtual {v3}, Lcom/htc/widget/HtcActivityChooserModel;->getActivityCount()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    if-le v0, v2, :cond_5

    iget v1, p0, Lcom/htc/widget/HtcShareViaAdapter;->mExpandStatus:I

    const/16 v3, 0xa2

    if-eq v1, v3, :cond_5

    iput v4, p0, Lcom/htc/widget/HtcShareViaAdapter;->mExpandStatus:I

    :cond_4
    :goto_1
    iget v1, p0, Lcom/htc/widget/HtcShareViaAdapter;->mExpandStatus:I

    if-ne v1, v4, :cond_0

    move v0, v2

    goto :goto_0

    :cond_5
    if-gt v0, v2, :cond_4

    iget v1, p0, Lcom/htc/widget/HtcShareViaAdapter;->mExpandStatus:I

    if-ne v1, v4, :cond_4

    const/16 v1, 0xa0

    iput v1, p0, Lcom/htc/widget/HtcShareViaAdapter;->mExpandStatus:I

    goto :goto_1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/widget/HtcShareViaAdapter;->mDataModel:Lcom/htc/widget/HtcActivityChooserModel;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcShareViaAdapter;->isDataReady()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget/HtcShareViaAdapter;->mDataModel:Lcom/htc/widget/HtcActivityChooserModel;

    invoke-virtual {v2}, Lcom/htc/widget/HtcActivityChooserModel;->getActivityCount()I

    move-result v0

    if-lez v0, :cond_0

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcShareViaAdapter;->mDataModel:Lcom/htc/widget/HtcActivityChooserModel;

    invoke-virtual {v1, p1}, Lcom/htc/widget/HtcActivityChooserModel;->chooseActivity(I)Landroid/content/Intent;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getShareListResolveInfo()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/htc/widget/HtcShareViaAdapter;->mDataModel:Lcom/htc/widget/HtcActivityChooserModel;

    invoke-virtual {v3}, Lcom/htc/widget/HtcActivityChooserModel;->getActivityCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Lcom/htc/widget/HtcShareViaAdapter;->mDataModel:Lcom/htc/widget/HtcActivityChooserModel;

    invoke-virtual {v3, v1}, Lcom/htc/widget/HtcActivityChooserModel;->getActivity(I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    const/16 v8, 0x8

    const/4 v7, -0x2

    const/4 v6, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcShareViaAdapter$ShareViaViewHolder;

    :goto_0
    iget-boolean v4, p0, Lcom/htc/widget/HtcShareViaAdapter;->mIsDataReady:Z

    if-nez v4, :cond_1

    iget-object v4, v3, Lcom/htc/widget/HtcShareViaAdapter$ShareViaViewHolder;->icon:Lcom/htc/widget/HtcListItemColorIcon;

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, v3, Lcom/htc/widget/HtcShareViaAdapter$ShareViaViewHolder;->icon:Lcom/htc/widget/HtcListItemColorIcon;

    invoke-virtual {v4, v8}, Lcom/htc/widget/HtcListItemColorIcon;->setVisibility(I)V

    iget-object v4, v3, Lcom/htc/widget/HtcShareViaAdapter$ShareViaViewHolder;->text:Lcom/htc/widget/HtcListItem1LineCenteredText;

    iget-object v5, p0, Lcom/htc/widget/HtcShareViaAdapter;->context:Landroid/content/Context;

    const v6, 0x10403b1

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItem1LineCenteredText;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-object p2

    :cond_0
    new-instance v2, Lcom/htc/widget/HtcListItem;

    iget-object v4, p0, Lcom/htc/widget/HtcShareViaAdapter;->context:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/htc/widget/HtcListItem;-><init>(Landroid/content/Context;)V

    iget v4, p0, Lcom/htc/widget/HtcShareViaAdapter;->mBgFlag:I

    packed-switch v4, :pswitch_data_0

    invoke-virtual {v2, v6}, Lcom/htc/widget/HtcListItem;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    new-instance v3, Lcom/htc/widget/HtcShareViaAdapter$ShareViaViewHolder;

    invoke-direct {v3, v6}, Lcom/htc/widget/HtcShareViaAdapter$ShareViaViewHolder;-><init>(Lcom/htc/widget/HtcShareViaAdapter$1;)V

    new-instance v4, Lcom/htc/widget/HtcListItemColorIcon;

    iget-object v5, p0, Lcom/htc/widget/HtcShareViaAdapter;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/htc/widget/HtcListItemColorIcon;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Lcom/htc/widget/HtcShareViaAdapter$ShareViaViewHolder;->icon:Lcom/htc/widget/HtcListItemColorIcon;

    new-instance v4, Lcom/htc/widget/HtcListItem1LineCenteredText;

    iget-object v5, p0, Lcom/htc/widget/HtcShareViaAdapter;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/htc/widget/HtcListItem1LineCenteredText;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Lcom/htc/widget/HtcShareViaAdapter$ShareViaViewHolder;->text:Lcom/htc/widget/HtcListItem1LineCenteredText;

    iget-object v4, v3, Lcom/htc/widget/HtcShareViaAdapter$ShareViaViewHolder;->icon:Lcom/htc/widget/HtcListItemColorIcon;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItemColorIcon;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, v3, Lcom/htc/widget/HtcShareViaAdapter$ShareViaViewHolder;->text:Lcom/htc/widget/HtcListItem1LineCenteredText;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItem1LineCenteredText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, v3, Lcom/htc/widget/HtcShareViaAdapter$ShareViaViewHolder;->text:Lcom/htc/widget/HtcListItem1LineCenteredText;

    iget v5, p0, Lcom/htc/widget/HtcShareViaAdapter;->mTextResId:I

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItem1LineCenteredText;->setTextStyle(I)V

    iget-object v4, v3, Lcom/htc/widget/HtcShareViaAdapter$ShareViaViewHolder;->icon:Lcom/htc/widget/HtcListItemColorIcon;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcListItem;->addView(Landroid/view/View;)V

    iget-object v4, v3, Lcom/htc/widget/HtcShareViaAdapter$ShareViaViewHolder;->text:Lcom/htc/widget/HtcListItem1LineCenteredText;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcListItem;->addView(Landroid/view/View;)V

    move-object p2, v2

    invoke-virtual {p2, v3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_0
    iget-object v4, p0, Lcom/htc/widget/HtcShareViaAdapter;->mListBgDraw:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcListItem;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :pswitch_1
    iget v4, p0, Lcom/htc/widget/HtcShareViaAdapter;->mResId:I

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcListItem;->setBackgroundResource(I)V

    goto :goto_2

    :cond_1
    iget-object v4, p0, Lcom/htc/widget/HtcShareViaAdapter;->mDataModel:Lcom/htc/widget/HtcActivityChooserModel;

    invoke-virtual {v4}, Lcom/htc/widget/HtcActivityChooserModel;->getActivityCount()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v4, v3, Lcom/htc/widget/HtcShareViaAdapter$ShareViaViewHolder;->icon:Lcom/htc/widget/HtcListItemColorIcon;

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, v3, Lcom/htc/widget/HtcShareViaAdapter$ShareViaViewHolder;->icon:Lcom/htc/widget/HtcListItemColorIcon;

    invoke-virtual {v4, v8}, Lcom/htc/widget/HtcListItemColorIcon;->setVisibility(I)V

    iget-object v4, v3, Lcom/htc/widget/HtcShareViaAdapter$ShareViaViewHolder;->text:Lcom/htc/widget/HtcListItem1LineCenteredText;

    iget-object v5, p0, Lcom/htc/widget/HtcShareViaAdapter;->context:Landroid/content/Context;

    const v6, 0x104043b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItem1LineCenteredText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    const/4 v4, 0x4

    if-ne p1, v4, :cond_3

    const/16 v4, 0xa1

    iget v5, p0, Lcom/htc/widget/HtcShareViaAdapter;->mExpandStatus:I

    if-ne v4, v5, :cond_3

    iget-object v4, v3, Lcom/htc/widget/HtcShareViaAdapter$ShareViaViewHolder;->icon:Lcom/htc/widget/HtcListItemColorIcon;

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, v3, Lcom/htc/widget/HtcShareViaAdapter$ShareViaViewHolder;->icon:Lcom/htc/widget/HtcListItemColorIcon;

    invoke-virtual {v4, v8}, Lcom/htc/widget/HtcListItemColorIcon;->setVisibility(I)V

    iget-object v4, v3, Lcom/htc/widget/HtcShareViaAdapter$ShareViaViewHolder;->text:Lcom/htc/widget/HtcListItem1LineCenteredText;

    iget-object v5, p0, Lcom/htc/widget/HtcShareViaAdapter;->context:Landroid/content/Context;

    const v6, 0x1040384

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItem1LineCenteredText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_3
    iget-object v4, p0, Lcom/htc/widget/HtcShareViaAdapter;->mDataModel:Lcom/htc/widget/HtcActivityChooserModel;

    invoke-virtual {v4, p1}, Lcom/htc/widget/HtcActivityChooserModel;->getActivity(I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v4, v3, Lcom/htc/widget/HtcShareViaAdapter$ShareViaViewHolder;->icon:Lcom/htc/widget/HtcListItemColorIcon;

    iget-object v5, p0, Lcom/htc/widget/HtcShareViaAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v5}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, v3, Lcom/htc/widget/HtcShareViaAdapter$ShareViaViewHolder;->icon:Lcom/htc/widget/HtcListItemColorIcon;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItemColorIcon;->setVisibility(I)V

    iget-object v4, v3, Lcom/htc/widget/HtcShareViaAdapter$ShareViaViewHolder;->text:Lcom/htc/widget/HtcListItem1LineCenteredText;

    iget-object v5, p0, Lcom/htc/widget/HtcShareViaAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItem1LineCenteredText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method isDataEmpty()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/htc/widget/HtcShareViaAdapter;->mDataModel:Lcom/htc/widget/HtcActivityChooserModel;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcShareViaAdapter;->mDataModel:Lcom/htc/widget/HtcActivityChooserModel;

    invoke-virtual {v1}, Lcom/htc/widget/HtcActivityChooserModel;->getActivityCount()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isDataReady()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/HtcShareViaAdapter;->mIsDataReady:Z

    return v0
.end method

.method isDimissOk()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/HtcShareViaAdapter;->mIsDismissOk:Z

    return v0
.end method

.method isExpanded()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcShareViaAdapter;->mExpandStatus:I

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/htc/widget/IHtcShareViaAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iget-boolean v0, p0, Lcom/htc/widget/HtcShareViaAdapter;->mIsRegister:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcShareViaAdapter;->mIsRegister:Z

    iget-object v0, p0, Lcom/htc/widget/HtcShareViaAdapter;->mDataModel:Lcom/htc/widget/HtcActivityChooserModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcShareViaAdapter;->mDataModel:Lcom/htc/widget/HtcActivityChooserModel;

    iget-object v1, p0, Lcom/htc/widget/HtcShareViaAdapter;->mModelDataSetOberver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcActivityChooserModel;->registerObserver(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcShareViaAdapter;->mIsDataReady:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcShareViaAdapter;->mIsRegister:Z

    iget-object v0, p0, Lcom/htc/widget/HtcShareViaAdapter;->context:Landroid/content/Context;

    const-string v1, "task_specific_history_file_name.xml"

    iget-object v2, p0, Lcom/htc/widget/HtcShareViaAdapter;->mModelDataSetOberver:Landroid/database/DataSetObserver;

    invoke-static {v0, v1, v2}, Lcom/htc/widget/HtcActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;Landroid/database/DataSetObserver;)Lcom/htc/widget/HtcActivityChooserModel;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcShareViaAdapter;->mDataModel:Lcom/htc/widget/HtcActivityChooserModel;

    iget-object v0, p0, Lcom/htc/widget/HtcShareViaAdapter;->mDataModel:Lcom/htc/widget/HtcActivityChooserModel;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcActivityChooserModel;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method final setIntent(Landroid/content/Intent;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcShareViaAdapter;->mIsDataReady:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcShareViaAdapter;->mIsRegister:Z

    iget-object v0, p0, Lcom/htc/widget/HtcShareViaAdapter;->context:Landroid/content/Context;

    const-string v1, "task_specific_history_file_name.xml"

    iget-object v2, p0, Lcom/htc/widget/HtcShareViaAdapter;->mModelDataSetOberver:Landroid/database/DataSetObserver;

    invoke-static {v0, v1, v2}, Lcom/htc/widget/HtcActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;Landroid/database/DataSetObserver;)Lcom/htc/widget/HtcActivityChooserModel;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcShareViaAdapter;->mDataModel:Lcom/htc/widget/HtcActivityChooserModel;

    iget-object v0, p0, Lcom/htc/widget/HtcShareViaAdapter;->mDataModel:Lcom/htc/widget/HtcActivityChooserModel;

    invoke-virtual {v0, p2}, Lcom/htc/widget/HtcActivityChooserModel;->setAllowedPackages(Ljava/util/List;)V

    iget-object v0, p0, Lcom/htc/widget/HtcShareViaAdapter;->mDataModel:Lcom/htc/widget/HtcActivityChooserModel;

    invoke-virtual {v0, p3}, Lcom/htc/widget/HtcActivityChooserModel;->setExcludedPackages(Ljava/util/List;)V

    iget-object v0, p0, Lcom/htc/widget/HtcShareViaAdapter;->mDataModel:Lcom/htc/widget/HtcActivityChooserModel;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcActivityChooserModel;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method setIsDimissOk(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/HtcShareViaAdapter;->mIsDismissOk:Z

    return-void
.end method

.method setListItemBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/widget/HtcShareViaAdapter;->mListBgDraw:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/widget/HtcShareViaAdapter;->mBgFlag:I

    return-void
.end method

.method setListItemBackgroundResource(I)V
    .locals 1

    iput p1, p0, Lcom/htc/widget/HtcShareViaAdapter;->mResId:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/widget/HtcShareViaAdapter;->mBgFlag:I

    return-void
.end method

.method setListItemTextAppearance(I)V
    .locals 0

    iput p1, p0, Lcom/htc/widget/HtcShareViaAdapter;->mTextResId:I

    return-void
.end method

.method public shrink()V
    .locals 1

    const/16 v0, 0xa3

    iput v0, p0, Lcom/htc/widget/HtcShareViaAdapter;->mExpandStatus:I

    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/htc/widget/IHtcShareViaAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    iget-boolean v0, p0, Lcom/htc/widget/HtcShareViaAdapter;->mIsRegister:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcShareViaAdapter;->mIsRegister:Z

    iget-object v0, p0, Lcom/htc/widget/HtcShareViaAdapter;->mDataModel:Lcom/htc/widget/HtcActivityChooserModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcShareViaAdapter;->mDataModel:Lcom/htc/widget/HtcActivityChooserModel;

    iget-object v1, p0, Lcom/htc/widget/HtcShareViaAdapter;->mModelDataSetOberver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcActivityChooserModel;->unregisterObserver(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
