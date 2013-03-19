.class Lcom/m0narx/tweaks/customizeQuickLaunch$7;
.super Ljava/lang/Object;
.source "customizeQuickLaunch.java"

# interfaces
.implements Lcom/htc/widget/HtcReorderListView$RemoveListener;


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

    iput-object p1, p0, Lcom/m0narx/tweaks/customizeQuickLaunch$7;->this$0:Lcom/m0narx/tweaks/customizeQuickLaunch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public remove(I)V
    .locals 1

    iget-object v0, p0, Lcom/m0narx/tweaks/customizeQuickLaunch$7;->this$0:Lcom/m0narx/tweaks/customizeQuickLaunch;

    #getter for: Lcom/m0narx/tweaks/customizeQuickLaunch;->AppList:Lcom/htc/widget/HtcReorderListView;
    invoke-static {v0}, Lcom/m0narx/tweaks/customizeQuickLaunch;->access$0(Lcom/m0narx/tweaks/customizeQuickLaunch;)Lcom/htc/widget/HtcReorderListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcReorderListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
