.class Lcom/m0narx/tweaks/widgets/themePicker$3;
.super Ljava/lang/Object;
.source "themePicker.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/widgets/themePicker;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/m0narx/tweaks/widgets/themePicker;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/widgets/themePicker;)V
    .locals 0

    iput-object p1, p0, Lcom/m0narx/tweaks/widgets/themePicker$3;->this$0:Lcom/m0narx/tweaks/widgets/themePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v4, -0x1

    const-string v2, "m0narX_tweaks"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "Selected theme: "

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/m0narx/tweaks/widgets/themePicker$3;->this$0:Lcom/m0narx/tweaks/widgets/themePicker;

    iget-object v1, v1, Lcom/m0narx/tweaks/widgets/themePicker;->mAdapter:Lcom/m0narx/tweaks/widgets/themePicker$AppListAdapter;

    iget-object v1, v1, Lcom/m0narx/tweaks/widgets/themePicker$AppListAdapter;->mTheme:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "theme"

    iget-object v1, p0, Lcom/m0narx/tweaks/widgets/themePicker$3;->this$0:Lcom/m0narx/tweaks/widgets/themePicker;

    iget-object v1, v1, Lcom/m0narx/tweaks/widgets/themePicker;->mAdapter:Lcom/m0narx/tweaks/widgets/themePicker$AppListAdapter;

    iget-object v1, v1, Lcom/m0narx/tweaks/widgets/themePicker$AppListAdapter;->mTheme:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/m0narx/tweaks/widgets/themePicker$3;->this$0:Lcom/m0narx/tweaks/widgets/themePicker;

    invoke-virtual {v1}, Lcom/m0narx/tweaks/widgets/themePicker;->getParent()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/m0narx/tweaks/widgets/themePicker$3;->this$0:Lcom/m0narx/tweaks/widgets/themePicker;

    invoke-virtual {v1, v4, v0}, Lcom/m0narx/tweaks/widgets/themePicker;->setResult(ILandroid/content/Intent;)V

    :goto_0
    iget-object v1, p0, Lcom/m0narx/tweaks/widgets/themePicker$3;->this$0:Lcom/m0narx/tweaks/widgets/themePicker;

    invoke-virtual {v1}, Lcom/m0narx/tweaks/widgets/themePicker;->finish()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/m0narx/tweaks/widgets/themePicker$3;->this$0:Lcom/m0narx/tweaks/widgets/themePicker;

    invoke-virtual {v1}, Lcom/m0narx/tweaks/widgets/themePicker;->getParent()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method
