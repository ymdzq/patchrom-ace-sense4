.class Lcom/m0narx/tweaks/customLSnotifications$AppAdapter;
.super Landroid/widget/BaseAdapter;
.source "customLSnotifications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/customLSnotifications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppAdapter"
.end annotation


# instance fields
.field public mAppName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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

.field final synthetic this$0:Lcom/m0narx/tweaks/customLSnotifications;


# direct methods
.method public constructor <init>(Lcom/m0narx/tweaks/customLSnotifications;)V
    .locals 1

    iput-object p1, p0, Lcom/m0narx/tweaks/customLSnotifications$AppAdapter;->this$0:Lcom/m0narx/tweaks/customLSnotifications;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/customLSnotifications$AppAdapter;->mPackage:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/customLSnotifications$AppAdapter;->mIcon:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/customLSnotifications$AppAdapter;->mAppName:Ljava/util/ArrayList;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/m0narx/tweaks/customLSnotifications;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/m0narx/tweaks/customLSnotifications$AppAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public addItem(Ljava/lang/String;)V
    .locals 9

    const/4 v2, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/m0narx/tweaks/customLSnotifications$AppAdapter;->this$0:Lcom/m0narx/tweaks/customLSnotifications;

    #getter for: Lcom/m0narx/tweaks/customLSnotifications;->pm:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/m0narx/tweaks/customLSnotifications;->access$0(Lcom/m0narx/tweaks/customLSnotifications;)Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v7, v4, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v8, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-lt v6, v8, :cond_1

    :goto_1
    if-nez v2, :cond_0

    move-object v2, p1

    :cond_0
    iget-object v5, p0, Lcom/m0narx/tweaks/customLSnotifications$AppAdapter;->mAppName:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/m0narx/tweaks/customLSnotifications$AppAdapter;->mPackage:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/m0narx/tweaks/customLSnotifications$AppAdapter;->mIcon:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/m0narx/tweaks/customLSnotifications$AppAdapter;->notifyDataSetChanged()V

    return-void

    :cond_1
    :try_start_1
    aget-object v3, v7, v6

    if-nez v2, :cond_2

    iget-object v5, p0, Lcom/m0narx/tweaks/customLSnotifications$AppAdapter;->this$0:Lcom/m0narx/tweaks/customLSnotifications;

    #getter for: Lcom/m0narx/tweaks/customLSnotifications;->pm:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/m0narx/tweaks/customLSnotifications;->access$0(Lcom/m0narx/tweaks/customLSnotifications;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    :cond_2
    if-nez v1, :cond_3

    iget-object v5, p0, Lcom/m0narx/tweaks/customLSnotifications$AppAdapter;->this$0:Lcom/m0narx/tweaks/customLSnotifications;

    #getter for: Lcom/m0narx/tweaks/customLSnotifications;->pm:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/m0narx/tweaks/customLSnotifications;->access$0(Lcom/m0narx/tweaks/customLSnotifications;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    :cond_3
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_0

    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/m0narx/tweaks/customLSnotifications$AppAdapter;->mAppName:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/customLSnotifications$AppAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/m0narx/tweaks/customLSnotifications$AppAdapter;->mAppName:Ljava/util/ArrayList;

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
    .locals 7

    const/4 v6, 0x0

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object v3, p0, Lcom/m0narx/tweaks/customLSnotifications$AppAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030010

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/m0narx/tweaks/customLSnotifications$ViewHolder;

    invoke-direct {v0}, Lcom/m0narx/tweaks/customLSnotifications$ViewHolder;-><init>()V

    const v3, 0x7f080022

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItem1LineCenteredText;

    iput-object v3, v0, Lcom/m0narx/tweaks/customLSnotifications$ViewHolder;->textView:Lcom/htc/widget/HtcListItem1LineCenteredText;

    const v3, 0x7f08000e

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItemTileImage;

    iput-object v3, v0, Lcom/m0narx/tweaks/customLSnotifications$ViewHolder;->icon:Lcom/htc/widget/HtcListItemTileImage;

    const v3, 0x7f080004

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItemImageButton;

    iput-object v3, v0, Lcom/m0narx/tweaks/customLSnotifications$ViewHolder;->delete:Lcom/htc/widget/HtcListItemImageButton;

    iget-object v3, v0, Lcom/m0narx/tweaks/customLSnotifications$ViewHolder;->delete:Lcom/htc/widget/HtcListItemImageButton;

    const v4, 0x20800f3

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    const v3, 0x7f08000a

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItemImageButton;

    iput-object v3, v0, Lcom/m0narx/tweaks/customLSnotifications$ViewHolder;->Image:Lcom/htc/widget/HtcListItemImageButton;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v4, v0, Lcom/m0narx/tweaks/customLSnotifications$ViewHolder;->textView:Lcom/htc/widget/HtcListItem1LineCenteredText;

    iget-object v3, p0, Lcom/m0narx/tweaks/customLSnotifications$AppAdapter;->mAppName:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/htc/widget/HtcListItem1LineCenteredText;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lcom/m0narx/tweaks/customLSnotifications$ViewHolder;->icon:Lcom/htc/widget/HtcListItemTileImage;

    iget-object v3, p0, Lcom/m0narx/tweaks/customLSnotifications$AppAdapter;->mIcon:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v3}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, v0, Lcom/m0narx/tweaks/customLSnotifications$ViewHolder;->delete:Lcom/htc/widget/HtcListItemImageButton;

    new-instance v4, Lcom/m0narx/tweaks/customLSnotifications$AppAdapter$1;

    invoke-direct {v4, p0, p1}, Lcom/m0narx/tweaks/customLSnotifications$AppAdapter$1;-><init>(Lcom/m0narx/tweaks/customLSnotifications$AppAdapter;I)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItemImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, v0, Lcom/m0narx/tweaks/customLSnotifications$ViewHolder;->Image:Lcom/htc/widget/HtcListItemImageButton;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    new-instance v1, Landroid/graphics/Rect;

    move-object v3, p2

    check-cast v3, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v3}, Lcom/htc/widget/HtcListItem;->getItemHeight()I

    move-result v4

    move-object v3, p2

    check-cast v3, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v3}, Lcom/htc/widget/HtcListItem;->getItemHeight()I

    move-result v3

    invoke-direct {v1, v6, v6, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Landroid/view/TouchDelegate;

    iget-object v3, v0, Lcom/m0narx/tweaks/customLSnotifications$ViewHolder;->delete:Lcom/htc/widget/HtcListItemImageButton;

    invoke-direct {v2, v1, v3}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/customLSnotifications$ViewHolder;

    goto :goto_0
.end method

.method public removeItem(I)V
    .locals 1

    iget-object v0, p0, Lcom/m0narx/tweaks/customLSnotifications$AppAdapter;->mAppName:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/m0narx/tweaks/customLSnotifications$AppAdapter;->mPackage:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/m0narx/tweaks/customLSnotifications$AppAdapter;->mIcon:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method
