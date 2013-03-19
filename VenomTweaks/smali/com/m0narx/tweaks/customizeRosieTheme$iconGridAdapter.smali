.class Lcom/m0narx/tweaks/customizeRosieTheme$iconGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "customizeRosieTheme.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/customizeRosieTheme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "iconGridAdapter"
.end annotation


# instance fields
.field public mIcons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public mNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/m0narx/tweaks/customizeRosieTheme;


# direct methods
.method private constructor <init>(Lcom/m0narx/tweaks/customizeRosieTheme;)V
    .locals 1

    iput-object p1, p0, Lcom/m0narx/tweaks/customizeRosieTheme$iconGridAdapter;->this$0:Lcom/m0narx/tweaks/customizeRosieTheme;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/customizeRosieTheme$iconGridAdapter;->mIcons:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/customizeRosieTheme$iconGridAdapter;->mNames:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/m0narx/tweaks/customizeRosieTheme;Lcom/m0narx/tweaks/customizeRosieTheme$iconGridAdapter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/m0narx/tweaks/customizeRosieTheme$iconGridAdapter;-><init>(Lcom/m0narx/tweaks/customizeRosieTheme;)V

    return-void
.end method


# virtual methods
.method public addItem(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/m0narx/tweaks/customizeRosieTheme$iconGridAdapter;->mNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/m0narx/tweaks/customizeRosieTheme$iconGridAdapter;->mIcons:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/m0narx/tweaks/customizeRosieTheme$iconGridAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/m0narx/tweaks/customizeRosieTheme$iconGridAdapter;->mIcons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/m0narx/tweaks/customizeRosieTheme$iconGridAdapter;->mIcons:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/m0narx/tweaks/customizeRosieTheme$iconGridAdapter;->this$0:Lcom/m0narx/tweaks/customizeRosieTheme;

    iget-object v1, v1, Lcom/m0narx/tweaks/customizeRosieTheme;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030009

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/m0narx/tweaks/customizeRosieTheme$iconHolder;

    invoke-direct {v0}, Lcom/m0narx/tweaks/customizeRosieTheme$iconHolder;-><init>()V

    const v1, 0x7f08000d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/m0narx/tweaks/customizeRosieTheme$iconHolder;->Icon:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v2, v0, Lcom/m0narx/tweaks/customizeRosieTheme$iconHolder;->Icon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/m0narx/tweaks/customizeRosieTheme$iconGridAdapter;->mIcons:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v0, Lcom/m0narx/tweaks/customizeRosieTheme$iconHolder;->Icon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/m0narx/tweaks/customizeRosieTheme$iconGridAdapter;->mNames:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/customizeRosieTheme$iconHolder;

    goto :goto_0
.end method
