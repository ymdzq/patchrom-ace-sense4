.class Lcom/m0narx/tweaks/customizeRosieTheme$4$1;
.super Ljava/lang/Object;
.source "customizeRosieTheme.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/customizeRosieTheme$4;->onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
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
.field final synthetic this$1:Lcom/m0narx/tweaks/customizeRosieTheme$4;

.field private final synthetic val$Package:[Ljava/lang/String;

.field private final synthetic val$appPos:I

.field private final synthetic val$chooser:Lcom/htc/widget/HtcAlertDialog;

.field private final synthetic val$icons:Lcom/m0narx/tweaks/customizeRosieTheme$iconGridAdapter;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/customizeRosieTheme$4;Lcom/htc/widget/HtcAlertDialog;ILcom/m0narx/tweaks/customizeRosieTheme$iconGridAdapter;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/m0narx/tweaks/customizeRosieTheme$4$1;->this$1:Lcom/m0narx/tweaks/customizeRosieTheme$4;

    iput-object p2, p0, Lcom/m0narx/tweaks/customizeRosieTheme$4$1;->val$chooser:Lcom/htc/widget/HtcAlertDialog;

    iput p3, p0, Lcom/m0narx/tweaks/customizeRosieTheme$4$1;->val$appPos:I

    iput-object p4, p0, Lcom/m0narx/tweaks/customizeRosieTheme$4$1;->val$icons:Lcom/m0narx/tweaks/customizeRosieTheme$iconGridAdapter;

    iput-object p5, p0, Lcom/m0narx/tweaks/customizeRosieTheme$4$1;->val$Package:[Ljava/lang/String;

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

    iget-object v2, p0, Lcom/m0narx/tweaks/customizeRosieTheme$4$1;->val$chooser:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    iget-object v2, p0, Lcom/m0narx/tweaks/customizeRosieTheme$4$1;->this$1:Lcom/m0narx/tweaks/customizeRosieTheme$4;

    #getter for: Lcom/m0narx/tweaks/customizeRosieTheme$4;->this$0:Lcom/m0narx/tweaks/customizeRosieTheme;
    invoke-static {v2}, Lcom/m0narx/tweaks/customizeRosieTheme$4;->access$0(Lcom/m0narx/tweaks/customizeRosieTheme$4;)Lcom/m0narx/tweaks/customizeRosieTheme;

    move-result-object v2

    iget-object v2, v2, Lcom/m0narx/tweaks/customizeRosieTheme;->mAdapter:Lcom/m0narx/tweaks/customizeRosieTheme$AppListAdapter;

    iget-object v3, v2, Lcom/m0narx/tweaks/customizeRosieTheme$AppListAdapter;->mIcon:Ljava/util/ArrayList;

    iget v4, p0, Lcom/m0narx/tweaks/customizeRosieTheme$4$1;->val$appPos:I

    iget-object v2, p0, Lcom/m0narx/tweaks/customizeRosieTheme$4$1;->val$icons:Lcom/m0narx/tweaks/customizeRosieTheme$iconGridAdapter;

    iget-object v2, v2, Lcom/m0narx/tweaks/customizeRosieTheme$iconGridAdapter;->mIcons:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/m0narx/tweaks/customizeRosieTheme$4$1;->this$1:Lcom/m0narx/tweaks/customizeRosieTheme$4;

    #getter for: Lcom/m0narx/tweaks/customizeRosieTheme$4;->this$0:Lcom/m0narx/tweaks/customizeRosieTheme;
    invoke-static {v2}, Lcom/m0narx/tweaks/customizeRosieTheme$4;->access$0(Lcom/m0narx/tweaks/customizeRosieTheme$4;)Lcom/m0narx/tweaks/customizeRosieTheme;

    move-result-object v2

    iget-object v2, v2, Lcom/m0narx/tweaks/customizeRosieTheme;->mAdapter:Lcom/m0narx/tweaks/customizeRosieTheme$AppListAdapter;

    invoke-virtual {v2}, Lcom/m0narx/tweaks/customizeRosieTheme$AppListAdapter;->notifyDataSetChanged()V

    new-instance v0, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/m0narx/tweaks/customizeRosieTheme$4$1;->val$Package:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/m0narx/tweaks/customizeRosieTheme$4$1;->val$Package:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    const-string v3, "_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/m0narx/tweaks/customizeRosieTheme$4$1;->this$1:Lcom/m0narx/tweaks/customizeRosieTheme$4;

    #getter for: Lcom/m0narx/tweaks/customizeRosieTheme$4;->this$0:Lcom/m0narx/tweaks/customizeRosieTheme;
    invoke-static {v2}, Lcom/m0narx/tweaks/customizeRosieTheme$4;->access$0(Lcom/m0narx/tweaks/customizeRosieTheme$4;)Lcom/m0narx/tweaks/customizeRosieTheme;

    move-result-object v2

    #getter for: Lcom/m0narx/tweaks/customizeRosieTheme;->customIcons:Ljava/util/Properties;
    invoke-static {v2}, Lcom/m0narx/tweaks/customizeRosieTheme;->access$2(Lcom/m0narx/tweaks/customizeRosieTheme;)Ljava/util/Properties;

    move-result-object v2

    iget-object v3, p0, Lcom/m0narx/tweaks/customizeRosieTheme$4$1;->val$icons:Lcom/m0narx/tweaks/customizeRosieTheme$iconGridAdapter;

    iget-object v3, v3, Lcom/m0narx/tweaks/customizeRosieTheme$iconGridAdapter;->mNames:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
