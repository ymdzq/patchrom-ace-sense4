.class Lcom/m0narx/tweaks/widgets/themePicker$AppListAdapter;
.super Landroid/widget/BaseAdapter;
.source "themePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/widgets/themePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppListAdapter"
.end annotation


# instance fields
.field public mIcon:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field public mName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public mPackage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mTheme:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/m0narx/tweaks/widgets/themePicker;


# direct methods
.method public constructor <init>(Lcom/m0narx/tweaks/widgets/themePicker;)V
    .locals 1

    iput-object p1, p0, Lcom/m0narx/tweaks/widgets/themePicker$AppListAdapter;->this$0:Lcom/m0narx/tweaks/widgets/themePicker;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/widgets/themePicker$AppListAdapter;->mName:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/widgets/themePicker$AppListAdapter;->mPackage:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/widgets/themePicker$AppListAdapter;->mIcon:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/widgets/themePicker$AppListAdapter;->mTheme:Ljava/util/ArrayList;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/m0narx/tweaks/widgets/themePicker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/m0narx/tweaks/widgets/themePicker$AppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public addItem(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/themePicker$AppListAdapter;->mName:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/themePicker$AppListAdapter;->mPackage:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/themePicker$AppListAdapter;->mIcon:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/themePicker$AppListAdapter;->mTheme:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/m0narx/tweaks/widgets/themePicker$AppListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/themePicker$AppListAdapter;->mName:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/m0narx/tweaks/widgets/themePicker$AppListAdapter;->mName:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    const/16 v9, 0x1c

    const/16 v8, 0x9

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x4

    const/4 v0, 0x0

    if-nez p2, :cond_8

    iget-object v2, p0, Lcom/m0narx/tweaks/widgets/themePicker$AppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030012

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/m0narx/tweaks/widgets/themePicker$ViewHolder;

    invoke-direct {v0}, Lcom/m0narx/tweaks/widgets/themePicker$ViewHolder;-><init>()V

    const v2, 0x7f08000d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem1LineCenteredText;

    iput-object v2, v0, Lcom/m0narx/tweaks/widgets/themePicker$ViewHolder;->textView:Lcom/htc/widget/HtcListItem1LineCenteredText;

    const v2, 0x7f08000e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemImageButton;

    iput-object v2, v0, Lcom/m0narx/tweaks/widgets/themePicker$ViewHolder;->Icon:Lcom/htc/widget/HtcListItemImageButton;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v3, v0, Lcom/m0narx/tweaks/widgets/themePicker$ViewHolder;->textView:Lcom/htc/widget/HtcListItem1LineCenteredText;

    iget-object v2, p0, Lcom/m0narx/tweaks/widgets/themePicker$AppListAdapter;->mName:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Lcom/htc/widget/HtcListItem1LineCenteredText;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/m0narx/tweaks/widgets/themePicker$ViewHolder;->textView:Lcom/htc/widget/HtcListItem1LineCenteredText;

    iget-object v2, p0, Lcom/m0narx/tweaks/widgets/themePicker$AppListAdapter;->mTheme:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/htc/widget/HtcListItem1LineCenteredText;->setTag(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/m0narx/tweaks/widgets/themePicker$AppListAdapter;->mIcon:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    iget-object v2, p0, Lcom/m0narx/tweaks/widgets/themePicker$AppListAdapter;->this$0:Lcom/m0narx/tweaks/widgets/themePicker;

    iget v2, v2, Lcom/m0narx/tweaks/widgets/themePicker;->tFilter:I

    iget-object v3, p0, Lcom/m0narx/tweaks/widgets/themePicker$AppListAdapter;->this$0:Lcom/m0narx/tweaks/widgets/themePicker;

    iget-object v3, v3, Lcom/m0narx/tweaks/widgets/themePicker;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v2, :cond_0

    const/16 v2, 0x32

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    :cond_0
    iget-object v2, p0, Lcom/m0narx/tweaks/widgets/themePicker$AppListAdapter;->this$0:Lcom/m0narx/tweaks/widgets/themePicker;

    iget v2, v2, Lcom/m0narx/tweaks/widgets/themePicker;->tFilter:I

    iget-object v3, p0, Lcom/m0narx/tweaks/widgets/themePicker$AppListAdapter;->this$0:Lcom/m0narx/tweaks/widgets/themePicker;

    iget-object v3, v3, Lcom/m0narx/tweaks/widgets/themePicker;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eq v2, v6, :cond_1

    iget-object v2, p0, Lcom/m0narx/tweaks/widgets/themePicker$AppListAdapter;->this$0:Lcom/m0narx/tweaks/widgets/themePicker;

    iget v2, v2, Lcom/m0narx/tweaks/widgets/themePicker;->tFilter:I

    iget-object v3, p0, Lcom/m0narx/tweaks/widgets/themePicker$AppListAdapter;->this$0:Lcom/m0narx/tweaks/widgets/themePicker;

    iget-object v3, v3, Lcom/m0narx/tweaks/widgets/themePicker;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v2, v7, :cond_2

    :cond_1
    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    :cond_2
    iget-object v2, p0, Lcom/m0narx/tweaks/widgets/themePicker$AppListAdapter;->this$0:Lcom/m0narx/tweaks/widgets/themePicker;

    iget v2, v2, Lcom/m0narx/tweaks/widgets/themePicker;->tFilter:I

    iget-object v3, p0, Lcom/m0narx/tweaks/widgets/themePicker$AppListAdapter;->this$0:Lcom/m0narx/tweaks/widgets/themePicker;

    iget-object v3, v3, Lcom/m0narx/tweaks/widgets/themePicker;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v2, v8, :cond_3

    invoke-virtual {v1, v9}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    :cond_3
    iget-object v2, v0, Lcom/m0narx/tweaks/widgets/themePicker$ViewHolder;->Icon:Lcom/htc/widget/HtcListItemImageButton;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcListItemImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/m0narx/tweaks/widgets/themePicker$AppListAdapter;->this$0:Lcom/m0narx/tweaks/widgets/themePicker;

    iget v2, v2, Lcom/m0narx/tweaks/widgets/themePicker;->tFilter:I

    iget-object v3, p0, Lcom/m0narx/tweaks/widgets/themePicker$AppListAdapter;->this$0:Lcom/m0narx/tweaks/widgets/themePicker;

    iget-object v3, v3, Lcom/m0narx/tweaks/widgets/themePicker;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eq v2, v6, :cond_4

    iget-object v2, p0, Lcom/m0narx/tweaks/widgets/themePicker$AppListAdapter;->this$0:Lcom/m0narx/tweaks/widgets/themePicker;

    iget v2, v2, Lcom/m0narx/tweaks/widgets/themePicker;->tFilter:I

    iget-object v3, p0, Lcom/m0narx/tweaks/widgets/themePicker$AppListAdapter;->this$0:Lcom/m0narx/tweaks/widgets/themePicker;

    iget-object v3, v3, Lcom/m0narx/tweaks/widgets/themePicker;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v2, v7, :cond_5

    :cond_4
    iget-object v2, v0, Lcom/m0narx/tweaks/widgets/themePicker$ViewHolder;->Icon:Lcom/htc/widget/HtcListItemImageButton;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcListItemImageButton;->setImageLevel(I)V

    :cond_5
    iget-object v2, p0, Lcom/m0narx/tweaks/widgets/themePicker$AppListAdapter;->this$0:Lcom/m0narx/tweaks/widgets/themePicker;

    iget v2, v2, Lcom/m0narx/tweaks/widgets/themePicker;->tFilter:I

    iget-object v3, p0, Lcom/m0narx/tweaks/widgets/themePicker$AppListAdapter;->this$0:Lcom/m0narx/tweaks/widgets/themePicker;

    iget-object v3, v3, Lcom/m0narx/tweaks/widgets/themePicker;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v2, v8, :cond_6

    iget-object v2, v0, Lcom/m0narx/tweaks/widgets/themePicker$ViewHolder;->Icon:Lcom/htc/widget/HtcListItemImageButton;

    invoke-virtual {v2, v9}, Lcom/htc/widget/HtcListItemImageButton;->setImageLevel(I)V

    :cond_6
    iget-object v2, p0, Lcom/m0narx/tweaks/widgets/themePicker$AppListAdapter;->this$0:Lcom/m0narx/tweaks/widgets/themePicker;

    iget v2, v2, Lcom/m0narx/tweaks/widgets/themePicker;->tFilter:I

    iget-object v3, p0, Lcom/m0narx/tweaks/widgets/themePicker$AppListAdapter;->this$0:Lcom/m0narx/tweaks/widgets/themePicker;

    iget-object v3, v3, Lcom/m0narx/tweaks/widgets/themePicker;->tHelper:Lcom/m0narx/tweaks/widgets/themeHelper;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v2, :cond_7

    iget-object v2, v0, Lcom/m0narx/tweaks/widgets/themePicker$ViewHolder;->Icon:Lcom/htc/widget/HtcListItemImageButton;

    const/16 v3, 0x32

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItemImageButton;->setImageLevel(I)V

    :cond_7
    return-object p2

    :cond_8
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/widgets/themePicker$ViewHolder;

    goto/16 :goto_0
.end method
