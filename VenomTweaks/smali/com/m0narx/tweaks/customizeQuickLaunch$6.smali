.class Lcom/m0narx/tweaks/customizeQuickLaunch$6;
.super Ljava/lang/Object;
.source "customizeQuickLaunch.java"

# interfaces
.implements Lcom/htc/widget/HtcReorderListView$DropListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/customizeQuickLaunch;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/customizeQuickLaunch;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/customizeQuickLaunch;)V
    .locals 0

    iput-object p1, p0, Lcom/m0narx/tweaks/customizeQuickLaunch$6;->this$0:Lcom/m0narx/tweaks/customizeQuickLaunch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drop(II)V
    .locals 6

    iget-object v1, p0, Lcom/m0narx/tweaks/customizeQuickLaunch$6;->this$0:Lcom/m0narx/tweaks/customizeQuickLaunch;

    #getter for: Lcom/m0narx/tweaks/customizeQuickLaunch;->AppList:Lcom/htc/widget/HtcReorderListView;
    invoke-static {v1}, Lcom/m0narx/tweaks/customizeQuickLaunch;->access$0(Lcom/m0narx/tweaks/customizeQuickLaunch;)Lcom/htc/widget/HtcReorderListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcReorderListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/customizeQuickLaunch$RearrangeAdapter;

    if-eq p1, p2, :cond_0

    iget-object v1, v0, Lcom/m0narx/tweaks/customizeQuickLaunch$RearrangeAdapter;->mPackage:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v1, v0, Lcom/m0narx/tweaks/customizeQuickLaunch$RearrangeAdapter;->mActivity:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v1, v0, Lcom/m0narx/tweaks/customizeQuickLaunch$RearrangeAdapter;->mAppName:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v1, v0, Lcom/m0narx/tweaks/customizeQuickLaunch$RearrangeAdapter;->mIcon:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Lcom/m0narx/tweaks/customizeQuickLaunch$RearrangeAdapter;->removeItem(I)V

    move v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/m0narx/tweaks/customizeQuickLaunch$RearrangeAdapter;->insertItem(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/m0narx/tweaks/customizeQuickLaunch$RearrangeAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
