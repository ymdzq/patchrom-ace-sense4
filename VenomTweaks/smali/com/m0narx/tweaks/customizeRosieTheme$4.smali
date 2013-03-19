.class Lcom/m0narx/tweaks/customizeRosieTheme$4;
.super Ljava/lang/Object;
.source "customizeRosieTheme.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/customizeRosieTheme;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/widget/HtcAdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/customizeRosieTheme;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/customizeRosieTheme;)V
    .locals 0

    iput-object p1, p0, Lcom/m0narx/tweaks/customizeRosieTheme$4;->this$0:Lcom/m0narx/tweaks/customizeRosieTheme;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/customizeRosieTheme$4;)Lcom/m0narx/tweaks/customizeRosieTheme;
    .locals 1

    iget-object v0, p0, Lcom/m0narx/tweaks/customizeRosieTheme$4;->this$0:Lcom/m0narx/tweaks/customizeRosieTheme;

    return-object v0
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/m0narx/tweaks/customizeRosieTheme$4;->this$0:Lcom/m0narx/tweaks/customizeRosieTheme;

    iget-object v0, v0, Lcom/m0narx/tweaks/customizeRosieTheme;->mAdapter:Lcom/m0narx/tweaks/customizeRosieTheme$AppListAdapter;

    iget-object v0, v0, Lcom/m0narx/tweaks/customizeRosieTheme$AppListAdapter;->mIntent:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/m0narx/tweaks/customizeRosieTheme$4;->this$0:Lcom/m0narx/tweaks/customizeRosieTheme;

    iget-object v0, v0, Lcom/m0narx/tweaks/customizeRosieTheme;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030008

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/m0narx/tweaks/customizeRosieTheme$4;->this$0:Lcom/m0narx/tweaks/customizeRosieTheme;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x7f02

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0140

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    const v0, 0x7f08001d

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/HtcGridView;

    new-instance v4, Lcom/m0narx/tweaks/customizeRosieTheme$iconGridAdapter;

    iget-object v0, p0, Lcom/m0narx/tweaks/customizeRosieTheme$4;->this$0:Lcom/m0narx/tweaks/customizeRosieTheme;

    const/4 v1, 0x0

    invoke-direct {v4, v0, v1}, Lcom/m0narx/tweaks/customizeRosieTheme$iconGridAdapter;-><init>(Lcom/m0narx/tweaks/customizeRosieTheme;Lcom/m0narx/tweaks/customizeRosieTheme$iconGridAdapter;)V

    const-string v0, ""

    iget-object v1, p0, Lcom/m0narx/tweaks/customizeRosieTheme$4;->this$0:Lcom/m0narx/tweaks/customizeRosieTheme;

    const/4 v3, 0x0

    aget-object v3, v5, v3

    const/4 v10, 0x1

    aget-object v10, v5, v10

    const/4 v11, 0x0

    invoke-virtual {v1, v3, v10, v11}, Lcom/m0narx/tweaks/customizeRosieTheme;->GetActivityIcon(Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/m0narx/tweaks/customizeRosieTheme$iconGridAdapter;->addItem(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    const/4 v9, 0x0

    :goto_0
    iget-object v0, p0, Lcom/m0narx/tweaks/customizeRosieTheme$4;->this$0:Lcom/m0narx/tweaks/customizeRosieTheme;

    #getter for: Lcom/m0narx/tweaks/customizeRosieTheme;->themeIcons:[Ljava/lang/String;
    invoke-static {v0}, Lcom/m0narx/tweaks/customizeRosieTheme;->access$4(Lcom/m0narx/tweaks/customizeRosieTheme;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lt v9, v0, :cond_0

    invoke-virtual {v6, v4}, Lcom/htc/widget/HtcGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Lcom/m0narx/tweaks/customizeRosieTheme$4$1;

    move-object v1, p0

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/m0narx/tweaks/customizeRosieTheme$4$1;-><init>(Lcom/m0narx/tweaks/customizeRosieTheme$4;Lcom/htc/widget/HtcAlertDialog;ILcom/m0narx/tweaks/customizeRosieTheme$iconGridAdapter;[Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/htc/widget/HtcGridView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->show()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/m0narx/tweaks/customizeRosieTheme$4;->this$0:Lcom/m0narx/tweaks/customizeRosieTheme;

    #getter for: Lcom/m0narx/tweaks/customizeRosieTheme;->themeIcons:[Ljava/lang/String;
    invoke-static {v0}, Lcom/m0narx/tweaks/customizeRosieTheme;->access$4(Lcom/m0narx/tweaks/customizeRosieTheme;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v9

    iget-object v1, p0, Lcom/m0narx/tweaks/customizeRosieTheme$4;->this$0:Lcom/m0narx/tweaks/customizeRosieTheme;

    iget-object v1, v1, Lcom/m0narx/tweaks/customizeRosieTheme;->themeDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v9

    invoke-virtual {v4, v0, v1}, Lcom/m0narx/tweaks/customizeRosieTheme$iconGridAdapter;->addItem(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method
